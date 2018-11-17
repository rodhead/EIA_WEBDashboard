package org.main.eia.frontController;

import javax.swing.text.html.FormSubmitEvent.MethodType;

import org.main.eia.daoimpl.UserLogInDaoIMPL;
import org.main.eia.model.User;
import org.main.eia.utility.Constant;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class HomepageController {

	@Autowired
	UserLogInDaoIMPL userdao;
	// @Autowired Constant constant;

	// private String success=constant.success;

	@RequestMapping("/")
	public String index() {
		return "index";
	}

	@PostMapping("myFormlogin")
	public String sayHello(@RequestParam("usernameLogIn") String name, Model model) {
		User user=userdao.getUserLogInDetails(name);
		model.addAttribute("name", user.getuName());
		model.addAttribute("email", user.getEmailId());
		System.out.println("user.getuName() "+user.getuName()+"  user.getEmailId()"+user.getEmailId());
		return "dashapps";
	}

	@RequestMapping(value = "/dashform", method = RequestMethod.GET)
	public String showLoginPage(ModelMap model) {
		return "dash";
	}/*

	@GetMapping(path = "/loginIn", produces = "application/text")
	public String logIn() {
		System.out.println("inside login");
		return "success";
	}
*/
	@RequestMapping(method = RequestMethod.POST, path = "/createUser", produces = "application/json", consumes = "application/json")
	public String createUser(@RequestBody User user) {
		// return userdao.userCreate(user);
		return "success";
	}
}
