<%@page import="com.oracle.ebp.controller.UserManagerController"%>
<%@page import="com.oracle.ebp.controller.UserController"%>
<%@page import="com.oracle.ebp.service.impl.UserService"%>
<%@page import="org.springframework.web.context.WebApplicationContext"%>
<%@page import="org.springframework.context.support.AbstractApplicationContext"%>
<%@page import="org.springframework.context.ApplicationContext"%>
<%@ page contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<link rel="stylesheet" href="css/admincommon.css">
<link rel="stylesheet" href="css/adiminUser.css">

<c:set  var="title" scope="request" value="用户管理" ></c:set>
<c:set  var="mainbody" scope="request" value="adminUserbody.jsp" />

<%@ include file="/WEB-INF/views/admin/common/layout/layout.jsp" %>

<script type="text/javascript"  src="${basePath}js/jquery-1.12.1.min.js" ></script>

<script type="application/javascript">
			//默认查询user
			function ajaxUser(){
				$.ajax({
					type:"get",
					url:"managerUsers",
					async:true,
					//dataType:"jsp",
					success:function(data){
						$("#content_r").html(data);
						//ok
					},
					eerror:function(){
						alert("出错啦");
					}
				}); 
			}
			
	 ajaxUser();
	 //修改用户登录权限
	 function updateStatus(uid,s){
	 		if(s==1){
	 			$("#opt"+uid).val("禁用");
	 		}else{
	 			$("#opt"+uid).val("启用");
	 		}
	 		$.post("updateStatus",{//传递的参数
				uid:uid,
				status:s
			},
			function(data){
			//当数据相应成功时操作以下内容
				$("#status"+uid).html(data);
				if(status==1){
					$("#opt"+uid).val("禁用");
				}else{
					$("#opt"+uid).val("启用");
				}
				//实现页面刷新
				$("#content_r").load("managerUsers");
			});
		
		};
		//根据时间查询
		function ajaxUserByTime(){
			var start=$("#start").val();
			var end=$("#end").val();
			$.ajax({
				type:"post",
				url:"queryByTime",
				data:{
					"startTime":start,
					"endTime":end
				},
				async:true,
				success:function(data){
					
					$("#content_r").html(data);		
					//$("#content_r").load(data);		
				}
			});
		}
		//根据个人信息查询
		function ajaxUserByUserInfo(){
			var name=$("#username").val();
			var card=$("#idCard").val();
			var tel=$("#telno").val();
			$.ajax({
				type:"post",
				url:"queryByUserInfo",
				data:{
					userNameOrName:name,
					idCard:card,
					telno:tel
				},
				async:true,
				success:function(data){
					$("#content_r").html(data);	
				}
			});
		}
		
	
		
</script>
<script src="${basePath}js/admincommon.js"></script>
<script type="text/x-javascript" src="js/jquery-3.1.0.js"></script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />