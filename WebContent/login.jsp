<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
			body{
				font-family:"微软雅黑";
				font-size: 15px;
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
			
				<form action="BookServlet" method="get">
				<input type="hidden" name="flag" value="selectAll">
					<input type="submit" value="进入北方图书城管理系统" style="color: white; background-color: #5a98de; width: 280px ; height: 35px; size: 20px">
				</form>
				
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
							<input type="button" name="" id="" value="登  录" style="color: white; background-color: #5a98de; width: 280px ; height: 35px;"/>
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
</body>
</html>