package com.oracle.ebp.controller;


import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;








import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.ebp.util.Perchase;
import com.oracle.ebp.domain.po.Ticket;
import com.oracle.ebp.service.impl.TicketService;
@Controller
public class TicketController {
	@Resource
	private TicketService ticketService;
	/**
	 * @author zh
	 * @return 票项查询页面
	 */
	@RequestMapping("/ticketShowInfo")
	public String ticketShowInfo(String startTime,HttpServletRequest req){
			
			if (startTime == null) {
				SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
				Date date = new Date();
				startTime = dateFormat.format(date);
				
			}
			
			try {			
				HttpSession session = req.getSession();				
				List<Ticket> list = ticketService.query(startTime);

				System.out.println(list.get(0));
				session.setAttribute("tickets", list);
				session.setAttribute("startTime", startTime);
			} catch (Exception e) {
				req.setAttribute("error", e.getMessage());
			}
		
		return "/user/ticket";
	}
	@SuppressWarnings("unchecked")
	@RequestMapping("/perchase")
	@ResponseBody
	public Map<String,Object> perchase(Perchase p,HttpSession session) {
		List<Perchase> list = new ArrayList<Perchase>();
		list = (List<Perchase>) session.getAttribute("list");
		
		Map<String,Object> resultMap = new HashMap<String,Object>();

		p.setAmount(p.getPrice()*p.getBuyNums());

		try {
			list.add(p);
			session.setAttribute("perchases", list);
		} catch (Exception e) {
			resultMap.put("result", "失败");
			return resultMap;
		}
		resultMap.put("result", "成功");
		return resultMap;
		
	}
	/**
	 * 进入购物车
	 * @param session
	 * @return 购物车页面
	 */
	@RequestMapping("perchaseShow")
	public String perchaseShow(HttpSession session){
		
		return "/user/perchaseShow";
	}
}
