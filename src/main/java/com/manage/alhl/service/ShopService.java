package com.manage.alhl.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.alhl.dao.ShopDao;
import com.manage.alhl.dto.ShopDTO;
import com.manage.alhl.dto.Shop_ProductDTO;
import com.manage.alhl.dto.UserDTO;


@Service("IShopService")
public class ShopService{
	
	@Autowired
	public ShopDao dao;
	public ShopDTO shopSelectOne(UserDTO dto) {
		return dao.shopSelectOne(dto);
	}
	public int shopUpdateOne(ShopDTO dto) {
		return dao.shopUpdateOne(dto);
	}
	
	public int shopUpdate_reCount(ShopDTO dto) {
		return dao.shopUpdate_reCount(dto);
	}
	
	public List<Shop_ProductDTO> shopProduct_info() {
		return dao.shopProduct_info();
	}
	public int shopInsert_user(ShopDTO dto) {
		return dao.shopInsert_user(dto);
	}
}
