package com.manage.alhl.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.manage.alhl.dto.SearchLogDTO;
import com.manage.alhl.dto.UserDTO;


//[DB연결 사용법] 3. 인터페이스 받아서 클래스 생성
@Repository
public class SearchLogDao {
	// 컨테이너가 객체를 자동으로 생성 Autowired
	@Autowired
	public SqlSessionTemplate mybatis;
	
	// 검색로그내역
	public List<SearchLogDTO> SearchLogSelect() {
		return mybatis.selectList("searchLogMapper.SearchLogSelect");
	}
	
	//월별 횟수 통계
	public List<SearchLogDTO> SearchLog_Month(int years){
		return mybatis.selectList("searchLogMapper.SearchLog_Month",years);
	}
	//일일 횟수
		public int SearchLog_Today(){
			return mybatis.selectOne("searchLogMapper.SearchLog_TodayCnt");
		}
	
	public List<SearchLogDTO> userLogSelect(UserDTO userDTO){
		return mybatis.selectList("searchLogMapper.SearchLog_USER",userDTO);
	}
	public List<SearchLogDTO> hotLogSelect(){
		return mybatis.selectList("searchLogMapper.SearchLog_HOT");
	}
	
	public int logInsert(SearchLogDTO dto) {
		return mybatis.insert("searchLogMapper.SearchLog_INSERT",dto);
	}
	
	public List<SearchLogDTO> userLogSelect_AGE(UserDTO userDTO){
		//사용자의 앞뒤 5년을 구합니다.
		//기존 생일 데이터
		java.sql.Date orginBirth = userDTO.getUserBirth();
		// 계산을 위해 long형태로 바꿉니다.
		long originBirth_l = orginBirth.getTime();
		// 5년치 long 타입의 크기
		long fiveYears = 157766400000L;
		// 생일보다 5년전을 구합니다.
		java.sql.Timestamp minDate = new java.sql.Timestamp(originBirth_l - fiveYears);
		// 생일보다 5년후를 구합니다.
		java.sql.Date maxDate = new java.sql.Date(originBirth_l + fiveYears);
		//위에서 구한 값으로 최소 최대 연령을 특정합니다.
		UserDTO dto = new UserDTO();
		
		dto.setCreatTime(minDate);
		dto.setUserBirth(maxDate);
		
		return mybatis.selectList("searchLogMapper.SearchLog_AGE",dto);
	}
	
	public List<SearchLogDTO> logSelect_1000(){
		return mybatis.selectList("SearchLog_1000");
	}
	
}
