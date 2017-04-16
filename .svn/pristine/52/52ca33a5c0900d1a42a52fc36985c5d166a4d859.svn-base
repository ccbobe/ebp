<%@page import="com.oracle.ebp.domain.po.Ticket"%>
<%@page import="com.oracle.ebp.domain.po.TicketVO"%>
<%@page import="com.oracle.ebp.domain.PageBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<c:set  var="title" scope="request" value="票据管理" />
<c:set  var="mainbody" scope="request" value="adminTicketbody.jsp" />
<%@ include file="/WEB-INF/views/admin/common/layout/layout.jsp" %>

<link rel="stylesheet" href="css/admincommon.css">
<link rel="stylesheet" href="css/adminaddTicket.css">
<script src="${basePath}js/admincommon.js"></script>
<script src="${basePath}js/adminTicket.js"></script>
<script src="${basePath}js/jquery-1.12.1.min.js"></script>
<script type="text/javascript">
	//根据时间查询
		function ajaxTicketByTime(){
			var start=$("#start").val();
			var end=$("#end").val();
			$.ajax({
				type:"post",
				url:"queryTicketByTime",
				data:{
					"beginTime":start,
					"endTime":end
				},
				async:true,
				success:function(data){
					$("#content_r").html(data);
									
				}
			});
		}
		
	ajaxTicketByTime();
</script>
<script type="text/javascript" src="js/jedate.js"  >
</script>