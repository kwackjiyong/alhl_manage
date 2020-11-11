package com.manage.alhl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping(value = "loginPage.do")
	public String LoginPage() {
		
		return "user/loginPage";
	}
	
	@RequestMapping(value = "manage_user.do")
	public String manage_user() {
		
		return "user/main";
	}
	
	@RequestMapping(value = "user_Find.do")
	public String user_Find() {
		
		return "user/userFind";
	}
}
