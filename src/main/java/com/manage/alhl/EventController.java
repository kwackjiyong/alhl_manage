package com.manage.alhl;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class EventController {

	@RequestMapping(value = "event_main.do")
	public String eventPage() {
		
		return "event/main";
	}
}
