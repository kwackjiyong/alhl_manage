package com.manage.alhl;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.manage.alhl.dto.SearchDTO;
import com.manage.alhl.dto.SearchLogDTO;
import com.manage.alhl.dto.ShopLogDTO;
import com.manage.alhl.service.SearchLogService;
import com.manage.alhl.service.ShopLogService;
import com.manage.alhl.service.UserService;

/**
 * Handles requests for the application home page.
 */


@Controller
public class HomeController {
	@Autowired
	UserService userSer;
	@Autowired
	SearchLogService srchLogSer;
	@Autowired
	ShopLogService shopLogSer;
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home1(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "index";
	}
	@RequestMapping(value = "index.do", method = RequestMethod.GET)
	public String home2(Locale locale, Model model) {
		
		Date date = new Date();
		int month_shopSum = shopLogSer.shoplogSelect_month_sum().getPayment();
		int today_userCnt = userSer.userCountToday();
		int today_srchCnt = srchLogSer.SearchLog_Today();
		
		
		List<List<SearchLogDTO>> srch_age = new ArrayList<List<SearchLogDTO>>();
		SearchLogDTO srch_Zero = new SearchLogDTO();
		srch_Zero.setSrchId(0);
		srch_Zero.setSrchWord("zero");
		for(int i=0;i<6;i++) {
			List<SearchLogDTO> srch_month = srchLogSer.SearchLog_Month(i);
			List<SearchLogDTO> srch_temp = new ArrayList<SearchLogDTO>();
			
			for(int j=0;j<12;j++) {
				int cnt=0;
				for(int k=0;k<srch_month.size();k++) {
					if(j+1 == Integer.parseInt(srch_month.get(k).getSrchWord())) {
						srch_temp.add(srch_month.get(k));
						cnt=1;
					}
				}
				if(cnt==0) {
					srch_temp.add(srch_Zero);
				}
			}
			srch_age.add(srch_temp);
		}
		List<List<ShopLogDTO>> shop_product = new ArrayList<List<ShopLogDTO>>();
		ShopLogDTO shop_zero = new ShopLogDTO();
		shop_zero.setPayment(0);
		shop_zero.setUserId("zero");
		for(int i=0;i<4;i++) {
			List<ShopLogDTO> shop_month = shopLogSer.shoplogSelect_month(i);
			List<ShopLogDTO> shop_temp = new ArrayList<ShopLogDTO>();
			
			for(int j=0;j<12;j++) {
				int cnt=0;
				for(int k=0;k<shop_month.size();k++) {
					if(j+1 == Integer.parseInt(shop_month.get(k).getUserId())) {
						shop_temp.add(shop_month.get(k));
						cnt=1;
					}
				}
				if(cnt==0) {
					shop_temp.add(shop_zero);
				}
			}
			shop_product.add(shop_temp);
		}
		
		
		model.addAttribute("shopSum", month_shopSum); //월간 매출합
		model.addAttribute("userCnt", today_userCnt); //일간 가입자수
		model.addAttribute("srchCnt", today_srchCnt); //일간 검색수
		model.addAttribute("srchMonthData",srch_age); //연간 월별 검색통계
		model.addAttribute("shopMonthData",shop_product); //연간 월별 매출통계
		return "index";
	}
	
}
