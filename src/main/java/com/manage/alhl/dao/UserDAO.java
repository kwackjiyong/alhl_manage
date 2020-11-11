package com.manage.alhl.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;

import com.manage.alhl.dto.UserDTO;
import com.manage.alhl.util.SHA256;


public class UserDAO {

	/*
	 * // 컨테이너가 객체를 자동으로 생성 Autowired
	 * 
	 * @Autowired public SqlSessionTemplate mybatis;
	 * 
	 * @Override public UserDTO userSelectOne(UserDTO dto) { // TODO Auto-generated
	 * method stub dto.setUserPassword(SHA256.getSHA256(dto.getUserPassword()));
	 * return mybatis.selectOne("userMapper.userSelectOne", dto); }
	 * 
	 * @Override public int userInsert(UserDTO dto) { // TODO Auto-generated method
	 * stub dto.setUserPassword(SHA256.getSHA256(dto.getUserPassword())); // 패스워드
	 * 해쉬화 java.sql.Timestamp creatTime = new java.sql.Timestamp(new
	 * java.util.Date().getTime()); //현재시간을 구해서 넣음 dto.setCreatTime(creatTime); //
	 * 현재시간 담음 dto.setUserEmailHash(SHA256.getSHA256(dto.getUserEmail())); // 이메일
	 * 해쉬화를 통한 인증코드 dto.setUserEmailCertified(0);//기본 0으로 설정 return
	 * mybatis.insert("userMapper.userInsert", dto); }
	 * 
	 * @Override public List<UserDTO> userSelect() { // TODO Auto-generated method
	 * stub return null; }
	 * 
	 * 
	 * @Override public int userIdCheck(UserDTO dto) { int result = 1; UserDTO
	 * resDTO = mybatis.selectOne("userMapper.userSelectOne", dto);
	 * 
	 * try { resDTO.getUserId(); }catch(NullPointerException e) { //널값이면 중복아님 result
	 * = 0; } System.out.println("결과:"+result); return result; }
	 * 
	 * 
	 * @Override public int userUpdate_Cash(UserDTO dto) { if(dto.getCash() < 0) {
	 * System.out.println("초과된 값을 결제할 수 없습니다."); return 0; }else { return
	 * mybatis.update("userMapper.userUpdate_Cash",dto); } }
	 * 
	 * @Override public int userUpdate(UserDTO dto) {
	 * dto.setUserPassword(SHA256.getSHA256(dto.getUserPassword())); return
	 * mybatis.update("userMapper.userModify",dto); }
	 * 
	 * @Override public int userDelete(UserDTO dto) { return
	 * mybatis.delete("userMapper.userDelete", dto); }
	 * 
	 * @Override public int userEmailCheck(UserDTO dto) { UserDTO udto =
	 * mybatis.selectOne("userMapper.userSelectOne", dto);
	 * if(udto.getUserEmailCertified()==1) { return 2; }else
	 * if(udto.getUserEmailHash().equals(dto.getUserEmailHash())) { return
	 * mybatis.delete("userMapper.userEmailCheck",dto); }else { return 0; } }
	 */
}
