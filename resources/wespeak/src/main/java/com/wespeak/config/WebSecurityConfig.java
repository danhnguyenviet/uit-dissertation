package com.wespeak.config;

import com.wespeak.authentication.MyDBAuthenticationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
// @EnableWebSecurity = @EnableWebMVCSecurity + Extra features
@EnableWebSecurity
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	MyDBAuthenticationService myDBAauthenticationService;

	@Autowired
	public void configureGlobal(AuthenticationManagerBuilder auth) throws Exception {

		// Các User trong bộ nhớ (MEMORY).

		auth.inMemoryAuthentication().withUser("user1").password("12345").roles("USER");
		auth.inMemoryAuthentication().withUser("admin1").password("12345").roles("USER, ADMIN");

		// Các User trong Database
		auth.userDetailsService(myDBAauthenticationService);

	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {

		http.csrf().disable();

		// Các trang không yêu cầu login
		http.authorizeRequests().antMatchers(
				"/", 
				"/login", 
				"/logout", 
				"/homeNotLogin",
				"/register").permitAll();

		// Nếu chưa login, nó sẽ redirect tới trang /login.
		http.authorizeRequests().antMatchers(
				"/home",
				"/classList",
				"/pronunciation",
				"/courseware",
				"/posts",
				"/love",
				"/playLevel1OfLove",
				"/listenLevel1OfLove",
				"/startLevel2OfLove",
				"/startLevel3OfLove",
				"/startLevel4OfLove",
				"/startLevel5OfLove",
				"/startLevel6OfLove",
				"/seeMyResults",
				"/basicInfo").access("hasAnyRole('ROLE_TEACHER', 'ROLE_STUDENT', 'ROLE_SUBADMIN', 'ROLE_ADMIN')");

		// For ADMIN only.
		// Trang chỉ dành cho ADMIN
		http.authorizeRequests().antMatchers("/admin").access("hasRole('ROLE_ADMIN')");

		// Khi người dùng đã login, với vai trò XX.
		// Nhưng truy cập vào trang yêu cầu vai trò YY,
		// Ngoại lệ AccessDeniedException sẽ ném ra.
		http.authorizeRequests().and().exceptionHandling().accessDeniedPage("/403");

		// Cấu hình cho Login Form.
		http.authorizeRequests().and().formLogin()//

				// Submit URL của trang login
				.loginProcessingUrl("/j_spring_security_check") // Submit URL
				.loginPage("/login")//
				.defaultSuccessUrl("/home")//
				.failureUrl("/login?error=true")//
				.usernameParameter("username")//
				.passwordParameter("password")

				// Cấu hình cho Logout Page.
				.and().logout().logoutUrl("/logout").logoutSuccessUrl("/logoutSuccessful");

	}
}