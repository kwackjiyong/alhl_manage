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
	public Shop_ProductDTO show_product_info(Shop_ProductDTO dto){
		return mybatis.selectOne("shop_product_mapper.show_product_info", dto);
	}
	public int insert_product(Shop_ProductDTO dto){
		java.sql.Timestamp creatTime = new java.sql.Timestamp(new java.util.Date().getTime()); // 현재시간을 구해서 넣음
		dto.setCreateDate(creatTime);
		dto.setProductNum(next_num());
		return mybatis.insert("shop_product_mapper.insert_product", dto);
	}
	public int update_product(Shop_ProductDTO dto){
		return mybatis.insert("shop_product_mapper.update_product", dto);
	}
	public int delelte_product(Shop_ProductDTO dto){
		return mybatis.insert("shop_product_mapper.update_product", dto);
	}
	public int next_num(){
		return mybatis.selectOne("shop_product_mapper.next_num");
	}
}
