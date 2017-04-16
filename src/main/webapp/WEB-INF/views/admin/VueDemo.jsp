<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>My JSP 'VueDemo.jsp' starting page</title>

	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <script type="text/javascript"  src="js/vue.js" ></script>
  <body>
   
    
    <c:forEach  items="${list}" var="l" varStatus="li"  >
    	<p>${li.count}</p>
    	<p>${l}</p>
    </c:forEach>
    <hr>
    <div  id="app" >
    		{{message}}
    		
    	<ul>
	    	<li>
	    		<span v-for="li in message">{{li}}</span>
	    	</li>
   		 </ul>	
    </div>
    
    <script type="text/javascript">
    	new Vue({
    		el:'#app',
		    data: {
		        message:'${list}'
		    }
    	});
    	
    </script>
    
  </body>
</html>
