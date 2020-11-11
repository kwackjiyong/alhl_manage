package com.manage.alhl;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class ProductController {
	
	private static final Logger logger = LoggerFactory.getLogger(ProductController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "product_main.do", method = RequestMethod.GET)
	public String product_home(Locale locale, Model model) {
		
		return "product/pdMain";
	}
	
	@RequestMapping(value = "product_info.do", method = RequestMethod.GET)
	public String product_info(Locale locale, Model model) {
		
		return "product/pdInfo";
	}
	
}
