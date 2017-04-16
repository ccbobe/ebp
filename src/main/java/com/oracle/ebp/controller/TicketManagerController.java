package com.oracle.ebp.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.oracle.ebp.domain.PageBean;
import com.oracle.ebp.domain.po.Ticket;
import com.oracle.ebp.domain.po.TicketVO;
import com.oracle.ebp.service.impl.TicketService;
@Controller
public class TicketManagerController {
	
	private Logger logger = LoggerFactory.getLogger(TicketManagerController.class);
	
	@Resource
	private TicketService ticketService;
	
	@RequestMapping("/queryTicketByTime")
	public String queryTicketByTime(TicketVO vo, HttpServletRequest request){
		List<Ticket> list = null;
		try {
			list = ticketService.queryTicketByTime(vo);
			
			//数据库总行数
			long count=ticketService.count(vo);
			
			request.setAttribute("list", list);
			
			PageBean<Ticket> pageBean=new PageBean<>();
			
			//设置参数总行数
			pageBean.setTotalCount((int) count);
			//设置当前页数
			System.out.println(pageBean.getCurrentPage());
			System.out.println(pageBean.getTotalPage());
			pageBean.setCurrentPage(vo.getCurrenPage()/vo.getPageCount());
			request.setAttribute("pageBean",pageBean);
		} catch (Exception e) {
			logger.error("查询错误:=====>"+e);
		}
		//request.setAttribute("", );
		
		//System.out.println(vo);
		return "admin/mainbody/adminTicketbody";
	}
	@RequestMapping("/adminTicketAdd")
	public String adminTicketAdd(){
		
		return "admin/adminaddTicket";
	}
	
	@RequestMapping("/adminTicketBody")
	public String adminTicketBody(){
		
		return "admin/mainbody/adminAddTicketbody";
	}
	
}
