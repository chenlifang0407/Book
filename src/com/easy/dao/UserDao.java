package com.easy.dao;

import com.easy.model.Book;

public interface UserDao {

	//��ѯ����
	Book select(String username,String password);
}
