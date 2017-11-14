<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
				<h1>添加页面</h1>
				<form action="BookServlet" method="post">
					编号：<input type="text" name="id">
					书名：<input type="text" name="name">
					作者：<input type="text" name="author">
					出版社：<input type="text" name="publish">
					出版时间：<input type="text" name="publishtime">
					价格：<input type="text" name="price">	
					<input type="submit" value="提交">
					<input type="hidden" name="flag" value="add">
				</form>
				
				
</body>
</html>