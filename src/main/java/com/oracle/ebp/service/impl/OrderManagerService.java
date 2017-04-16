package com.oracle.ebp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Repository;

import com.oracle.ebp.dao.impl.IOrdersManagerDao;
import com.oracle.ebp.domain.po.Orders;
import com.oracle.ebp.domain.po.OrdersVO;
import com.oracle.ebp.exception.UserException;
import com.oracle.ebp.service.BaseService;

@Repository
public class OrderManagerService implements BaseService<OrdersVO, Integer> {
	
	@Resource
	private IOrdersManagerDao ordersManagerDao;
	
	
	@Override
	public int persist(OrdersVO entity) throws Exception {
		return 0;
	}

	@Override
	public int remove(Integer pk) throws Exception {
		return 0;
	}

	@Override
	public int remove(OrdersVO entity) throws Exception {
		return 0;
	}

	@Override
	public void update(OrdersVO entity) throws Exception {
		
	}

	@Override
	public List<OrdersVO> query() throws Exception {
		return null;
	}

	@Override
	public List<OrdersVO> query(OrdersVO entity) throws Exception {
		return null;
	}
	
	public List<OrdersVO> queryByTime(OrdersVO entity) throws Exception {
		
		List<OrdersVO> list = ordersManagerDao.queryByCommitTime(entity);
		
		return list;
	}
	
	public List<OrdersVO> queryByOrderInfos(OrdersVO entity) throws Exception {
		List<OrdersVO> list = ordersManagerDao.queryByCommitTime(entity);
		
		return list;
	}
	public List<Orders> insertOrder(Orders order) throws UserException{
		List<Orders> list;
		try {
			list = ordersManagerDao.insertOrder(order);
		} catch (Exception e) {
			throw new UserException();
		}
		
		return list;
	}

}
