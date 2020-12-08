package com.manage.alhl;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.manage.alhl.dto.EventDTO;
import com.manage.alhl.dto.UserDTO;
import com.manage.alhl.service.EventService;
import com.manage.alhl.service.UserService;

@Controller
public class EventController {
	@Autowired
	UserService userSer;
	@Autowired
	EventService eventSer;
	@RequestMapping(value = "event_main.do")
	public String eventPage(Model model,HttpServletRequest request, HttpServletResponse response) {
		List<EventDTO> eventdtos = eventSer.eventSelectALL();
		model.addAttribute("eventlist", eventdtos);
		return "event/main";
	}
	
	// 이벤트 추가
	@RequestMapping(value = "/eventInsert.ing", method = RequestMethod.POST)
	public String eventInsert(HttpServletRequest request, HttpServletResponse response, Model model,
			EventDTO eventDTO, java.sql.Date startTime, java.sql.Date finishTime) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		//세션에서 관리자 id 가져옴
		HttpSession session = request.getSession();
		if (session.getAttribute("userData") != null) { // 로그인 상태일 때
			UserDTO udto = (UserDTO) session.getAttribute("userData"); // 세션에서 사용자 정보 가져옴
			//Timestamp 형식 변환
			eventDTO.setStartDate(new java.sql.Timestamp(startTime.getTime()));
			eventDTO.setFinishDate(new java.sql.Timestamp(finishTime.getTime()));
			eventDTO.setReserDate(new java.sql.Timestamp(new java.util.Date().getTime()));
			eventDTO.setAdminId(udto.getUserId());
			if (eventSer.eventInsert(eventDTO) == 1) {
				System.out.println("이벤트 추가 성공");
			} else {
				System.out.println("이벤트 추가 실패");
			}
			return "redirect:/event_main.do";
		}else {
			return "login";
		}
		
	}

	// 이벤트 수정
	@RequestMapping(value = "/eventUpdate.ing", method = RequestMethod.POST)
	public String eventUpdate(HttpServletRequest request, HttpServletResponse response, Model model, EventDTO eventDTO,
			java.sql.Date startTime, java.sql.Date finishTime) throws Exception {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		// 세션에서 관리자 id 가져옴
		HttpSession session = request.getSession();
		if (session.getAttribute("userData") != null) { // 로그인 상태일 때
			UserDTO udto = (UserDTO) session.getAttribute("userData"); // 세션에서 사용자 정보 가져옴
			// Timestamp 형식 변환
			eventDTO.setStartDate(new java.sql.Timestamp(startTime.getTime()));
			eventDTO.setFinishDate(new java.sql.Timestamp(finishTime.getTime()));
			eventDTO.setReserDate(new java.sql.Timestamp(new java.util.Date().getTime()));
			eventDTO.setAdminId(udto.getUserId());
			if (eventSer.eventUpdate_finish(eventDTO) == 1) {
				System.out.println("이벤트 수정 성공");
			} else {
				System.out.println("이벤트 수정 실패");
			}
			return "redirect:/event_main.do";
		} else {
			return "login";
		}

	}
	
	
	
}



