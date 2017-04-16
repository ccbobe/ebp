package com.oracle.ebp.controller;

import java.sql.Date;
import java.sql.Timestamp;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.ebp.domain.PageBean;
import com.oracle.ebp.domain.po.Orders;
import com.oracle.ebp.domain.po.OrdersVO;
import com.oracle.ebp.domain.po.User;
import com.oracle.ebp.exception.UserException;
import com.oracle.ebp.service.impl.OrderManagerService;
import com.oracle.ebp.util.Perchase;
@Controller
public class OrderManagerController {
	
	private Logger logger=LoggerFactory.getLogger(OrderManagerController.class);
	
	@Resource
	private OrderManagerService orderManagerService;
	
	@RequestMapping("/adminOrderBody")
	public String adminOrderBody(OrdersVO vo,HttpServletRequest request){
		logger.info("返回主体内容=====>"+":Method"+"adminOrderBody");
		PageBean<OrdersVO> pageBean=new PageBean<OrdersVO>();
		System.out.println(vo);
		List<OrdersVO> list=null;
		try {
			list = orderManagerService.queryByOrderInfos(vo);
		} catch (Exception e) {
			logger.error("查询出错"+e);
		}
		pageBean.setPageData(list);
		pageBean.setTotalCount(list.size());
		request.setAttribute("list", list);	
		return "admin/mainbody/adminOrderbody";
	}
	
	
	@RequestMapping("/adminOrderByTime")
	public String adminOrderByTime(OrdersVO vo,HttpServletRequest request){
		PageBean<OrdersVO> pageBean=new PageBean<>();
		System.out.println(vo.getEndTime());
		
		List<OrdersVO> list=null;
		try {
			list = orderManagerService.queryByOrderInfos(vo);
		} catch (Exception e) {
			logger.error("查询出错"+e);
		}
		
		pageBean.setTotalCount(list.size());
		
		request.setAttribute("pageBean", pageBean);
		request.setAttribute("list", list);	
		return "admin/mainbody/adminOrderbody";
	}
	
	@RequestMapping("/adminOrderByOrderInfos")
	public ModelAndView adminOrderByOrderInfos(OrdersVO vo,HttpServletRequest request){
		System.out.println(vo);
		PageBean<OrdersVO> pageBean=new PageBean<>();
		ModelAndView view=new ModelAndView("admin/mainbody/adminOrderbody");
		List<OrdersVO> list=null;
		try {
			list = orderManagerService.queryByOrderInfos(vo);
		} catch (Exception e) {
			logger.error("查询出错"+e);
		}
		pageBean.setTotalCount(list.size());
		request.setAttribute("list", list);	
		return view;
	}
	@RequestMapping("orderFinish")
	public String orderFinish(HttpSession session,HttpServletRequest req){
		//实现订单的插入
		//插入orders表
		List<Perchase> perchases=(List<Perchase>) session.getAttribute("perchases");
		User user = (User) session.getAttribute("user");
		//获取order中的费用amount
		Orders order = new Orders();
		order.setUid(user.getUid());
		order.setStatus(user.getStatus());
		Timestamp d = new Timestamp(System.currentTimeMillis());
		System.out.println("+++++++++++++++++++++++++++++++");
		//输出当前时间
		order.setCommitTime(d);
		double amountSum = 0;
		for (int i = 0; i < perchases.size(); i++) {
			amountSum+=perchases.get(i).getBuyNums();
			
		}
		order.setAmount(amountSum);
		try {
			orderManagerService.insertOrder(order);
		} catch (UserException e) {
			req.setAttribute("errors", e.getMessage());
		}
		
		return "redirect:ticketShowInfo";
	}
}
