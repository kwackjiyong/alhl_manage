package com.manage.alhl.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.alhl.dao.EventDao;
import com.manage.alhl.dao.ShopDao;
import com.manage.alhl.dto.EventDTO;
import com.manage.alhl.dto.ShopDTO;
import com.manage.alhl.dto.Shop_ProductDTO;
import com.manage.alhl.dto.UserDTO;


@Service("IEventService")
public class EventService{
	
	@Autowired
	public EventDao dao;
	
	public int eventUpdate_finish(EventDTO dto) {
		return dao.eventUpdate_finish(dto);
	}
	public List<EventDTO> eventSelectALL() {
		return dao.eventSelectALL();
	}
	public int eventInsert(EventDTO dto) {
		return dao.eventInsert(dto);
	}
	
}
