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

import com.manage.alhl.dto.SearchLogDTO;
import com.manage.alhl.dto.ShopDTO;
import com.manage.alhl.dto.ShopLogDTO;
import com.manage.alhl.dto.UserDTO;
import com.manage.alhl.service.SearchLogService;
import com.manage.alhl.service.ShopLogService;
import com.manage.alhl.service.UserService;

/**
 * Handles requests for the application home page.
 */
@Controller
public class StatController {
	@Autowired
	UserService userSer;
	@Autowired
	SearchLogService srchLogSer;
	@Autowired
	ShopLogService shopLogSer;
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	//통계 페이지 이동
	@RequestMapping(value = "stat_main.do", method = RequestMethod.GET)
	public String main_stat(Locale locale, Model model) {
		Date date = new Date();
		int month_shopSum = shopLogSer.shoplogSelect_month_sum().getPayment();
		int today_userCnt = userSer.userCountToday();
		int today_srchCnt = srchLogSer.SearchLog_Today();
		
		//연령별 월별 검색 통계 내기
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
		//상품별 월별 매출 통계
		List<List<ShopLogDTO>> shop_product_sum = new ArrayList<List<ShopLogDTO>>();
		ShopLogDTO shop_zero = new ShopLogDTO();
		shop_zero.setPayment(0);
		shop_zero.setUserId("zero");
		for(int i=0;i<4;i++) {
			List<ShopLogDTO> shop_month = shopLogSer.shoplogSelect_month_sum(i);
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
			shop_product_sum.add(shop_temp);
		}
		
		// 상품별 월별 이용권 통계
		List<List<ShopLogDTO>> shop_product_cnt = new ArrayList<List<ShopLogDTO>>();
		ShopLogDTO shop_zero_2 = new ShopLogDTO();
		shop_zero_2.setPayment(0);
		shop_zero_2.setUserId("zero");
		for (int i = 0; i < 4; i++) {
			List<ShopLogDTO> shop_month = shopLogSer.shoplogSelect_month_count(i);
			List<ShopLogDTO> shop_temp = new ArrayList<ShopLogDTO>();

			for (int j = 0; j < 12; j++) {
				int cnt = 0;
				for (int k = 0; k < shop_month.size(); k++) {
					if (j + 1 == Integer.parseInt(shop_month.get(k).getUserId())) {
						shop_temp.add(shop_month.get(k));
						cnt = 1;
					}
				}
				if (cnt == 0) {
					shop_temp.add(shop_zero_2);
				}
			}
			shop_product_cnt.add(shop_temp);
		}
		// 연령별 월별 검색 통계 내기
		List<List<UserDTO>> user_age = new ArrayList<List<UserDTO>>();
		UserDTO user_Zero = new UserDTO();
		user_Zero.setCash(0);
		user_Zero.setUserName("zero");
		for (int i = 0; i < 6; i++) {
			List<UserDTO> user_month = userSer.userSelect_month_age(i);
			List<UserDTO> user_temp = new ArrayList<UserDTO>();

			for (int j = 0; j < 12; j++) {
				int cnt = 0;
				for (int k = 0; k < user_month.size(); k++) {
					if (j + 1 == Integer.parseInt(user_month.get(k).getUserName())) {
						user_temp.add(user_month.get(k));
						cnt = 1;
					}
				}
				if (cnt == 0) {
					user_temp.add(user_Zero);
				}
			}
			user_age.add(user_temp);
		}
		
		
		List<ShopLogDTO> sldtos = shopLogSer.shopSelect(); // 상품구매내역 
		List<SearchLogDTO> srchdtos = srchLogSer.SearchLogSelect(); // 검색내역
		List<UserDTO> userdtos = userSer.userSelect(); // 사용자 내역
		model.addAttribute("sldto",sldtos); //상품결제리스트
		model.addAttribute("srchdto",srchdtos); //검색리스트
		model.addAttribute("userdto",userdtos); //사용자리스트
		model.addAttribute("srchMonthData",srch_age); //연간 월별 검색통계
		model.addAttribute("shopMonthData_sum",shop_product_sum); //연간 월별 매출통계
		model.addAttribute("shopMonthData_cnt",shop_product_cnt); //연간 월별 이용권통계
		model.addAttribute("userMonthData",user_age); //연간 월별 사용자가입통계
		return "stat/stMain";
	}
	
}
