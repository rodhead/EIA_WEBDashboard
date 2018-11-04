package org.main.eia.frontController;

import org.main.eia.ajaxHandlerServiceImpl.UserFormRegistrationImpl;
import org.main.eia.daoimpl.UserLogInDaoIMPL;
import org.main.eia.model.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class AjaxHandler {
	
	@Autowired
	UserFormRegistrationImpl formService;
	
	@Autowired
	UserLogInDaoIMPL maindao;
	
	@RequestMapping(value = "/log",method=RequestMethod.GET)
	public ResponseEntity<String> fetch(@RequestParam("uname") String username,
			@RequestParam("password") String password,@RequestParam("email") String email) {
		System.out.println("-------------->"+username+"  pass : "+password+" email : "+email);
		User user= new User();
		user.setuName(username);
		user.setEmailId(email);
		user.setPassword(password);
		String response=maindao.userCreate(user);
		return new ResponseEntity<String>("Account Created!", HttpStatus.OK);
		
	}
	
	@RequestMapping(value="/signinValidation",method=RequestMethod.GET)
	public ResponseEntity<String> signinValidation(@RequestParam("uname") String valUsername,
			@RequestParam("password") String valPassword){
		String valResponse=formService.signInValidation(valUsername, valPassword);
	System.out.println("return response is : "+valResponse);
		return new ResponseEntity<String>(valResponse, HttpStatus.OK);
	}

}
