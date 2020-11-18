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
}
