package com.wespeak.controller;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.wespeak.dao.LevelDAO;
import com.wespeak.dao.UserInfoDAO;
import com.wespeak.model.PronunciationResultsModel;
import com.wespeak.model.Users;
import com.wespeak.dao.ClassListDAO;
import com.wespeak.dao.CoursewareDAO;
import com.wespeak.dao.PostDAO;
import com.wespeak.dao.UserDAO;
import com.wespeak.model.ClassList;
import com.wespeak.model.CoursewareModel;
import com.wespeak.model.Post;
import com.wespeak.model.MyResultsModel;

@Controller
public class MainController {
	@Autowired
	private ClassListDAO classListDAO;
	@Autowired
	private UserDAO userDAO;
	@Autowired
	private CoursewareDAO coursewareDAO;
	@Autowired
	private PostDAO postDAO;
	@Autowired
	private UserInfoDAO userInfoDAO;
	@Autowired
	private LevelDAO levelDAO;

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
	public String loginPage(Model model) {
		model.addAttribute("title", "WeSpeak | Đăng nhập");

		return "loginPage";
	}

	@RequestMapping(value = "/register", method = RequestMethod.GET)
	public String registerPage(Model model) {
		model.addAttribute("title", "WeSpeak | Đăng ký");

		return "registerPage";
	}

	@RequestMapping(value = "/logoutSuccessful", method = RequestMethod.GET)
	public String logoutSuccessfulPage(Model model) {
		model.addAttribute("title", "WeSpeak | Trang chủ");
		return "homeNotLoginPage";
	}

	// ===== Begin of pronunciation =====
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

	@RequestMapping(value = "/startLevel2OfLove", method = RequestMethod.GET)
	public String startLevel2OfLovePage(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("userInfo", userInfoDAO.findUserInfo(auth.getName()));
		model.addAttribute("title", "WeSpeak | Level 2: Word stress");

		return "startLevel2OfLovePage";
	}

	@RequestMapping(value = "/startLevel3OfLove", method = RequestMethod.GET)
	public String startLevel3OfLovePage(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("userInfo", userInfoDAO.findUserInfo(auth.getName()));
		model.addAttribute("title", "WeSpeak | Level 3: Early gets the girl");

		return "startLevel3OfLovePage";
	}

	@RequestMapping(value = "/startLevel4OfLove", method = RequestMethod.GET)
	public String startLevel4OfLovePage(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("userInfo", userInfoDAO.findUserInfo(auth.getName()));
		model.addAttribute("title", "WeSpeak | Level 4: Sentence stress");

		return "startLevel4OfLovePage";
	}

	@RequestMapping(value = "/startLevel5OfLove", method = RequestMethod.GET)
	public String startLevel5OfLovePage(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("userInfo", userInfoDAO.findUserInfo(auth.getName()));
		model.addAttribute("title", "WeSpeak | Level 5: Journey for two");

		return "startLevel5OfLovePage";
	}

	@RequestMapping(value = "/startLevel6OfLove", method = RequestMethod.GET)
	public String startLevel6OfLovePage(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("userInfo", userInfoDAO.findUserInfo(auth.getName()));
		model.addAttribute("title", "WeSpeak | Level 6: You're ont alone");

		return "startLevel6OfLovePage";
	}

	@RequestMapping(value = "/updateLevelPoints", method = RequestMethod.POST)
	public RedirectView updateLevelPoints(ModelMap model, @RequestParam(value = "userId_c") Integer userId_c,
			@RequestParam(value = "levelId_c") Integer levelId_c, @RequestParam(value = "point_c") Integer point_c,
			RedirectAttributes rAttr) throws Exception {

		PronunciationResultsModel prm = new PronunciationResultsModel(userId_c, levelId_c, point_c);
		try {
			userInfoDAO.updatePronuncitaionResults(prm);
		} catch (Exception e) {
			System.out.println("My error: " + e);
		}
		MyResultsModel mrm = new MyResultsModel(point_c, userInfoDAO.getTotalPoints(userId_c));
		rAttr.addFlashAttribute("mrm", mrm);
		rAttr.addFlashAttribute("levelId", levelId_c);
		System.out.println("Danh Nguyen " + userId_c + " " + levelId_c + " " + point_c + " "
				+ userInfoDAO.getTotalPoints(userId_c));

		return new RedirectView("redirect:seeMyResults");
	}

	@RequestMapping(value = "/seeMyResults", method = RequestMethod.GET)
	public String seeMyResults(Model model, @ModelAttribute(value = "mrm") final MyResultsModel mrm,
			@ModelAttribute(value = "levelId") final Integer levelId) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		if (!mrm.equals(null)) {
			MyResultsModel myResultsModel = new MyResultsModel(mrm.getLevelPoints(), mrm.getTotalPoints());
			model.addAttribute("mrm", myResultsModel);
		}
		model.addAttribute("levelId", levelId);
		model.addAttribute("levelPoint", levelDAO.getLevelPoint(levelId));
		model.addAttribute("title", "WeSpeak | Kết quả của bạn");
		System.out.println("Danh Nguyen @" + mrm.getLevelPoints() + " " + mrm.getTotalPoints());

		return "seeMyResultsPage";
	}

	// ===== End of pronunciation =====

	// ===== Begin of ClassList =====
	@RequestMapping(value = "/classList", method = RequestMethod.GET)
	public String ClassList(Model model, Principal principal) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());

		List<ClassList> list = classListDAO.listClassList();
		model.addAttribute("classModel", list);
		model.addAttribute("name", principal.getName());
		int as = userDAO.userGroup(principal.getName());
		model.addAttribute("groupUser", as);

		model.addAttribute("title", "Danh sách lớp");

		return "classlistPage";
	}
	// ===== End of ClassList =====

	// ===== Begin of courseware =====
	@RequestMapping(value = "/courseware", method = RequestMethod.GET)
	public String coursewarePage(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Học liệu");
		List<CoursewareModel> list = coursewareDAO.listCourseware();
		model.addAttribute("coursewareModel", list);

		return "coursewarePage";
	}

	@RequestMapping(value = "/coursewareDetail", method = RequestMethod.GET)
	public String coursewareDetailPage(Model model, @RequestParam(value = "id") Integer id) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		CoursewareModel list = coursewareDAO.findCourseware(id);
		if (list != null) {
			coursewareDAO.addView(list.getNumOfView(), id);
			list.setNumOfView(list.getNumOfView() + 1);
		}
		model.addAttribute("coursewareModel", list);
		model.addAttribute("title", "WeSpeak | Chi tiết học liệu");

		return "coursewareDetailPage";
	}
	// ===== End of courseware =====

	// ===== Begin of posts =====
	@RequestMapping(value = "/posts", method = RequestMethod.GET)
	public String postsPage(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Bài viết kinh nghiệm");

		List<Post> list = postDAO.listPostActive(1);
		model.addAttribute("postModel", list);
		if (list != null) {
			List<Post> listImportant = new ArrayList<Post>();
			if (list.size() <= 4)
				for (int i = 0; i < list.size(); i++)
					listImportant.add(list.get(i));
			else
				for (int i = 0; i < 4; i++)
					listImportant.add(list.get(i));

			model.addAttribute("postListImportant", listImportant);
		}
		return "postsPage";
	}

	@RequestMapping(value = "/postDetail", method = RequestMethod.GET)
	public String postDetailPage(Model model, @RequestParam(value = "id") Integer id) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Xem bài viết kinh nghiệm");

		Post list = postDAO.findPost(id);
		model.addAttribute("postModel", list);

		List<Post> listModel = postDAO.listPost();
		if (listModel != null) {
			List<Post> listImportant = new ArrayList<Post>();
			if (listModel.size() <= 4)
				for (int i = 0; i < listModel.size(); i++)
					listImportant.add(listModel.get(i));
			else
				for (int i = 0; i < 4; i++)
					listImportant.add(listModel.get(i));

			model.addAttribute("postListImportant", listImportant);
		}

		return "postDetailPage";
	}
	
	// ===== End of posts =====

	// ===== Begin of admin checkPostPage=====
	@RequestMapping(value = "/checkPost", method = RequestMethod.GET)
	public String checkPostPage(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Duyệt bài viết kinh nghiệm");

		// find the post are active=0
		List<Post> list = postDAO.listPostActive(0);
		model.addAttribute("postModel", list);
		return "checkPostPage";
	}

	@RequestMapping(value = "/checkPostOK", method = RequestMethod.GET)
	public String checkPostOK(Model model, @RequestParam(value = "id") Integer id) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Duyệt bài viết kinh nghiệm");

		// update active = 1
		postDAO.updatePostActive(id, 1);

		// find the post are active=0
		List<Post> list = postDAO.listPostActive(0);
		model.addAttribute("postModel", list);
		return "checkPostPage";
	}

	@RequestMapping(value = "/checkPostCancel", method = RequestMethod.GET)
	public String checkPostCancel(Model model, @RequestParam(value = "id") Integer id) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Duyệt bài viết kinh nghiệm");

		// update active = -1
		postDAO.updatePostActive(id, -1);

		// find the post are active=0
		List<Post> list = postDAO.listPostActive(0);
		model.addAttribute("postModel", list);
		return "checkPostPage";
	}
	// ===== End of admin checkPostPage=====

	// ===== Start of admin checkPostPage=====
	@RequestMapping(value = "/managerUser", method = RequestMethod.GET)
	public String managerUser(Model model) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		model.addAttribute("username", auth.getName());
		model.addAttribute("title", "WeSpeak | Quản lý tài khoản");

		List<Users> list = userDAO.listUser();
		model.addAttribute("userModel", list);

		return "managerUserPage";
	}
	// ===== End of admin checkPostPage=====

	@RequestMapping(value = "/userInfo", method = RequestMethod.GET)
	public String userInfo(Model model, Principal principal) {

		// Sau khi user login thanh cong se co principal
		String userName = principal.getName();
		System.out.println("User Name: " + userName);

		return "userInfoPage";
	}

	@RequestMapping(value = "/403", method = RequestMethod.GET)
	public String accessDenied(Model model, Principal principal) {

		if (principal != null) {
			model.addAttribute("message",
					"Hi " + principal.getName() + "<br> You do not have permission to access this page!");
		} else {
			model.addAttribute("msg", "You do not have permission to access this page!");
		}
		return "403Page";
	}

}