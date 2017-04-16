<%@page import="com.oracle.ebp.util.Perchase"%>
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
List<Perchase> list = new ArrayList<Perchase>();
session.setAttribute("list", list);



%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>实事订票</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/ticket.css">
    <style>

    </style>
</head>
<script type="text/javascript" src="js/jquery-3.1.0.js"></script>


<body>

<div id="login">
    <div>
        <div>Hi 欢迎访问跌派网！&nbsp;&nbsp;<a href="">[我的碟派]</a>&nbsp;&nbsp;&nbsp;<a href="">[我的订单]</a></div>
        <div class="login_r"><a href="">登录</a>丨<a href="zhuce.html">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/admin/close.png" alt="">&nbsp;<a href="#">退出</a></div>
    </div>
</div>
<div id="navgin">
    <div class="navgin_left">
        <div><img src="images/index/logo.png" alt=""></div>
        <div><img src="images/index/fenlei.png" alt=""><a href="#">商品分类</a></div>
    </div>
    <div class="navgin_right">
        <div class="search">
        <input type="text" value="海贼王之黄金城" onfocus="value=''" ><input type="button" value="搜 索">
            <p><a href="#">张惠妹&nbsp;&nbsp;</a><a href="#">梁静茹&nbsp;&nbsp;</a><a href="#">乐活超级票&nbsp;&nbsp;</a><a href="#">朴树&nbsp;&nbsp;</a><a href="#">画江湖之不良人&nbsp;&nbsp;</a><a href="">李尔王&nbsp;&nbsp;</a></p>
        </div>
       <div class="nav">
           <a href="index.html">首页</a>
           <a href="ticketShowInfo">实时定票</a>
           <a href="myshopping.html">我的定单</a>
           <a href="VIPmessage.html">会员信息</a>
           <a href="chongzhi.html">账户充值</a>
           <a href="perchaseShow"><img src="images/index/shop_cart.png" alt="">购物车</a>
       </div>
    </div>
</div>
<div id="adv">
    <div>
        <a href="index.html">碟派网</a><span>&nbsp;>&nbsp;</span><a href="">实时订票</a>
    </div>
</div>
<div id="shopping">
    <form action="ticketShowInfo" method="post">
    <div class="data">
    	
        <span>请选择起始日期（查询7天以内票项）：</span>
        
        	<input id="start" name="startTime" 
            value=""  
            onclick="jeDate({dateCell:'#start',isTime:true,format:'YYYY-MM-DD'})"  readonly><input type="submit" value="查&nbsp;询">
       
    </div>
    </form>
</div>
<div class="content">
    <ul>
    <c:forEach items="${tickets }" var="ticket">
    	<li>
            <div class="content_left">
                <img src="${basePath}images/other/orders/movie1.png" alt="">
            </div>

            <div class="content_right">
                <h2>${ticket.descs }</h2>
                <br>
                <span>预售/预定</span><span id="color_red">售票中</span><span>已停售</span>
                <br>
                <div class="content_right_img">
                    <img src="${basePath}images/other/orders/icon2.png" alt=""><div class="line_red line_rht"></div><img src="${basePath}images/other/orders/icon1.png" alt=""><div class="line_hui line_cnt"></div><img src="${basePath}images/other/orders/icon3.png" alt=""><div class="line_hui line_lft"></div>
                </div>
                <div class="palytime">
                    <h3>上映时间：${ticket.startTime }</h3>
                </div>
                <div class="price">
                    <span id="price_size">${ticket.price }</span><span class="price_color">元</span><span>/张</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span>共${ticket.amount }张</span>
                </div>
                <div class="some">
                    <input type="text" name="buyNums" id="${ticket.tid }buyNums" value="">
                    <input type="button" value="加购物车" onclick="perchase(${ticket.tid},${ticket.price },${ticket.amount },'${ticket.descs }')"/>
                </div>
                <div class="save">
                    库存${ticket.balance }张
                </div>
            </div>
        </li>
    </c:forEach>
    </ul>
</div>
<div id="footer">
    <div class="order">
        <ul class="ul1">
            <li><a href="">订购方式</a></li>
            <li><a href="">在线订购</a></li>
            <li><a href="">电话订购</a></li>
            <li><a href="">上门订购</a></li>
            <li><a href="">大客户团体订购</a></li>
            <li><a href="">碟派超级票订购</a></li>
        </ul>
        <ul class="ul1">
            <li><a href="">配送方式</a></li>
            <li><a href="">送货上门</a></li>
            <li><a href="">电子票</a></li>
            <li><a href="">上门自取</a></li>
            <li><a href="">碟派自助机换票</a></li>
        </ul>
        <ul class="ul1">
            <li><a href="">支付方式</a></li>
            <li><a href="">在线支付</a></li>
            <li><a href="">柜台付款</a></li>
        </ul>
        <ul class="ul1">
            <li><a href="">碟派网微信</a></li>
            <li><img src="images/index/qr_%20code1.png" alt=""></li>
        </ul>
        <ul class="ul1">
            <li><a href="">碟派网触屏版</a></li>
            <li><img src="images/index/qr_%20code2.png" alt=""></li>
        </ul>
        <ul class="ul1">
            <li><a href="">账户安全</a></li>
            <li><a href="">找回密码</a></li>
            <li><a href="">账户注册</a></li>
            <li><a href="">账户绑定</a></li>
            <li><a href="">SSL安全证书</a></li>
        </ul>
        <ul class="ul1">
            <li><a href="">售后服务</a></li>
            <li><a href="">退换及缺货说明</a></li>
            <li><a href="">发票帮助</a></li>
            <li><a href="">订票服务条款</a></li>
        </ul>
        <ul class="ul2">
            <li><a href="">特色服务</a></li>
            <li><a href="">超级票</a></li>
            <li><a href="">积分商城</a></li>
            <li><a href="">票务系统</a></li>
            <li><a href="">场馆库</a></li>
            <li><a href="">演出订阅</a></li>
        </ul>
    </div>
    <div class="act">
        <ul>
            <li>公司介绍</li>
            <li>品牌识别</li>
            <li>企业荣誉</li>
            <li>联系方式</li>
            <li>隐私声明</li>
            <li>合作招商</li>
            <li>招聘信息</li>
            <li>网站地图</li>
            <li class="border_n">友情链接</li>
        </ul>
    </div>
    <div class="copy">
        <br>
        <p>版权所有&nbsp;大麦网&nbsp;Copyright&nbsp;2003-2016&nbsp;All&nbsp;Rights&nbsp;Reseverved</p>
    </div>
</div>
<script type="text/javascript" src="js/jedate.js"></script>
<script>
	function perchase(tid,price,amount,descs){
		var id = tid+"buyNums";
		var buyNums = document.getElementById(id).value;
		alert(buyNums);
		$.ajax({
			type : "post",
			async: "true",
			url : "perchase",
			data:{"tid":tid,"buyNums":buyNums,"price":price,"amount":amount,"descs":descs},
			dataType:"json",
			success: function(data){
				alert("购物车添加:"+data.result);
			}
		});
	
	}
	
</script>
</body>
</html>