package com.wespeak.controller;

import java.security.Principal;
import java.util.List;
import java.util.Map;

import javax.naming.Context;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.wespeak.dao.UserInfoDAO;
import com.wespeak.model.MyResultsModel;
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
	   model.addAttribute("userInfo", userInfoDAO.findUserInfo(auth.getName()));
       model.addAttribute("title", "WeSpeak | Level 1: First date");
       
       return "playLevel1OfLovePage";
   }
   
   @RequestMapping(value="/updateLevelPoints", method = RequestMethod.POST)
   @ResponseBody
   public String updateProductInfo(Model model, HttpServletRequest request,
			@RequestParam(value = "userId_c") Integer userId_c,
			@RequestParam(value = "levelId_c") Integer levelId_c,
			@RequestParam(value = "point_c") Integer point_c,
			HttpServletResponse response,
			RedirectAttributes rAttr) throws Exception {
	   
	   PronunciationResultsModel prm = new PronunciationResultsModel(userId_c, levelId_c, point_c);
	   try {
		   userInfoDAO.updatePronuncitaionResults(prm);
	   } catch (Exception e) {
		   System.out.println("My error: " + e);
	   }
	   rAttr.addFlashAttribute("levelPoints", point_c);
	   rAttr.addFlashAttribute("totalPoints", userInfoDAO.getTotalPoints(userId_c));
	   System.out.println("Danh Nguyen " + userId_c + " " + levelId_c + " " + point_c + " " + userInfoDAO.getTotalPoints(userId_c));
	   
	   return "redirect:seeMyResults";
   }

   @RequestMapping(value = "/seeMyResults", method = RequestMethod.POST)
   public String seeMyResults(Model model, HttpServletRequest request) {
	   
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   model.addAttribute("username", auth.getName());
	   Map<String, ?> flashMap = RequestContextUtils.getInputFlashMap(request);
	   model.addAttribute("lPoints", (String)flashMap.get("levelPoints"));
	   model.addAttribute("tPoints", (String)flashMap.get("totalPoints"));
	   model.addAttribute("title", "WeSpeak | Kết quả của bạn");
	   System.out.println("Danh Nguyen " + model.asMap().get("levelPoints") + " " + model.asMap().get("totalPoints"));
	   
       return "seeMyResultsPage";
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
   
   @RequestMapping(value = "/postDetail", method = RequestMethod.GET)
   public String postDetailPage(Model model) {
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   model.addAttribute("username", auth.getName());
       model.addAttribute("title", "WeSpeak | Xem bài viết kinh nghiệm");
       
       return "postDetailPage";
   }
   //===== End of posts =====
   
   //===== Begin of courseware =====
   @RequestMapping(value = "/courseware", method = RequestMethod.GET)
   public String coursewarePage(Model model) {
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   model.addAttribute("username", auth.getName());
       model.addAttribute("title", "WeSpeak | Học liệu");
       
       return "coursewarePage";
   }
   
   @RequestMapping(value = "/coursewareDetail", method = RequestMethod.GET)
   public String coursewareDetailPage(Model model) {
	   Authentication auth = SecurityContextHolder.getContext().getAuthentication();
	   model.addAttribute("username", auth.getName());
       model.addAttribute("title", "WeSpeak | Chi tiết học liệu");
       
       return "coursewareDetailPage";
   }
   //===== End of courseware =====
 
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