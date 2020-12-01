package com.manage.alhl.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.manage.alhl.dto.ShopDTO;
import com.manage.alhl.dto.Shop_ProductDTO;
import com.manage.alhl.dto.UserDTO;

@Repository
public class ShopDao {

	@Autowired
	public SqlSessionTemplate mybatis;
	public ShopDTO shopSelectOne(UserDTO dto) {
		return mybatis.selectOne("shopMapper.shopSelectOne_user", dto);
	}
	public int shopUpdateOne(ShopDTO dto) {
		return mybatis.update("shopMapper.shopUpdate_outTime", dto);
	}
	public int shopUpdate_reCount(ShopDTO dto) {
		return mybatis.update("shopMapper.shopUpdate_reCount", dto);
	}
	public List<Shop_ProductDTO> shopProduct_info() {
		return mybatis.selectList("shopMapper.shopProduct_info");
	}
	public int shopInsert_user(ShopDTO dto) {
		return mybatis.update("shopMapper.shopInsert_user", dto);
	}
	
	public int shopUpdate_product(ShopDTO dto) {
		return mybatis.update("shopMapper.shopUpdate_product", dto);
	}
	public int shopUpdate_time(ShopDTO dto) {
		return mybatis.update("shopMapper.shopUpdate_time", dto);
	}
}
