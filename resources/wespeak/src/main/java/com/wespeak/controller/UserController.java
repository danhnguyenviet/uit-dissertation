package com.wespeak.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.wespeak.dao.UserInfoDAO;

@Controller
public class UserController {
	
	@Autowired
	private UserInfoDAO userInfoDAO;
	
	@RequestMapping(value="/basicInfo", method = RequestMethod.GET)
	public String basicInfoPage(Model model) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Thông tin cơ bản");
		model.addAttribute("userInfo", userInfoDAO.findUserInfo(auth.getName()));
		
		return "basicInfoPage";
	}

}
