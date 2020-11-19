package com.manage.alhl;

import java.io.PrintWriter;
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

import com.manage.alhl.dto.UserDTO;
import com.manage.alhl.service.UserService;

@Controller
public class UserController {
	@Autowired
	UserService userSer;
	@RequestMapping(value = "loginPage.do" , method = RequestMethod.GET)
	public ModelAndView LoginPage(HttpServletRequest request, HttpServletResponse response, Model model, UserDTO userdto) {
		
		ModelAndView mav = new ModelAndView();
		mav.setViewName("user/loginPage");
		return mav;
	}
	
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
				System.out
						.println("DBPW:" + selectDTO.getUserPassword() + "\n" + "inputPW:" + userdto.getUserPassword());
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
	
	@RequestMapping(value = "manage_user.do")
	public String manage_user(Model model,UserDTO dto) {
		if(dto.getUserId()==null) {
			dto.setUserId("");
		}
		
		List<UserDTO> dtos = userSer.userSelect(dto);
		model.addAttribute("userdtos",dtos);
		return "user/main";
	}
	
	@RequestMapping(value = "user_Find.do")
	public String user_Find(Model model,UserDTO dto) {
		UserDTO udto = userSer.userSelectFind(dto);
		model.addAttribute("userdtos",udto);
		return "user/userFind";
	}
}
