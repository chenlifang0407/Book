package com.easy.dao;

import java.util.List;

import com.easy.model.Book;

public interface BookDao {

	int add(Book book);//添加
	int update(Book book);//更新
	int delete(int id);//删除
	List<Book> selectAll();//全查询
	Book selectById(int id);//按照id查询
	List<Book> selectByName(String name);//模糊查询
}
