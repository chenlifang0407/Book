<%@page import="com.easy.model.Book"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%  
    @SuppressWarnings("unchecked")	
    List<Book> list = (List<Book>)request.getAttribute("list"); %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>首页</title>

</head>
<body>
			<div class="header">
			<h1 style="color: #FF7F00">欢迎进入图书管理系统</h1>
			
			<form action="BookServlet" method="post">
				书名:<input type="text" name="name">
				<input type="hidden" name="flag" value="selectByName">
				<input type="submit" value="查  询">
			</form>
			</div>
			共计-<%=list.size() %>-本书
			<br>
			<a href="add.jsp">添加图书</a>
			
			<table border="1px" cellspacing="0px">
				<tr>
					<td>编号</td>
					<td>书名</td>
					<td>作者</td>
					<td>出版社</td>
					<td>出版时间</td>
					<td>价格</td>
					<td>操作</td>
				</tr>
				<%for(Book book : list){ %>
				<tr>
					<td><%=book.getId() %></td>
					<td><%=book.getName() %></td>
					<td><%=book.getAuthor() %></td>
					<td><%=book.getPublish() %></td>
					<td><%=book.getPublishtime() %></td>
					<td><%=book.getPrice() %></td>
					<td>
						<a href="BookServlet?flag=selectById&id=<%=book.getId()%>">更新</a>
						<a href="BookServlet?flag=delete&id=<%=book.getId()%>">删除</a>
					</td>
				</tr>
			<%} %>
			
			
			
			
			</table>
</body>
</html>