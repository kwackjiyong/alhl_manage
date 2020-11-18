package com.manage.alhl;

import java.util.Locale;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.manage.alhl.dto.Shop_ProductDTO;
import com.manage.alhl.service.Shop_product_Service;
import com.manage.alhl.service.UserService;

@Controller
public class ProductController {

	@Autowired 
	UserService userSer;
	@Autowired 
	Shop_product_Service spSer;
	
	@RequestMapping(value = "/product_main.do", method = RequestMethod.GET)
	public String product_home(Model model) {
		
		model.addAttribute("product_list", spSer.show_list());
		return "product/pdMain";
	}

	@RequestMapping(value = "/product_info.do", method = RequestMethod.GET)
	public String product_info(Locale locale, Model model) {

		return "product/pdInfo";
	}
	
	@RequestMapping(value = "/update_product.ing", method = RequestMethod.GET)
	public String update_product(Locale locale, Model model) {

		return "product/pdInfo";
	}

}
