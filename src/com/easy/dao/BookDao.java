package com.easy.dao;

import java.util.List;

import com.easy.model.Book;

public interface BookDao {

	int add(Book book);//���
	int update(Book book);//����
	int delete(int id);//ɾ��
	List<Book> selectAll();//ȫ��ѯ
	Book selectById(int id);//����id��ѯ
	List<Book> selectByName(String name);//ģ����ѯ
}
