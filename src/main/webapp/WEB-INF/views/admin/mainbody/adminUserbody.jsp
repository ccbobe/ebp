<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib  prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="s" uri="http://jakarta.apache.org/taglibs/standard/scriptfree" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
        <div class="tianjia">
            <span>起始日期&nbsp;:&nbsp;</span><input id="start" name="startTime" 
            value="${param.startTime }"  
            onclick="jeDate({dateCell:'#start',isTime:true,format:'YYYY-MM-DD'})"  readonly>
            
            <span>终止日期&nbsp;:&nbsp;</span><input id="end"  name="endTime"  value="${param.endTime}" 
            onclick="jeDate({dateCell:'#end',isTime:true,format:'YYYY-MM-DD'})" readonly >
            <input type="button" class="btnc" value="查&nbsp;询"  onclick="ajaxUserByTime()" >
        </div>
        <div class="tianjia2">
            <span>姓名/用户名&nbsp;:&nbsp;</span><input  id="username" name="username" type="text" value="${param.username}">
            <span>身份证号&nbsp;:&nbsp;</span><input id="idCard" name="idCard"  type="text" value="${param.idCard}">
            <span>联系电话&nbsp;:&nbsp;</span><input id="telno"  name="telno" type="text" value="${param.telno}">
            <input type="button" class="btnc" value="查&nbsp;询" onclick="ajaxUserByUserInfo()">
        </div>
         
        <div class="tbes ">
            <table  class="table table-striped table-hover"  id="t">
                <tr class="active success"   bgcolor="blue" id="trt">
                    <td width="35" height="38">编号</td>
                    <td width="50">姓名</td>
                    <td width="58">用户名</td>
                    <td width="40">性别</td>
                    <td width="80">身份证号</td>
                    <td width="40">年龄</td>
                    <td width="200">通讯地址</td>
                    <td width="90">联系电话</td>
                    <td width="75">注册时间</td>
                    <td width="65">账户余额</td>
                    <td width="45">状态</td>
                    <td width="60"></td>
                </tr>
                <c:forEach  items="${lists}" var="user" varStatus="u" >
                	<tr>
	                    <td>${u.count}<input id="userStatus" type="hidden" value="1"></td>
	                    <td>${user.userName}</td>
	                    <td>${user.name }</td>
	                    <td>
	                    	<c:if test="${user.gender eq 1 }">
	                    		<div style="color: blue;font-size: 32px ">♂</div>
	                    	</c:if>
	                    	<c:if test="${user.gender eq 0 }">
	                    		<div style="color: blue;font-size: 32px ">♀</div>
	                    	</c:if>
	                    </td>
	                     <td>
	                     	<c:if test="${1==1}">
	             				${fn:substring(user.idCard,0,9)}****${fn:substring(user.idCard,14,18)} 
	                     	</c:if>
	                     	<c:if test="${0==1}">
	                     		${user.idCard}
	                     	</c:if>
	                     
	             		</td>
	                    <td>${user.age}</td>
	                    <td>${user.address}</td>
	                    <td>
	                    	${fn:substring(user.telno,0,3)}****${fn:substring(user.telno,7,11)}
	                    </td>
	                    <td>
	                    	<fmt:formatDate value="${user.regTime}" pattern="yyyy-MM-dd"/>
	                    </td>
	                    <td class="td_font">
	                    	<fmt:formatNumber  type="currency" minFractionDigits="2" >
								${user.balance }	                    	
	                    	</fmt:formatNumber>
	                    </td>
	                    <td id="status${user.uid}"><span style="" ></span>
							<c:if test="${user.status==0}">
								<span style="color:red;" >禁止</span>
							</c:if>
							<c:if test="${user.status==1}">
								<span style="color:green;" >活动</span>
							</c:if>
						</td>
	                    <td class="trdd">
	                    	<input id="uid${user.uid}" type="hidden" name="uid" value="${user.uid}" >
		                    <c:if test="${user.status==1}">
		                    	<input class="btnc" id="opt${user.uid}"  type="button" 
		                    			value="禁用" onclick="updateStatus(${user.uid},${user.status})">
		                    </c:if>
		                    <c:if test="${user.status==0}">
		                    	 <input class="btnc" id="opt${user.uid}"  type="button" 
		                    	 		value="启用" onclick="updateStatus(${user.uid},${user.status})">
		                    </c:if>
		                 </td>
	                </tr>
						
                </c:forEach>
                <tr >
                	<td colspan="11">
                		<input name="" class="btn btn-success btn-bg" style="width:500px" value="显示详细信息" onclick=""   >
                	<td>
                	
                </tr>
            </table>
          	
            <div class="butn">
    			
        	</div>
        	<div  class=".M-box" ></div>
			
        </div>
      
        
<script type="text/javascript">
	
	
	$(function(){
	
		$('.M-box').pagination({
    	callback:function(api){
        	$('.now').text(api.getCurrent());
    	}
		},function(api){
	    $('.now').text(api.getCurrent());
		});

	});
</script>

<script type="text/javascript" src="js/bootstrap.min.js"  >
</script>

<script type="text/javascript" src="js/jedate.js"  >
</script>

<!--  <link rel="stylesheet" type="text/css" href="css/pagination.css"> -->
<%-- <script type="text/javascript" src="js/jquery.pagination.js"></script> --%>
<link rel="stylesheet" href="css/admincommon.css">
<link rel="stylesheet" href="css/adiminUser.css">











<%-- <ul class="btn_ul">
          <li><input class="firstbtn" type="button" value="首&nbsp;页"></li>
          <li class="next_color"><a  onclick="alert()"  >1</a></li>       
          <c:choose>
          	<c:when test="${pageBean.totalPage<=5}">
          		<c:forEach begin="2" end="${pageBean.totalPage}" var="i" step="1" varStatus="p" >
	<li ><a  >${i}</a></li>
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