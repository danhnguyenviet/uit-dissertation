package com.wespeak.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.wespeak.dao.PostDAO;
import com.wespeak.dao.UserInfoDAO;
import com.wespeak.model.Post;

@Controller
public class UserController {
	
	@Autowired
	private UserInfoDAO userInfoDAO;
	@Autowired
	private PostDAO postDAO;
	
	@RequestMapping(value="/basicInfo", method = RequestMethod.GET)
	public String basicInfoPage(Model model) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Thông tin cơ bản");
		model.addAttribute("userInfo", userInfoDAO.findUserInfo(auth.getName()));
		model.addAttribute("postList", postDAO.findAllPostsByUsername(auth.getName()));
		
		return "basicInfoPage";
	}

	@RequestMapping(value = { "deletePost" }, method = RequestMethod.GET)
	public String deleteProduct(HttpServletRequest request, @RequestParam(value = "postId") int postId)
			throws Exception {

		postDAO.deletePostById(postId);

		return "redirect:basicInfo";
	}
	
	@RequestMapping(value="/addPost", method = RequestMethod.GET)
	public String addPostPage(Model model) {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Thêm bài viết");
		
		return "addPostPage";
	}
	
	@RequestMapping(value = { "/savePost" }, method = RequestMethod.POST)
	public RedirectView savePost(ModelMap model, @RequestParam(value = "title_c") String title,
			@RequestParam(value = "content_c") String content, 
			@RequestParam(value = "image_c") MultipartFile image,
			RedirectAttributes rAttr) throws Exception {
		
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		Integer userId = userInfoDAO.findUserInfo(auth.getName()).getUserId();
		Post post = new Post(1, title, content, 0, userId, userId, new Date(), "", "postImages");
		postDAO.savePost(post);
		
		
		return null;
	}
	
	private String uploadImage(String fileName, String savePath, String rootPath, MultipartFile file)
			throws IOException {
		String fileNamers = "";
		if (!file.isEmpty()) {
			try {
				byte[] bytes = file.getBytes();

				File dir = new File(rootPath + File.separator + savePath);
				if (!dir.exists())
					dir.mkdirs();

				// Create the file on server
				File serverFile = new File(dir.getAbsolutePath() + File.separator + fileName);
				BufferedOutputStream stream = new BufferedOutputStream(new FileOutputStream(serverFile));
				stream.write(bytes);
				fileNamers = fileName;
				stream.close();
			} catch (Exception e) {
				return "";
			}
		} else {
			return "";
		}
		return fileNamers;
	}
}
