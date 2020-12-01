package com.manage.alhl.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.manage.alhl.dao.ShopDao;
import com.manage.alhl.dao.ShopLogDao;
import com.manage.alhl.dto.ShopDTO;
import com.manage.alhl.dto.ShopLogDTO;
import com.manage.alhl.dto.Shop_ProductDTO;
import com.manage.alhl.dto.UserDTO;


@Service("IShopLogService")
public class ShopLogService{
	
	@Autowired
	public ShopLogDao dao;
	public List<ShopLogDTO> shopSelect(UserDTO dto) {
		return dao.shopSelect(dto);
	}
	public List<ShopLogDTO> shopSelect_user(UserDTO dto) {
		return dao.shopSelect_user(dto);
	}
	public int shoplogInsert(ShopLogDTO dto) {
		return dao.shoplogInsert(dto);
	}
}