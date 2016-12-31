package com.wespeak.controller;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.wespeak.dao.UserInfoDAO;
import com.wespeak.dao.impl.UserInfoDAOImpl;
import com.wespeak.model.PronunciationResultsModel;
 
@Controller
public class MainController {
	
	@Autowired
    private UserInfoDAO userInfoDAO;
 
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
   
   //===== Begin of pronunciation =====
   @RequestMapping(value = "/pronunciation", method = RequestMethod.GET)
   public String pronunciationPage(Model model) {
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   model.addAttribute("username", auth.getName());
       model.addAttribute("title", "WeSpeak | Luyện phát âm");
       
       return "pronunciationPage";
   }
   
   @RequestMapping(value = "/love", method = RequestMethod.GET)
   public String lovePage(Model model) {
	   
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   List<Integer> levelPointsList = userInfoDAO.getLevelPointsList(auth.getName());
	   
	   model.addAttribute("username", auth.getName());
	   model.addAttribute("levelPointsList", levelPointsList);
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
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   model.addAttribute("username", auth.getName());
       model.addAttribute("title", "WeSpeak | Level 1: First date");
       
       return "playLevel1OfLovePage";
   }
   
   @RequestMapping(value = "/seeMyResults", method = RequestMethod.GET)
   public String seeMyResults(Model model) {
	   
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   model.addAttribute("username", auth.getName());
	   
	   model.addAttribute("title", "WeSpeak | Kết quả của bạn");
	   
       return "seeMyResultsPage";
   }
   
   @RequestMapping(value="/updateLevelPoints", method=RequestMethod.POST)
   public ModelAndView updateLevelPoints(Model model, HttpServletRequest request, HttpServletResponse response,
		   @RequestParam(value = "username") String username_c, 
		   @RequestParam(value = "levelId") Integer levelId_c,
		   @RequestParam(value = "point") Integer point_c) throws Exception {
	   
	   PronunciationResultsModel prm = new PronunciationResultsModel(username_c, levelId_c, point_c);
	   userInfoDAO.savePronuncitaionResults(prm);

	   return new ModelAndView("redirect:/seeMyResults");
   }
   //===== End of pronunciation =====
   
   //===== Begin of posts =====
   @RequestMapping(value = "/posts", method = RequestMethod.GET)
   public String postsPage(Model model) {
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   model.addAttribute("username", auth.getName());
       model.addAttribute("title", "WeSpeak | Bài viết kinh nghiệm");
       
       return "postsPage";
   }
   //===== End of posts =====
   
   //===== Begin of posts =====
   @RequestMapping(value = "/courseware", method = RequestMethod.GET)
   public String coursewarePage(Model model) {
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   model.addAttribute("username", auth.getName());
       model.addAttribute("title", "WeSpeak | Học liệu");
       
       return "coursewarePage";
   }
   //===== End of posts =====
 
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