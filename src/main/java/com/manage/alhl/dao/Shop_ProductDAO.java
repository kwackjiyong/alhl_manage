package com.manage.alhl.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.manage.alhl.dto.Shop_ProductDTO;

@Repository
public class Shop_ProductDAO {
	
	@Autowired
	public SqlSessionTemplate mybatis;
	
	public List<Shop_ProductDTO> show_list(){
		return mybatis.selectList("shop_product_mapper.SelectAll");
	}
	
	
}
