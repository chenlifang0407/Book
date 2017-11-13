package com.easy.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.easy.dao.BookDao;
import com.easy.daoImpl.BookDaoImpl;
import com.easy.model.Book;


public class BookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public BookServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String flag = request.getParameter("flag");
		if (flag.equals("selectAll")) {
			selectAll(request,response);
		}else if (flag.equals("delete")) {
			delete(request,response);
		}else if (flag.equals("selectById")) {
			selectById(request,response);
		}
	}

	
	private void selectById(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		BookDao bookDao = new BookDaoImpl();
		Book book = bookDao.selectById(Integer.parseInt(id));
		request.setAttribute("book", book);
		request.getRequestDispatcher("update.jsp").forward(request, response);
		
	}


	private void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		BookDao bookDao = new BookDaoImpl();
		bookDao.delete(Integer.parseInt(id));
		selectAll(request, response);
		
	}


	private void selectAll(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		BookDao bookDao = new BookDaoImpl();
		List<Book> list = bookDao.selectAll();
		request.setAttribute("list", list);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String flag = request.getParameter("flag");
		if (flag.equals("selectByName")) {
			selectByName(request,response);
		}else if (flag.equals("add")) {
			add(request,response);
		}else if (flag.equals("update")) {
			update(request,response);
		}
	}


	private void update(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String author = request.getParameter("author");
		String publish = request.getParameter("publish");
		String publishtime = request.getParameter("publishtime");
		String price = request.getParameter("price");
		BookDao bookDao = new BookDaoImpl();
		Book book = new Book();
		book.setId(Integer.parseInt(id));
		book.setName(name);
		book.setAuthor(author);
		book.setPublish(publish);
		book.setPublishtime(publishtime);
		book.setPrice(Integer.parseInt(price));
		bookDao.update(book);
		selectAll(request, response);
	}


	private void add(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String author = request.getParameter("author");
		String publish = request.getParameter("publish");
		String publishtime = request.getParameter("publishtime");
		String price = request.getParameter("price");
		BookDao bookDao = new BookDaoImpl();
		Book book = new Book();
		book.setId(Integer.parseInt(id));
		book.setName(name);
		book.setAuthor(author);
		book.setPublish(publish);
		book.setPublishtime(publishtime);
		book.setPrice(Integer.parseInt(price));
		bookDao.add(book);
		selectAll(request, response);
		
	}


	private void selectByName(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		BookDao bookDao = new BookDaoImpl();
		List<Book> list = bookDao.selectByName(name);
		request.setAttribute("list", list);
		request.getRequestDispatcher("index.jsp").forward(request, response);
		
	}

}
