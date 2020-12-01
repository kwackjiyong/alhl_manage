package com.manage.alhl.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.manage.alhl.dto.ShopDTO;
import com.manage.alhl.dto.ShopLogDTO;
import com.manage.alhl.dto.Shop_ProductDTO;
import com.manage.alhl.dto.UserDTO;

@Repository
public class ShopLogDao {

	@Autowired
	public SqlSessionTemplate mybatis;
	public List<ShopLogDTO> shopSelect(UserDTO dto) {
		return mybatis.selectList("shoplogMapper.shoplogSelect", dto);
	}
	public List<ShopLogDTO> shopSelect_user(UserDTO dto) {
		return mybatis.selectList("shoplogMapper.shoplogSelect_user", dto);
	}
	public int shoplogInsert(ShopLogDTO dto) {
		return mybatis.update("shoplogMapper.shoplogInsert", dto);
	}
}
