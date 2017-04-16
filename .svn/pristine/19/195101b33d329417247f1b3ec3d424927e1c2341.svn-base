<%@page import="com.oracle.ebp.domain.po.Ticket"%>
<%@page import="com.oracle.ebp.domain.PageBean"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<div id="content_r">
    <div class="tianjia">
        <span>起始日期&nbsp;:&nbsp;</span><input type="text" id="start" name="beginTime" 
        value="${param.beginTime}" onclick="jeDate({dateCell:'#start',isTime:true,format:'YYYY-MM-DD'})"  readonly><c:set var="beginTime" scope="session" value="${param.beginTime}"/>
        <span>终止日期&nbsp;:&nbsp;</span><input type="text" id="end" name="endTime" 
        value="${param.endTime }" onclick="jeDate({dateCell:'#end',isTime:true,format:'YYYY-MM-DD'})"  readonly><c:set var="endTime" scope="session" value="${param.endTime}"/>
        <input type="button" class="btnc" value="查&nbsp;询" onclick="ajaxTicketByTime()"  >
        <input type="button" class="btnc" value="增加票项" onclick="tianjia()"></div>
    <div class="tbes">
        <table border="1" cellspacing="0" cellpadding="0" id="t">
            <tr bgcolor="#808080" id="trt">
                <td width="58" height="38">编号</td>
                <td width="145">描述</td>
                <td width="148">时间</td>
                <td width="83">总张数（张）</td>
                <td width="95">剩余票数（张）</td>
                <td width="68">单价(元)</td>
                <td width="67">状态</td>
                <td width="177"></td>
            </tr>
            <c:forEach  items="${list}" var="ticket" varStatus="ts" >
	            <tr id="tr${ts.index}">
	                <td height="38">${ts.count}</td> 
	                <td>${ticket.descs}</td> 
	                <td>${ticket.startTime}</td> 
	                <td>${ticket.amount}</td>
	                <td>${ticket.balance}</td>
	                <td>${ticket.price}</td>
	                <td>${ticket.status}</td>
	                <td><input class="btnc" type="button" value="删除" onclick="shanchu(0)"><input class="btnc" type="button" value="修改" onclick="xiugai(0)"></td>
	            </tr>
            </c:forEach>
            
        </table>
        <div class="butn">
        	 <ul >
		       <li><input class="intext" id="first" onclick="ajaxselectMore(1)" value="首页"></li>
		       <li><input class="intext" id="pageup" onclick="ajaxselectMore(${pageBean.currentPage-1})"  value="上页"/></li>       
		       <li><input class="intext" value="${pageBean.currentPage}/${pageBean.totalPage}"/></li>       
		       <li><input class="intext" id="next" onclick="ajaxselectMore(${pageBean.currentPage+1})"  value="下页"/></li>       
		       <li><input class="intext" id="last" onclick="ajaxselectMore(${pageBean.totalPage})" value="末页"></li>
		       <li><input class="intext" id="number" type="number" value="${param.number}" ></li>
		       <li><input class="intext" id="go" onclick="ajaxselectMore($('#number').val())" value="GO" readonly/></li>
		     </ul>
        </div>
    </div>
</div>

<script type="text/javascript">
	//分页查询处理
	function ajaxselectMore(start){
			var pagecount="${pageBean.pageCount}",
			current=(start)*pagecount;
			var begin="${beginTime}";
			var end="${endTime}";
			$.ajax({
				type:"get",
				url:"queryTicketByTime",
				async:true,
				data:{//起始行数
					"currenPage":current,
					//条件查询
					"beginTime":begin,
					"endTime":end,
					//显示条数
					pageCount:5
				},
				success:function(data){
					$("#content_r").html(data);
				}
			});
		}

</script>
<%--  <ul class="btn_ul">
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
 </ul> --%>