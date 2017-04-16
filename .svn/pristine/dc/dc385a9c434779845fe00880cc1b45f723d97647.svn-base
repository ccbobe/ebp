package com.oracle.ebp.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.oracle.ebp.dao.impl.ITicketDAO;
import com.oracle.ebp.domain.po.Ticket;
import com.oracle.ebp.domain.po.TicketVO;
import com.oracle.ebp.exception.UserException;
import com.oracle.ebp.service.BaseService;
@Service
public class TicketService implements BaseService<Ticket, Integer>{
	@Resource
	private ITicketDAO ticketDao;
	@Override
	public int persist(Ticket entity) throws Exception {
		int count = ticketDao.persist(entity);
		return count;
	}

	@Override
	public int remove(Integer pk) throws Exception {

		return 0;
	}

	@Override
	public int remove(Ticket entity) throws Exception {
		int count = ticketDao.remove(entity);
		return count;
	}

	@Override
	public void update(Ticket entity) throws Exception {
		ticketDao.update(entity);
	}
	/**
	 * @author zh
	 * ticket中数据的默认查询
	 */
	public List<Ticket> query(String startTime) throws Exception {
		List<Ticket> list;
		try {
			list = ticketDao.queryInfo(startTime);
		} catch (Exception e) {
			throw new UserException();
		}
		return list;
	}

	@Override
	public List<Ticket> query(Ticket entity) throws Exception {
		
		return null;
	}
	
	public List<Ticket> queryTicketByTime(TicketVO vo)throws Exception{
		
		List<Ticket> list = ticketDao.queryTicketByTime(vo);
		return list;
	}
	
	public long count(TicketVO vo) throws Exception{
		long count = ticketDao.count(vo);
		return count;
	}

	@Override
	public List<Ticket> query() throws Exception {
		// TODO Auto-generated method stub
		return null;
	}



}
