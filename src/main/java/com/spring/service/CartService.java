package com.spring.service;

import java.util.List;

import com.spring.domain.CartVO;

public interface CartService {

	public List<CartVO> getList(int userNo);
	
	public List<CartVO> getList2(CartVO vo);
	
	public int insert();
	
	public int updateCart(CartVO vo);
	
	public int delete();
}
