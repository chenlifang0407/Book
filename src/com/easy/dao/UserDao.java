package com.easy.dao;

import com.easy.model.Book;

public interface UserDao {

	//≤È—Ø∑Ω∑®
	Book select(String username,String password);
}
