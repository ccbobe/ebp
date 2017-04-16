<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<c:set  var="title" scope="request" value="用户首页" ></c:set>
<%@ include file="/WEB-INF/views/user/common/layout/layout.jsp" %>