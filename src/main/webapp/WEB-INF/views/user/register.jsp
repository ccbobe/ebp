<%@ page language="java" import="java.util.*" pageEncoding="utf-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE html>
<html lang="en">
<head>
	
    <title>Register Page</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/zhuce.css">
    <script type="text/javascript">
    	function check() {
			var password = document.formReg.password.value;
    		var repassword = document.formReg.repassword.value;
    		if (!(password==repassword)) {
				alert("前后两次输入的密码不一致！请重新输入！");
			}
		}
    	

    	
    </script>
    <style>

    </style>
</head>
<body>
<div id="login">
    <div>
        <div>Hi 欢迎访问跌派网！&nbsp;&nbsp;<a href="">[我的碟派]</a>&nbsp;&nbsp;&nbsp;<a href="">[我的订单]</a></div>

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
            <a href="VIPmessage.html">会员信息</a>
            <a href="chongzhi.html">账户充值</a>
            <a href="gouwuche.html"><img src="images/index/shop_cart.png" alt="">购物车</a>
        </div>
    </div>
</div>
<div id="adv">
    <div>
        <a href="index.html">碟派网</a><span>&nbsp;>&nbsp;</span><a href="#">注册</a>
    </div>
</div>
<div id="content">
    <div style="margin: 0px auto; width: 600px;">
    	<p color='red'> ${errors }</p>
        <form name="formReg" action="userRegister" method="post" >
                <strong>您的电子邮箱不会被公布出来，但是必须填写.</strong><br>
                <span>在您注册之前请先认真阅读服务条款</span><br>
                <table class="tbs1" cellpadding="5">
                    <tr>
                        <td height="60" align="right">用&nbsp;户&nbsp;&nbsp;名:</td><td class="inpt"><input type="text" maxlength="30" name="userName" id="yhm" value="${param.userName }"> *&nbsp;&nbsp;(最多输入30个字符)</td>
                    </tr>
                    <tr>
                        <td height="60" align="right">电子邮箱:</td><td class="inpt"><input type="email" name="email" id="eml"> *</td>
                    </tr>
                    <tr>
                        <td height="60" align="right">手&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;机:</td><td class="inpt"><input type="tel" name="telno"  pattern="((13[0-9])|(15[0-11]|(18[0,5-9]))\d{8}$"> *</td>
                    </tr>
                    <tr>
                        <td height="60" align="right">密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码:</td><td class="inpt"><input type="password" name="password" id="password"> </td>
                    </tr>
                    <tr>
                        <td height="60" align="right">重复密码:</td><td class="inpt"><input type="password" id="repassword" name="repassword"> *</td>
                    </tr>
                    <tr>
                        <td height="60" colspan="2">同意服务条款<input type="checkbox" id="bixu" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;先看看条款？<span class="inpt">*</span></td>
                    </tr>
                </table>
                <div class="btnbox"><input class="input1" type="submit" value="提交" onclick="check()">&nbsp;
                <input class="input1" type="reset">
                </div><br>
                <strong>*在提交您的注册信息时，我们认为您已经同意了我们的服务条款.</strong><br>
                <strong>*这些条款可能在未经您同意的时候进行修改.</strong>
        </form>
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
</html>