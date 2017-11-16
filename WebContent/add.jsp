<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>添加页面</title>
<style type="text/css">
body{
				font-family:"微软雅黑";
				color:white;
				font-size: 20px;
				background-image: url("img/5.jpg");
				background-repeat:repeat-x repeat-y;
				background-size:cover;
			
				}
		div{
				display: block;
			}
		.h1{
			text-align: center;
			color: #FF7F00;
		
		}
		form{
			text-align: center;
		}
		.submit{
			width:100px;
			height: 30px;
			color: #FF7F00;
			background-color: #c0c0c0;
		}



</style>
</head>
<body>
				<h1 class="h1">添加新书籍</h1>
				<div class="form">
				<form action="BookServlet" method="post">
					编&nbsp;&nbsp;&nbsp;号&nbsp;&nbsp;&nbsp;：<input type="text" name="id">
					<br><br>
					书&nbsp;&nbsp;&nbsp;名&nbsp;&nbsp;&nbsp;：<input type="text" name="name">
					<br><br>
					作&nbsp;&nbsp;&nbsp;者&nbsp;&nbsp;&nbsp;：<input type="text" name="author">
					<br><br>
					出&nbsp;版&nbsp;社&nbsp;：<input type="text" name="publish">
					<br><br>
					出版时间：<input type="text" name="publishtime">
					<br><br>
					价&nbsp;&nbsp;&nbsp;格&nbsp;&nbsp;&nbsp;：<input type="text" name="price">	
					<br><br>
					<input type="submit" value="提&nbsp;&nbsp;交" class="submit">
					<input type="hidden" name="flag" value="add">
				</form>
				</div>
				
</body>
</html>