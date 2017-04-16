package com.oracle.ebp.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.oracle.ebp.domain.po.AdminUser;
import com.oracle.ebp.exception.AdminUserException;
import com.oracle.ebp.service.impl.AdminUserService;
import com.oracle.ebp.util.MD5Util;
@Controller
public class AdminUserController {
		
	@Resource
	private AdminUserService adminUserService;

	@RequestMapping(value="/adminindexlogin",method=RequestMethod.POST)
	public String login(HttpSession session,AdminUser adminUser){
		
		//密码转换
		String mdpass = MD5Util.getMD5(adminUser.getPassword());
		adminUser.setPassword(mdpass);
		List<AdminUser> list = adminUserService.queryLogin(adminUser);
		//失败跳转页面
		try {
			
			if(list.isEmpty()){
				throw new AdminUserException("没有您的相关信息!");
				
			}
			if(list.size()>1){
				throw new AdminUserException("出错啦!!!");
			}
			
		} catch (AdminUserException e) {
			
			session.setAttribute("adminUserError", e.getMessage());
			return "admin/adminindexlogin";
		}
		//放置session
		session.setAttribute("adminUser", adminUser);
		//成功跳转页面
		return "redirect:/adminindex";	
	}
	
	@RequestMapping(value="/adminLogout")
	public String adminLogout(HttpSession session){
		
		AdminUser admin = (AdminUser) session.getAttribute("adminUser");
		if(admin==null){
			
			return "admin/adminindexlogin";
		}
		session.setAttribute("admin", admin.getUserName());
		session.removeAttribute("adminUser");
		return "admin/adminindexlogin";
	}
	
	@RequestMapping("/adminindex")
	public String adminhome(){
		
		return "admin/AdminIndex";
	}
	
	@RequestMapping("/adminTicket")
	public String adminTicket(){
		
		return "admin/adminTicket";
	}
	
	
	@RequestMapping("/adminUser")
	public String adminUser(){
		
		return "admin/adminUser";
	}
	
	@RequestMapping("/adminOder")
	public String adminOder(){
		
		return "admin/adminOder";
	}
	
	
	@RequestMapping("/adminIndexBody")
	public String adminIndexBody(){
		
		return "admin/mainbody/adminindexbody";
	}
	
	
	@RequestMapping("/VueDemo")
	public String VueDemo(HttpSession session,Model model ){
	 List<String> list=new	ArrayList<>();
		list.add("a");
		list.add("b");
		list.add("c");
		list.add("d");
		list.add("e");
		model.addAttribute("list", list);
		return "admin/VueDemo";
	}
	
	
	
}
