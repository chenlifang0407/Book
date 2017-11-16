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
<style type="text/css">
		body{
				font-family:"微软雅黑";
				font-size: 20px;
				background-image: url("img/4.jpg");
				background-repeat:repeat-x repeat-y;
				background-size:cover;
			
				}
		div{
				display: block;
			}
			
		.header{
			margin-top: 50px;
			text-align:center;
			position: relative;
			
		}
		.header_select{
			color: #FF7F00;
			text-align: center;
		}
		.a span{
			color: #FF7F00;
			font-size: 18px;
		}
		.a{
			padding-left:450px;
		}
		a:link{
			color: #FFD700;
			text-decoration: none;
		}
		a:visited{
				color: #FFD700;
				text-decoration: none;
			}
		
		.table{
		
			padding-left:300px;
			color: white;
		
		}
		
		a:hover{
				color: red;
				text-decoration: underline ;
			}
		a:active{
				color: orange;
				text-decoration: none;
			}




</style>
</head>
<body>
			
			<div class="header">
			<h1 style="color: #FF7F00">欢迎进入图书管理系统</h1>
			</div>
			<div class="header_select">
			<form action="BookServlet" method="post">
				书&nbsp;&nbsp;名&nbsp;&nbsp;:&nbsp;&nbsp;<input type="text" name="name">
				<input type="hidden" name="flag" value="selectByName">
				&nbsp;&nbsp;&nbsp;
				<input type="submit" value="查  询" style="width: 60px; height: 23px;background-color:#FF7F00;; font-family: 微软雅黑; ">
			</form>
			</div>
			<br>
		
			
			<div class="a">
			<a href="add.jsp" id="aa">添加图书</a>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<span>	共计-<%=list.size() %>-本书</span>
			</div>
			
			<div class="table">
			<table border="0px" cellspacing="15px">
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
			</div>
</body>
</html>