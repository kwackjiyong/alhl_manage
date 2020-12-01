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
import com.manage.alhl.service.SearchLogService;
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
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		int today_userCnt = userSer.userCountToday();
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
			System.out.println(srch_month);
		}
		int today_srchCnt = srchLogSer.SearchLog_Today();
		
		
		
		model.addAttribute("userCnt", today_userCnt);
		model.addAttribute("srchCnt", today_srchCnt);
		model.addAttribute("srchMonthData",srch_age);
		return "index";
	}
	
}
