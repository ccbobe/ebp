package com.oracle.ebp.dao.impl;

import java.util.List;

import com.oracle.ebp.domain.po.Ticket;
import com.oracle.ebp.domain.po.TicketPO;
import com.oracle.ebp.domain.po.TicketVO;
import com.oracle.ebp.dao.BaseDAO;

public interface ITicketDAO extends BaseDAO<Ticket, Integer> {
	
	public int persist(Ticket ticket);
	
	public List<Ticket> queryAll();
	
	public int update(Ticket entity);
	
	public int remove(Ticket entity);
	
	public List<Ticket> queryByPage(int  currentPage ,int pageCount ) throws Exception;
	
	public int updateStatus(Ticket ticket);
	
	public List<Ticket> queryByUserNameOrOther(int currentPage ,int pageCount,Ticket ticket);
	
	public List<Ticket> queryInfo(String startTime);
	
	public List<Ticket> queryTicketByTime(TicketVO vo) throws Exception;
	
	public int count(TicketVO vo )throws Exception;
	
	public List<Ticket> testPO (TicketPO po )throws Exception;

}
