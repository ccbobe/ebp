<%@page import="com.oracle.ebp.domain.po.User"%>
<%@page import="com.oracle.ebp.dao.impl.IUserDao"%>
<%@page import="org.springframework.context.support.ClassPathXmlApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'test.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    This is my JSP page. <br>
    
    <%
    	ApplicationContext context=new ClassPathXmlApplicationContext("spring/applicationContext.xml");
    	IUserDao userDao= context.getBean(IUserDao.class);
    List<User> users = userDao.queryAll();	
    	for(User user:users){
    		System.out.println(user.getUserName());
    	}
     %>
    
    
  </body>
</html>
