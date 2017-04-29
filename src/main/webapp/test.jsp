<%@ page pageEncoding="utf-8"  %>
<%@  taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


 <%--@ include file="/WEB-INF/views/user/common/static/footer.jsp" --%>
<%--@ include  file="/WEB-INF/views/user/common/static/adv.jsp" --%>
 <%--@ include file="/WEB-INF/views/user/common/static/nav.jsp" --%>
 
<%
	request.setAttribute("name", "zhang");
	response.sendRedirect("http://localhost:8080/ebp/MyTest.jsp");

 %> 