<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>图书管理系统</title>
<style type="text/css">
			body{
				font-family:"微软雅黑";
				font-size: 12px;
			}
			div{
				display: block;
			}
			.header{
				height: 62px;
				border-bottom: 1px solid #d6dfea;
				background:#eff4fa;
				overflow: hidden;
				display: block;
				
				
			}
			.a{
				color:#1d5494;
				float: left;
				width: 182px;
				height: 35px;
				margin-top: 14px;
				margin-left: 17px;
				
				background-size: 182px 35px;
				background-position: left center;
				background-repeat: no-repeat;
				text-decoration: none;
				text-indent:  -9999em;
			}
			.header-link{
				overflow:hidden;
				text-align: right;
				margin-top: 16px;
				padding-right: 17px;
				line-height: 30px;
				color: #b6b6b6;
			}
			.header-link a{
				color: #1d5494;
				text-decoration: none;
			}
			.content{
				width: 960px;
				margin: 32px auto;
				padding: 0px 24px;
			}
			.content_wrapper{
				min-height: 372px;
				padding-top: 40px;
				margin: 0px 20px 60px 25px;
			}
			.login_pictures{
			background-image: url(img/1.jpg);
				position: relative;
				margin-right: 10px;
			}
			.login_container{
				width: 334px;
				height: 387px;
				visibility: visible;
				float: right;
				border: 1px solid #a0b1c4;
				background-color: #fff;
				position: relative;
				padding: 0px;
				border-radius: 5px;
				overflow: hidden;
				z-index: 12;
				
			}
			.login_pictures_picture{
				position: absolute;
				left: 50px;
				right: 0px;
				top: 0px;
				height: 400px;
				
				background-repeat: no-repeat;
				background-position: right 10px; 
			}
			.footer{
				position: static;
				left: 0px;
				right: 0px;
				bottom: 0px;
				line-height: 36px;
				text-align: center;
				color: #B6B6B6;
				background-color: #EFF4FA;
				border-top: 1px solid #D6DFEA;
			}
			.footer a{
				color: #1d5494;
				text-decoration: none;
			}
			.footer span{
				color: #868686;
			}
			#l1{
				color: #868686;
				text-align: center;
				font-size: 15px;	
				padding-top: 15px;	
				padding-bottom: 15px;
				border-bottom: 1px solid #a0b1c4;
				background-color: #eff4fa;		
			}
			#ll2{
				color: #363636;
				padding-left: 35px;
				font-size: 15px;
			}
			#l2{
				margin-top: 40px;
				margin-left: 27px;
				
			}
			#l3{
				margin-top: 15px;
				margin-left: 27px;
			}
			#l4{
				margin-left: 30px;
				margin-top: 40px;
			}
			#l5{
				text-align: right;
				margin-top: 60px;
				margin-right: 20px;
				
			}
			#l5 a{
				text-decoration: none;
				color: #1d5494;
			}
</style>
</head>
<body>
			
			
	<div class="header">
			<a href="#" class="a">图片</a>
				<h1>好 东 软 图 书 管 理 系 统</h1>
			
		</div>
		
	<div class="content">
				<div class="content_wrapper">
					<div class="login_pictures">
						<div class="login_pictures_picture">
							
						</div>
					</div>
					<div class="login_container" id="login">
						<div id="l1">
							<span id="ll1">快速登录</span>
							<span id="ll2">账号密码登录</span>
						
							
						</div>
						<div id="l2">
							<input type="text" name="" id="" value="   支持QQ号/邮箱/手机号登录" style="width: 280px ; height: 30px; color: #868686; font: '微软雅黑';"/>
						</div>
						<div id="l3">
							<input type="text" name="" id="" value="   QQ密码" style="width: 280px ; height: 30px; color: #868686;font: '微软雅黑'"/>
						</div>
						<div id="l4">
							<input type="checkbox" name="" id="" value="" />下次自动登录
							<br />
							<br />
						<form action="BookServlet" method="get">
							<input type="hidden" name="flag" value="selectAll">
							<input type="submit" name="" id="" value="登        录" style="color: white; background-color: #5a98de; width: 280px ; height: 35px;"/>
						</form>
						</div>
						<div id="l5">
							<a href="#">忘了密码？</a>&nbsp;
							|&nbsp;
							<a href="#">注册新账号</a>&nbsp;
							|&nbsp;
							<a href="#">意见反馈</a>&nbsp;&nbsp;
							
							
						</div>
					</div>
				</div>
			</div>
		
	<div class="footer">
			<a href="#">关于系统</a>&nbsp;
			|&nbsp;
			<a href="#">服务条款</a>&nbsp;
			|&nbsp;
			<a href="#">客服中心</a>&nbsp;
			|&nbsp;
			<a href="#">联系我们</a>&nbsp;
			|&nbsp;
			<a href="#">帮助中心</a>&nbsp;
			<span>@1998-2017 Tencent Inc.All Rights Reserved.</span>
			
		</div>
			
</body>
</html>