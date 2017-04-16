<%@ page language="java" import="java.util.*"  contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<div class="tianjia">
     <span>起始日期&nbsp;:&nbsp;</span><input  name="startTime" id="start" type="text"  value="${param.startTime }"
     	onclick="jeDate({dateCell:'#start',format:'YYYY-MM-DD'})"  readonly>
     <span>终止日期&nbsp;:&nbsp;</span><input  name="endTime" id="end" value="${param.endTime}"
       onclick="jeDate({dateCell:'#end',format:'YYYY-MM-DD'})" type="text"  readonly>
     <input type="button" class="btnc" value="查&nbsp;询" onclick="ajaxOrderByTime()"  >
 </div>
 <div class="tianjia2">
     <span>订&nbsp;&nbsp;单&nbsp;&nbsp;号&nbsp;:&nbsp;</span><input  id="oid" name="oid" type="text" value="">
     <span>姓名/用户名&nbsp;:&nbsp;</span><input id="username" name="userNameOrName" type="text" value="${param.userNameOrName }">
     <span>身份证号&nbsp;:&nbsp;</span><input  id="idCard" name="idCard" type="text" value="${param.idCard}">
     <input type="button" class="btnc" value="查&nbsp;询" onclick="ajaxOrderByOrderInfo()" >
 </div>

 <div class="tbes">
     <table border="1" class="table table-hover"  cellspacing="0" cellpadding="0" id="t">
         <tr class="active success"  bgcolor="#808080" id="trt">
             <td width="57" height="38">编号</td>
             <td width="91">订单号</td>
             <td width="150">订单内容</td>
             <td width="85">成交时间</td>
             <td width="74">金额(元)</td>
             <td width="63">姓名</td>
             <td width="76">用户名</td>
             <td width="236">身份证号</td>
         </tr>
         
         <c:forEach items="${list}" var="order" varStatus="o" >
         	<tr>
	             <td>${o.count}</td>
	             <td>${order.oid}</td>
	             <td>${order.descs}</td>
	             <td>
	                 ${order.commitTime}
	             </td>
	             <td>
	             	<fmt:formatNumber  type="currency" minFractionDigits="2" >
						${order.amount}	                    	
	                </fmt:formatNumber>
	             </td>
	             <td>${order.userName }</td>
	             <td>${order.name}</td>
	             <td>
	             	${fn:substring(order.idCard,0,9)}****${fn:substring(order.idCard,14,18)} 
	             </td>
	         </tr>
         </c:forEach>

     </table>
 </div>
 <div class="butn">
     <ul class="btn_ul">
         <li><input class="firstbtn" type="button" value="首&nbsp;页"></li>
            <li class="next_color"><a href="#">1</a></li>       
            <c:choose>
            	<c:when test="${pageBean.totalPage<=5}">
            		<c:forEach begin="2" end="${pageBean.totalPage}" var="i" step="1" varStatus="p" >
					<li ><a href="#">${i}</a></li>
					</c:forEach>   
            	</c:when>
            	<c:when test="${pageBean.totalPage >=6}">
            		<c:forEach begin="2" end="${3}" var="i" step="1" varStatus="p" >
						<li ><a href="#">${i}</a></li>
					</c:forEach>  
					<li ><a href="#">...</a></li> 
					<c:forEach begin="${pageBean.totalPage-1}" end="${pageBean.totalPage}" var="i" step="1" varStatus="p" >
						<li ><a href="#">${i}</a></li>
					</c:forEach> 
            	</c:when>
        </c:choose>
       <li><input class="firstbtn" type="button" value="末&nbsp;页"></li>
       <li><input class="intext" type="text"></li>
       <li><a href="#">GO</a></li>
     </ul>
 </div>
 
 
 <script type="text/javascript" src="${basePath}js/jedate.js"  >
</script>
<script type="text/javascript">
 function ajaxOrder(){
	//查询
	$.ajax({
		type:"post",
		url:"adminOrderBody",
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

	//根据时间查询
		function ajaxOrderByTime(){
			var start=$("#start").val();
			
			var end=$("#end").val();
			$.ajax({
				type:"post",
				url:"adminOrderByTime",
				data:{
					startTime:start,
					endTime:end
				},
				async:true,
				success:function(data){
					//alert(data);
					$("#content_r").html(data);		
					//$("#content_r").load(data);		
				}
			});
		}
		
		//根据个人信息查询
		function ajaxOrderByOrderInfo(){
			var name=$("#username").val();
			//alert(name);
			var card=$("#idCard").val();
			var  oid=$("#oid").val();
			if(oid==''||oid==null){
				oid=0;
			}
			
			$.ajax({
				type:"post",
				url:"adminOrderByOrderInfos",
				data:{
					oid:oid,
					userNameOrName:name,
					idCard:card
				},
				async:true,
				success:function(data){
				
					$("#content_r").html(data);		
				}
			});
		}
		

</script>
<link rel="stylesheet" href="css/bootstrap-theme.min.css" />
<link rel="stylesheet" href="css/bootstrap.min.css" />
