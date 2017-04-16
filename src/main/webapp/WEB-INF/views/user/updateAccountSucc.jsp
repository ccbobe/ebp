<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Title</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/chongzhisucceed.css">

</head>
<body>
<div id="login">
    <div>
        <div>Hi 欢迎访问跌派网！&nbsp;&nbsp;<a href="">[我的碟派]</a>&nbsp;&nbsp;&nbsp;<a href="">[我的订单]</a></div>
        <div class="login_r"><a href="login.html">登录</a>丨<a href="zhuce.html">注册</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="images/admin/close.png" alt="">&nbsp;<a href="#">退出</a></div>
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
           <a href="ticket.html">实时定票</a>
           <a href="myshopping.html">我的定单</a>
           <a href="userModify">会员信息</a>
           <a href="TopUpAccount">账户充值</a>
           <a href="gouwuche.html"><img src="images/index/shop_cart.png" alt="">购物车</a>
       </div>
    </div>
</div>
<div id="adv">
    <div>
        <a href="index.html">碟派网</a><span>&nbsp;>&nbsp;</span><a href="TopUpAccount">账户充值<span>&nbsp;>&nbsp;</span></a>充值成功
    </div>
</div>
<div id="content">
    <div class="look_dd">
        <div>充值成功！</div>
        <div id="tbss">
            <a href="chongzhi.html" id="block" class="input1">返回</a>
        </div>
    </div>
    <div class="chongzhi">
        <h3>本次充值信息如下&nbsp;:&nbsp;</h3>
        <div class="msg">
            <img src="images/other/chongzhi.jpg" >
            <ul class="ul2">
                <li>用&nbsp;&nbsp;户&nbsp;&nbsp;名&nbsp;:&nbsp;<span>${user.userName }</span></li>
                <li>充值方式&nbsp;:&nbsp;<span></span></li>
                <li>充值金额&nbsp;:&nbsp;<span>${user.balance }</span></li>
                <li>账户余额&nbsp;:&nbsp;<span>${plus }元</span></li>
                <li><input type="button" class="input1" value="打印账单">
                </li>
            </ul>

        </div>

    </div>
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
</body>
<script src="js/chongzhi.js"></script>
</html>
