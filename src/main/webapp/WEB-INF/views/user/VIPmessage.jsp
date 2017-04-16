<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
	

<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>个人主页</title>
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/VIPmessage.css">
    <style>

    </style>
</head>


<script type="text/javascript" src="js/jquery-3.1.0.js" ></script>

<script>
	function modifyPassword(uid) {
		
		newpassword = document.getElementById("newpassword").value;
		repassword = document.getElementById("repassword").value;
		if (!(newpassword==repassword)) {
			alert("前后输入的密码不一致，请确认后再填");
		}
		$.ajax({
			type : "post",
			async: "true",
			url : "modifyUserPassword",
			data:{"uid":uid,"newpassword":newpassword},
			dataType:"json",
			success: function(data){
				alert("密码修改:"+data.result);
			}
		});
		
	}
	
</script>




<body>
<div id="login">
    <div>
        <div>Hi 欢迎访问跌派网！&nbsp;&nbsp;<a href="userModify">[我的碟派]</a>&nbsp;&nbsp;&nbsp;<a href="">[我的订单]</a></div>
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
           <a href="index.jsp">首页</a>
           <a href="ticketShowInfo">实时定票</a>
           <a href="myshopping.html">我的定单</a>
           <a href="userModify">会员信息</a>
           <a href="TopUpAccount">账户充值</a>
           <a href="gouwuche.html"><img src="images/index/shop_cart.png" alt="">购物车</a>
       </div>
    </div>
</div>
<div id="adv">
    <div>
        <a href="index.html">碟派网</a><span>&nbsp;>&nbsp;</span><a href="">会员信息</a>
    </div>
</div>
<div id="content">
    <div class="idmessage">
        <div class="id_left">
            <div class="pic">
                <img src="images/other/head_portrait.png" alt="">
                <div class="adminm">
                    <p>用户名：${user.userName }</p>
                    <p>账户余额：${user.balance } 元</p>
                    <p>积分：<span>0</span></p>
                    <div><input type="button" value="充&nbsp;&nbsp;值"><input type="button" value="修改密码"></div>
                </div>
            </div>
            <div class="passwd">
            	
                <table >
                    <tr align="right">
                        <td>密&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;码&nbsp;:&nbsp;</td>
                        <td class="inpt">&nbsp;<input type="text" id="newpassword" name="newpassword"></td>
                    </tr>
                    <tr align="right">
                        <td height="60">确认密码&nbsp;:&nbsp;</td>
                        <td class="inpt">&nbsp;<input type="text" id="repassword" name="repassword"></td>
                    </tr>
                    <tr>
                        <td height="40" class="bt" colspan="2" align="center">
                        	<input class="input1" type="button" value="确&nbsp;认" onclick="modifyPassword(${user.uid})">
                        </td>
                    </tr>
                </table>
            </div>
        </div>
        <div class="id-hr"></div>
        <div class="id_right">
        	<form action="modifyUser" method="post">
            <table>
                <tr>
                    <td align="right">真实姓名&nbsp;:&nbsp;</td>
                    <td class="inpt">&nbsp;<input type="text" id="name" name="name"></td>
                </tr>
                <tr valign="bottom">
                    <td height="33" align="right">性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别&nbsp;:&nbsp;</td>
                    <td>&nbsp;<input type="radio" name="sex" id="boy">&nbsp;<label for="boy">男</label>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="radio" name="sex" id="girl">&nbsp;<label
                            for="girl">女</label></td>
                </tr>
                <tr>
                    <td height="50" align="right">身份证号&nbsp;:&nbsp;</td>
                    <td class="inpt">&nbsp;<input type="text" id="idCard" name="idCard"></td>
                </tr>
                <tr>
                    <td height="30" align="right">年&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;龄&nbsp;:&nbsp;</td>
                    <td class="inpt">&nbsp;<input type="text" id="age" name="age"></td>
                </tr>
                <tr>
                    <td height="50" align="right">通讯地址&nbsp;:&nbsp;</td>
                    <td class="inpt">&nbsp;<input type="text" id="address" name="address"></td>
                </tr>
                <tr>
                    <td height="50" align="right">联系电话&nbsp;:&nbsp;</td>
                    <td class="inpt">&nbsp;<input type="text" id="telno" name="telno"></td>
                </tr>
            </table>
            
            <div class="btndiv">
                <input type="submit" class="input1 input2" value="修&nbsp;改" />
                <input type="reset" class="input1 input3" value="重&nbsp;置"/>
            </div>
            </form>
        </div>
    </div>
    <div class="look_dd">
        <div>近期订单</div><div><a href="">查看所有订单&nbsp;>></a></div>
        <div class="tabs">
            <table class="table2" border="0" cellpadding="0" cellspacing="0">
                <tr bgcolor="#F5F5F5" class="trs2">
                    <th width="150" height="36">序&nbsp;&nbsp;号</th>
                    <th width="150">描述</th>
                    <th width="300">订单号</th>
                    <th width="36">单价</th>
                    <th width="265">购票张数</th>
                    <th width="58">金额(元)</th>
                    <th width="260">生成时间</th>
                </tr>
                <tr class="trs2">
                    <td height="40">1</td>
                    <td>《总有刁民想害朕》</td>
                    <td>2389403840003</td>
                    <td>50元</td>
                    <td>6</td>
                    <td>300</td>
                    <td>2017-01-17</td>

                </tr>
                <tr class="trs2">
                    <td height="40">2</td>
                    <td>《28岁未成年》</td>
                    <td>2389403840004</td>
                    <td>90元</td>
                    <td>4</td>
                    <td>360</td>
                    <td>2017-01-16</td>
                </tr>
                </table>
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
</html>