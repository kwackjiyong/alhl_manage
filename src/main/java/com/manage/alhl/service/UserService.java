package com.manage.alhl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;

import com.manage.alhl.dao.UserDAO;
import com.manage.alhl.dto.UserDTO;


//[DB연결 사용법] 6. 서비스 클래스 작성
@Service("UserService")
public class UserService{
	// 인터페이스로 생성해야함
	@Autowired
	public UserDAO dao;
	
	public List<UserDTO> userSelect(UserDTO dto) {
		return dao.userSelect(dto);
	}
	public UserDTO userSelectFind(UserDTO dto) {
		// TODO Auto-generated method stub
		return dao.userSelectFind(dto);
	}
	public UserDTO userSelectOne(UserDTO dto) {
		return dao.userSelectOne(dto);
	}
	public int userInsert(UserDTO dto) {
		return dao.userInsert(dto);
	}
	
	public int userIdCheck(UserDTO dto){
		return dao.userIdCheck(dto);
	}
	public int userUpdate_Cash(UserDTO dto) {
		return dao.userUpdate_Cash(dto);
	}
	public int userUpdate(UserDTO dto) {
		return dao.userUpdate(dto);
	}
	public int userDelete(UserDTO dto) {
		return dao.userDelete(dto);
	}
	public int userEmailCheck(UserDTO dto) {
		return dao.userEmailCheck(dto);
	}
}
