package com.manage.alhl.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.manage.alhl.dto.EventDTO;


@Repository
public class EventDao {

	@Autowired
	public SqlSessionTemplate mybatis;
	public int eventUpdate_finish(EventDTO dto) {
		return mybatis.update("eventMapper.eventUpdate_finish", dto);
	}
	public List<EventDTO> eventSelectALL() {
		return mybatis.selectList("eventMapper.eventSelectALL");
	}
	public int eventInsert(EventDTO dto) {
		return mybatis.insert("eventMapper.eventInsert", dto);
	}
}
