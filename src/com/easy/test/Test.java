package com.easy.test;

import java.util.List;

import com.easy.dao.BookDao;
import com.easy.daoImpl.BookDaoImpl;
import com.easy.model.Book;

public class Test {

	public static void main(String[] args) {
		BookDao bookDao = new BookDaoImpl();
		Book book = new Book(1004, "С��", "bb", "dalian", "1999-2-2", 5);
		//int a = bookDao.add(book);
		List<Book> list = bookDao.selectByName("С");
		System.out.println(list);
	}
}
