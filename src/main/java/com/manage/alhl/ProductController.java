package com.manage.alhl;

import java.util.ArrayList;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.manage.alhl.dto.SearchLogDTO;
import com.manage.alhl.dto.ShopLogDTO;
import com.manage.alhl.dto.Shop_ProductDTO;
import com.manage.alhl.service.ShopLogService;
import com.manage.alhl.service.Shop_product_Service;
import com.manage.alhl.service.UserService;

@Controller
public class ProductController {

	@Autowired 
	UserService userSer;
	@Autowired
	ShopLogService shopLogSer;
	@Autowired 
	Shop_product_Service spSer;
	//상품목록페이지
	@RequestMapping(value = "/product_main.do", method = RequestMethod.GET)
	public String product_home(Model model) {
		model.addAttribute("product_list", spSer.show_list());
		return "product/pdMain";
	}
	//상품상세정보페이지
	@RequestMapping(value = "/product_info.do", method = RequestMethod.GET)
	public String product_info(Locale locale,Shop_ProductDTO dto, Model model,HttpServletRequest request, HttpServletResponse response) throws Exception  {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		int pageNum;
		int separatorNum;
		int pgseparatorNum;
		try {
			pageNum = Integer.parseInt(request.getParameter("pageNum")); // 페이지 넘버를 리퀘스트에서 받아서 지정해유
		}catch(Exception e) {
			pageNum = 1; //페이지넘버가 지정하지않았을시 1페이지루 가 
		}
		try {
			separatorNum = Integer.parseInt(request.getParameter("separatorNum")); //리스트 분할갯수를 리퀘스트에서 받아서 지정해유
		}catch(Exception e) {
			separatorNum = 5;//페이지 분할 갯수가 지정하지 않았을시 7개씩
		}
		try {
			pgseparatorNum = Integer.parseInt(request.getParameter("pgseparatorNum")); //페이지 분할갯수를 리퀘스트에서 받아서 지정해유
		}catch(Exception e) {
			pgseparatorNum = 5;//페이지 분할 갯수가 지정하지 않았을시 5개씩
		}
		List<ShopLogDTO> sldtos = shopLogSer.shoplogSelect_product(dto); // 상품별 구매내역
		if(sldtos.size() != 0) { //없을경우 페이징 안함
			com.manage.alhl.util.Paging.AutoPaging(request, response, model, sldtos, pageNum, separatorNum,pgseparatorNum); //자동페이징
		}
		
		
		//상품별 월별 매출 통계
		ShopLogDTO shop_zero = new ShopLogDTO();
		shop_zero.setPayment(0);
		shop_zero.setUserId("zero");
		List<ShopLogDTO> shop_month = shopLogSer.shoplogSelect_month_sum(dto.getProductNum());
		if(dto.getProductNum() == 0) {
			shop_month = new ArrayList<ShopLogDTO>();
		}
		
		List<ShopLogDTO> shop_temp = new ArrayList<ShopLogDTO>();
		//월별통계 계산
		for (int j = 0; j < 12; j++) {
			int cnt = 0;
			for (int k = 0; k < shop_month.size(); k++) {
				if (j + 1 == Integer.parseInt(shop_month.get(k).getUserId())) {
					shop_temp.add(shop_month.get(k));
					cnt = 1;
				}
			}
			if (cnt == 0) {
				shop_temp.add(shop_zero);
			}
		}
		
		
		Shop_ProductDTO sdto = spSer.show_product_info(dto); // 상품정보
		
		model.addAttribute("shop_product", sdto); // 상품정보
		
		model.addAttribute("shop_product_stat", shop_temp); // 월별 통계
		return "product/pdInfo";
	}
	//상품추가
	@RequestMapping(value = "/insert_product.ing", method = RequestMethod.POST)
	public String insert_product(Locale locale,Shop_ProductDTO dto, Model model) {
	
		if(spSer.insert_product(dto)==1) {
			System.out.println("상품추가 성공");
		}else {
			System.out.println("상품추가 실패");
		}
		return "redirect:product_main.do";
	}
	//상품수정
	@RequestMapping(value = "/update_product.ing", method = RequestMethod.POST)
	public String update_product(Locale locale,Shop_ProductDTO dto, Model model) {
		if(spSer.update_product(dto)==1) {
			System.out.println("상품수정 성공");
		}else {
			System.out.println("상품수정 실패");
		}
		
		
		return "redirect:product_info.do?productNum="+dto.getProductNum();
	}
	
}
