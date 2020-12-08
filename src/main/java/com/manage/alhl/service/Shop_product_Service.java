package com.manage.alhl.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.alhl.dao.Shop_ProductDAO;
import com.manage.alhl.dto.Shop_ProductDTO;

@Service("Shop_product_Service")
public class Shop_product_Service {

	@Autowired
	public Shop_ProductDAO dao;
	
	public List<Shop_ProductDTO> show_list(){
		return dao.show_list();
	}
	public Shop_ProductDTO show_product_info(Shop_ProductDTO dto){
		return dao.show_product_info(dto);
	}
	public int insert_product(Shop_ProductDTO dto){
		return dao.insert_product(dto);
	}
	public int update_product(Shop_ProductDTO dto){
		return dao.update_product(dto);
	}
	public int next_num(){
		return dao.next_num();
	}
}
