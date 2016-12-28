package com.wespeak.controller;

import java.security.Principal;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
 
@Controller
public class MainController {
 
   @RequestMapping(value = { "/", "/homeNotLogin" }, method = RequestMethod.GET)
   public String welcomePage(Model model) {
       model.addAttribute("title", "WeSpeak | Trang chủ");
       // model.addAttribute("message", "This is welcome page!");
       return "homeNotLoginPage";
   }
   
   @RequestMapping(value = "/home", method = RequestMethod.GET)
   public String homePage(Model model) {
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   
	   model.addAttribute("username", auth.getName());
	   model.addAttribute("title", "WeSpeak | Trang chủ");
	   
       return "homePage";
   }
 
   @RequestMapping(value = "/admin", method = RequestMethod.GET)
   public String adminPage(Model model) {
       return "adminPage";
   }
 
   @RequestMapping(value = "/login", method = RequestMethod.GET)
   public String loginPage(Model model ) {
	   model.addAttribute("title", "WeSpeak | Đăng nhập");
	   
	   return "loginPage";
   }
   
   @RequestMapping(value = "/register", method = RequestMethod.GET)
   public String registerPage(Model model ) {
	   model.addAttribute("title", "WeSpeak | Đăng ký");
	   
	   return "registerPage";
   }
 
   @RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
   public String logoutSuccessfulPage(Model model) {
       model.addAttribute("title", "WeSpeak | Trang chủ");
       return "homeNotLoginPage";
   }
   
   //===== Start pronunciation =====
   @RequestMapping(value = "/pronunciation", method = RequestMethod.GET)
   public String pronunciationPage(Model model) {
       model.addAttribute("title", "WeSpeak | Luyện phát âm");
       
       return "pronunciationPage";
   }
   
   @RequestMapping(value = "/love", method = RequestMethod.GET)
   public String lovePage(Model model) {
       model.addAttribute("title", "WeSpeak | Love");
       
       return "lovePage";
   }
   
   @RequestMapping(value = "/listenLevel1OfLove", method = RequestMethod.GET)
   public String listenLevel1OfLovePage(Model model) {
       model.addAttribute("title", "WeSpeak | Level 1: First date");
       
       return "listenLevel1OfLovePage";
   }
   
   @RequestMapping(value = "/playLevel1OfLove", method = RequestMethod.GET)
   public String playLevel1OfLovePage(Model model) {
       model.addAttribute("title", "WeSpeak | Level 1: First date");
       
       return "playLevel1OfLovePage";
   }
   
   //===== End pronunciation =====
 
   @RequestMapping(value = "/userInfo", method = RequestMethod.GET)
   public String userInfo(Model model, Principal principal) {
  
       // Sau khi user login thanh cong se co principal
       String userName = principal.getName();
       System.out.println("User Name: "+ userName);
 
       return "userInfoPage";
   }
 
   @RequestMapping(value = "/403", method = RequestMethod.GET)
   public String accessDenied(Model model, Principal principal) {
        
       if (principal != null) {
           model.addAttribute("message", "Hi " + principal.getName()
                   + "<br> You do not have permission to access this page!");
       } else {
           model.addAttribute("msg",
                   "You do not have permission to access this page!");
       }
       return "403Page";
   }
}