package com.manage.alhl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.manage.alhl.dao.SearchLogDao;
import com.manage.alhl.dto.SearchLogDTO;
import com.manage.alhl.dto.UserDTO;


//[DB연결 사용법] 6. 서비스 클래스 작성
@Service("ISearchLogService")
public class SearchLogService{
	// 인터페이스로 생성해야함
	@Autowired
	public SearchLogDao dao;
	
	public List<SearchLogDTO> SearchLogSelect(){
		return dao.SearchLogSelect();
	}
	public List<SearchLogDTO> SearchLog_Month(int years){
		return dao.SearchLog_Month(years);
	}
	public int SearchLog_Today() {
		return dao.SearchLog_Today();
	}
	
	
	public List<SearchLogDTO> userLogSelect(UserDTO userDTO){
		return dao.userLogSelect(userDTO);
	}
	public List<SearchLogDTO> hotLogSelect(){
		return dao.hotLogSelect();
	}
	
	public int logInsert(SearchLogDTO dto) {
		return dao.logInsert(dto);
	}
	
	public List<SearchLogDTO> userLogSelect_AGE(UserDTO userDTO){
		return dao.userLogSelect_AGE(userDTO);
	}
	public List<SearchLogDTO> logSelect_1000(){
		return dao.logSelect_1000();
	}
}
