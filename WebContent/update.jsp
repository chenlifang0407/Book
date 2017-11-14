<%@page import="com.easy.model.Book"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%Book book = (Book)request.getAttribute("book"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
			<h1>更新书籍</h1>
				<form action="BookServlet" method="post">
					编号：<input type="text" name="id" value="<%=book.getId()%>">
					书名：<input type="text" name="name" value="<%=book.getName() %>">
					作者：<input type="text" name="author" value="<%=book.getAuthor() %>">
					出版社：<input type="text" name="publish" value="<%=book.getPublish() %>">
					出版时间：<input type="text" name="publishtime" value="<%=book.getPublishtime() %>">
					价格：<input type="text" name="price" value="<%=book.getPrice() %>">	
					<input type="submit" value="提交">
					<input type="hidden" name="flag" value="update">
				</form>
</body>
</html>