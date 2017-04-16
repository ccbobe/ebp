package com.oracle.ebp.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.oracle.ebp.domain.po.User;
import com.oracle.ebp.exception.UserException;
import com.oracle.ebp.service.impl.UserService;
import com.oracle.ebp.util.MD5Util;

@Controller
public class UserController {
	@Resource
	private UserService service;

	
	/**
	 * 转发至注册页面
	 * @return 注册页面
	 */
	@RequestMapping("/userRegPage")
	public String userRegPage(){
		
		return "user/register";
	}
	@RequestMapping("/userRegister")
	public String userRegister(User user,Model model,HttpSession session){
		//查询该用户名是否已有重名
		System.out.println(user.getUserName());
		List<User> list = service.queryUserByName(user);
		
		if (!list.isEmpty()) {
			String errors = "已有重复用户名，请另选一个用户名进行注册！";
			model.addAttribute("errors", errors);
			return "redirect:userRegister";
		}
		int flag = service.persist(user);
		System.out.println("flag="+flag);
		if (flag==0) {
			try {
				throw new UserException("用户插入失败，请您重试！");
			} catch (UserException e) {
				model.addAttribute("errors", e.getMessage());
				return "redirect:userRegister";
			}
		}
		session.setAttribute("user", user);
		return "redirect:userModify";
	}
	/**
	 * 用户登录页面
	 * @return
	 */
	@RequestMapping("/userLoginPage")
	public String userLoginPage(){
		
		return "user/login";
	}
	/**
	 * 根据用户名和密码进行登录验证，成功则进入用户主页
	 * @param userName
	 * @param password
	 * @param model
	 * @return 成功登陆，重新进入首页
	 */
	@RequestMapping(value="/userLogin")
	public String userLogin(String userName,String password,Model model,HttpSession session){
		User userInput = new User();
		
		userInput.setUserName(userName);
		String md5password =MD5Util.getMD5(password);
		System.out.println(md5password);
		userInput.setPassword(md5password);

		System.out.println(userInput.getPassword());
		//根据用户名和密码进行查询
		List<User> list = service.queryUser(userInput);
		if (list.isEmpty()) {
			try {
				throw new UserException("没有此用户，请验证后再登录");
			} catch (UserException e) {
				
				model.addAttribute("errors", e.getMessage());
				return "redirect:userLoginPage";
			}
		}
		session.setAttribute("user", list.get(0));
		
		return "user/index";
	}
	/**
	 * 退出登陆
	 * @param req
	 * @return 退出登陆，进入网站首页
	 */
	@RequestMapping("/userLogout")
	public String userLogout(HttpServletRequest req){
		HttpSession session = req.getSession();
		if (session.getAttribute("user")==null) {
			return "/user/index";
		}
		session.removeAttribute("user");
		return "/user/index";
	}
	/**
	 * 跳转个人信息修改页面
	 * @return
	 */
	@RequestMapping("/userModify")
	public String userModify(){
		
		return "user/VIPmessage";
	}
	@RequestMapping("/modifyUserPassword")
	@ResponseBody
	public Map<String, Object> modifyUserPassword(Integer uid,String newpassword,HttpServletRequest req){
		
		System.out.println("--------------"+uid);
		Map<String, Object> resultmap = new HashMap<String, Object>();
		//根据uid查询用户是否存在，并返回用户
		String password = MD5Util.getMD5(newpassword);
		System.out.println("============="+password);
		try {
			List<User> list = service.queryUserByUid(uid);
			User user = list.get(0);
			System.out.println(user);
			user.setPassword(password);
			
			service.update(user);
			resultmap.put("result", "成功");
		} catch (Exception e) {
			resultmap.put("result", "失败");
		}
		
		return resultmap;
	}
	/**
	 * 修改个人信息
	 * @param name
	 * @param sex
	 * @param address
	 * @param telno
	 * @param idCard
	 * @param age
	 * @param request
	 * @return
	 */
	@RequestMapping("/modifyUser")
	public String modifyUser(String name,String sex,String address,String telno,String idCard,Integer age, HttpServletRequest request){
		HttpSession session=request.getSession();
		User user = (User) session.getAttribute("user");
		if (sex.equals("boy")) {
			user.setGender(1);			
		}else {
			user.setGender(0);
		}
		user.setAddress(address);
		user.setTelno(telno);
		user.setIdCard(idCard);
		user.setName(name);
		user.setAge(age);
		System.out.println(user);
		try {
			service.update(user);
		} catch (UserException e) {
			// TODO Auto-generated catch block
			request.setAttribute("error", e.getMessage());;
		}
		return "/user/VIPmessage";
	}
	/**
	 * 
	 * @return 账户充值页面
	 */
	@RequestMapping("TopUpAccount")
	public String TopUpAccount(){
		return "/user/TopUpAccount";
	}
	/**
	 * @author zh
	 * @param session
	 * @param model
	 * @param balance
	 * @return 用户账户充值
	 */
	@RequestMapping("updateAccount")
	public String updateAccount(HttpSession session,Model model,String balance){
		double plus = Double.parseDouble(balance);
		User user = (User) session.getAttribute("user");
		System.out.println(user);
		user.setBalance(user.getBalance()+plus);
		System.out.println("---------------"+user.getUid()+"-------"+user.getBalance());
		try {			
			service.update(user);
		} catch (UserException e) {
			model.addAttribute("errors",e.getMessage());
			return "redirect:TopUpAccount";
		}
		model.addAttribute("plus", balance);
		return "/user/updateAccountSucc";
	}

	
}
