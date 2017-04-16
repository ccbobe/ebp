package com.oracle.ebp.dao.impl;

import java.util.List;

import com.oracle.ebp.dao.BaseDAO;
import com.oracle.ebp.domain.po.Orders;
import com.oracle.ebp.domain.po.OrdersVO;

public interface IOrdersManagerDao extends BaseDAO<OrdersVO, Integer> {
	
	public int getTotalCount() throws Exception;
	
	public List<OrdersVO> queryByCommitTime(OrdersVO ordersVO) throws Exception;

	public List<Orders> insertOrder(Orders order) throws Exception;
	
	
	

	
}
