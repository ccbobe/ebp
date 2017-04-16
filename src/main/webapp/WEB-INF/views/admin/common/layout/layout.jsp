<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML >
<html>
  <head>
   	<title>${title}</title>
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
   
</head>
  <script type="text/javascript"  src="js/jquery-3.1.0.js" ></script>
  <script type="text/javascript" src="js/bootstrap.min.js"  >
</script>
  <body>
		<div id="login">
		  	<%@ include file="/WEB-INF/views/admin/common/static/header.jsp" %>
		</div>
		<div id="logo">
			<!-- logo页面静态资源 -->
		    <%@ include file="/WEB-INF/views/admin/common/static/logo.jsp" %>
		    
		</div>
		
<div id="content">
	<!-- 导航页面 -->
   	<%@ include file="/WEB-INF/views/admin/common/static/nav.jsp" %>
    <div id="content_r">
    	<jsp:include page="/WEB-INF/views/admin/mainbody/${mainbody}"/>
    
     	<!-- 主要内容 -->
     	<!-- 使用ajax加载文件 -->
    </div>
   
</div>
<!-- 页脚 -->
<%@ include file="/WEB-INF/views/admin/common/static/footer.jsp" %>
</body>

</html>

