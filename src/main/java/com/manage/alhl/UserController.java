package com.manage.alhl;

import java.io.PrintWriter;
import java.sql.Timestamp;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.manage.alhl.dto.ShopDTO;
import com.manage.alhl.dto.ShopLogDTO;
import com.manage.alhl.dto.UserDTO;
import com.manage.alhl.service.ShopLogService;
import com.manage.alhl.service.ShopService;
import com.manage.alhl.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userSer;
	@Autowired
	ShopService shopSer;
	@Autowired
	ShopLogService shoplogSer;
	
	//페이지 이동 do ------------------------------------------------------------------------------------------
	
	// 로그인 페이지 이동
	@RequestMapping(value = "loginPage.do" , method = RequestMethod.GET)
	public ModelAndView LoginPage(HttpServletRequest request, HttpServletResponse response, Model model, UserDTO userdto) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/loginPage");
		return mav;
	}
	// 사용자 목록 페이지 이동
	@RequestMapping(value = "manage_user.do")
	public String manage_user(Model model,UserDTO dto,HttpServletRequest request, HttpServletResponse response) throws Exception{
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		if(dto.getUserId()==null) {
			dto.setUserId("");
		}
		
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
		
		
		List<UserDTO> dtos = userSer.userSelect(dto);
		if(dtos.size() != 0) { //없을경우 페이징 안함
			com.manage.alhl.util.Paging.AutoPaging(request, response, model, dtos, pageNum, separatorNum,pgseparatorNum); //자동페이징
		}
		return "user/main";
	}
	// 사용자 정보 관리 페이지 이동
	@RequestMapping(value = "user_Find.do")
	public String user_Find(Model model,UserDTO dto,HttpServletRequest request, HttpServletResponse response) throws Exception {
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
		
		UserDTO udto = userSer.userSelectFind(dto);
		ShopDTO sdto = shopSer.shopSelectOne(dto);
		
		List<ShopLogDTO> sldtos = shoplogSer.shopSelect_user(dto);
		if(sldtos.size() != 0) { //없을경우 페이징 안함
			com.manage.alhl.util.Paging.AutoPaging(request, response, model, sldtos, pageNum, separatorNum,pgseparatorNum); //자동페이징
		}
		model.addAttribute("user",udto);
		model.addAttribute("shop",sdto);
		return "user/userFind";
	}
	
	
	
	
	
	
	
	
	
	// ing -----------------------------------------------------------------------------------------
	
	// 로그인
	@RequestMapping(value = "/login.ing", method = RequestMethod.POST)
	public void login_do(HttpServletRequest request, HttpServletResponse response, Model model, UserDTO userdto)
			throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");

		// id가 있는지 확인하고 해당 id에서 각종 정보를 검색합니다.
		UserDTO selectDTO = userSer.userSelectOne(userdto);
		// 아이디가 존재할 때
		try {
			if (selectDTO.getUserPassword().equals(userdto.getUserPassword())) {
				if(selectDTO.getUserAuthority() > 1) {
					HttpSession session = request.getSession();
					session.setAttribute("userData", selectDTO); // 유저 정보 한꺼번에 넣음
					model.addAttribute("userData", selectDTO); // 유저 정보 한꺼번에 넣음		
					PrintWriter out = response.getWriter();
					out.println("<script>alert('" + userdto.getUserId() + "님 로그인 성공');</script>");
					out.flush();
				}else {
					PrintWriter out = response.getWriter();
					out.println("<script>alert('해당 계정은 권한이 부족합니다.');</script>");
					out.flush();
				}
			} else {
				PrintWriter out = response.getWriter();
				out.println("<script>alert('패스워드가 틀렸습니다.');</script>");
				out.flush();
			}
		} catch (Exception e) {
			PrintWriter out = response.getWriter();
			out.println("<script>alert('" + userdto.getUserId() + "는 존재하지 않는 아이디입니다.');</script>");
			out.flush();
		} finally {
			PrintWriter out = response.getWriter();
			out.println("<script>location.href='index.do'</script>");
			out.flush();
		}
	}

	// 로그아웃

	@RequestMapping("/logout.ing")
	public String logout(HttpSession session) {
		session.invalidate();
		return "redirect:/index.do";
	}
	// 사용자 정보 업데이트
	@RequestMapping(value="/userUpdate_info.ing", method = RequestMethod.POST)
	public String userUpdate_info(HttpServletRequest request, HttpServletResponse response, Model model, UserDTO userdto) throws Exception{
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		if(userSer.userUpdate(userdto)==1) {
			System.out.println("유저정보 변경 성공");
		}else {
			System.out.println("유저정보 변경 실패");
		}
		
		return "redirect:/user_Find.do?userId="+userdto.getUserId();
	}

	// 사용자 비고란 업데이트
	@RequestMapping(value = "/userUpdate_remark.ing", method = RequestMethod.POST)
	public String userUpdate_remark(HttpServletRequest request, HttpServletResponse response, Model model,
			UserDTO userdto) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		if (userSer.userUpdate_remark(userdto) == 1) {
			System.out.println("유저정보 변경 성공");
		} else {
			System.out.println("유저정보 변경 실패");
		}
		
		return "redirect:/user_Find.do?userId=" + userdto.getUserId();
	}
	
	
	// 사용자 이용권정보 업데이트
	@RequestMapping(value = "/userUpdate_product.ing", method = RequestMethod.POST)
	public String userUpdate_product(HttpServletRequest request, HttpServletResponse response, Model model,
			ShopDTO shopdto) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		if (shopSer.shopUpdate_product(shopdto) == 1) {
			System.out.println("유저 상품정보 변경 성공");
		} else {
			System.out.println("유저 상품정보 변경 실패");
		}

		return "redirect:/user_Find.do?userId=" + shopdto.getUserId();
	}
	// 사용자 이용권 시간정보 업데이트
		@RequestMapping(value = "/userUpdate_time.ing", method = RequestMethod.POST)
		public String userUpdate_time(HttpServletRequest request, HttpServletResponse response, Model model,
				ShopDTO shopdto,java.sql.Date outTime) throws Exception {
			response.setContentType("text/html; charset=UTF-8");
			request.setCharacterEncoding("UTF-8");
			shopdto.setCheckOutTime(new java.sql.Timestamp(outTime.getTime()));
			if (shopSer.shopUpdate_time(shopdto) == 1) {
				System.out.println("유저 상품정보 변경 성공");
			} else {
				System.out.println("유저 상품정보 변경 실패");
			}

			return "redirect:/user_Find.do?userId=" + shopdto.getUserId();
		}
	
}
