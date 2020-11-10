package com.manage.alhl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {

	@RequestMapping(value = "loginPage")
	public String LoginPage() {
		
		return "user/loginPage";
	}
	
	
}
