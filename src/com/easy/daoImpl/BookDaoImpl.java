package com.easy.daoImpl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.easy.dao.BookDao;
import com.easy.dao.JDBCTools;
import com.easy.model.Book;

public class BookDaoImpl implements BookDao{

	Connection conn = null;
	PreparedStatement pstm = null;
	ResultSet rs = null;
	
	@Override
	public int add(Book book) {
		conn = JDBCTools.getConnection();
		String sql = "insert into book1 values(?,?,?,?,to_date(?,'yyyy-mm-dd'),?)";
		int a = 0;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, book.getId());
			pstm.setString(2, book.getName());
			pstm.setString(3, book.getAuthor());
			pstm.setString(4, book.getPublish());
			pstm.setString(5, book.getPublishtime());
			pstm.setInt(6, book.getPrice());
			a = pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCTools.closeAll(rs, pstm, conn);
		}
		return a;
	}

	@Override
	public int update(Book book) {
		conn = JDBCTools.getConnection();
		String sql = "update book1 set name = ?,author = ?,publish = ?,publishtime = to_date(?,'yyyy-mm-dd'),price = ? where id = ?";
		int a = 0;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, book.getName());
			pstm.setString(2, book.getAuthor());
			pstm.setString(3, book.getPublish());
			pstm.setString(4, book.getPublishtime());
			pstm.setInt(5, book.getPrice());
			pstm.setInt(6, book.getId());
			a = pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCTools.closeAll(rs, pstm, conn);
		}
		
		return a;
	}

	@Override
	public int delete(int id) {
		conn = JDBCTools.getConnection();
		String sql = "delete from book1 where id = ?";
		int a = 0;
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			a = pstm.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCTools.closeAll(rs, pstm, conn);
		}
		return a;
	}

	@Override
	public List<Book> selectAll() {
		conn = JDBCTools.getConnection();
		String sql = "select id,name,author,publish,to_char(publishtime,'yyyy-mm-dd') publishtime,price from book1";
		List<Book> list = new ArrayList<>();
		try {
			pstm = conn.prepareStatement(sql);
			rs = pstm.executeQuery();
			while (rs.next()) {
				Book book = new Book();
				book.setId(rs.getInt("id"));
				book.setName(rs.getString("name"));
				book.setAuthor(rs.getString("author"));
				book.setPublish(rs.getString("publish"));
				book.setPublishtime(rs.getString("publishtime"));
				book.setPrice(rs.getInt("price"));
				list.add(book);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCTools.closeAll(rs, pstm, conn);
		}
		
		return list;
	}

	@Override
	public Book selectById(int id) {
		conn = JDBCTools.getConnection();
		String sql = "select id,name,author,publish,to_char(publishtime,'yyyy-mm-dd') publishtime,price from book1 where id = ?";
		Book book = new Book();
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setInt(1, id);
			rs = pstm.executeQuery();
			if (rs.next()) {
				book.setId(rs.getInt("id"));
				book.setName(rs.getString("name"));
				book.setAuthor(rs.getString("author"));
				book.setPublish(rs.getString("publish"));
				book.setPublishtime(rs.getString("publishtime"));
				book.setPrice(rs.getInt("price"));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCTools.closeAll(rs, pstm, conn);
		}
		return book;
	}

	@Override
	public List<Book> selectByName(String name) {
		conn = JDBCTools.getConnection();
		String sql = "select id,name,author,publish,to_char(publishtime,'yyyy-mm-dd') publishtime,price from book1 where name like ?";
		List<Book> list = new ArrayList<>();
		try {
			pstm = conn.prepareStatement(sql);
			pstm.setString(1, "%"+name+"%");
			rs = pstm.executeQuery();
			while (rs.next()) {
				Book book = new Book();
				book.setId(rs.getInt("id"));
				book.setName(rs.getString("name"));
				book.setAuthor(rs.getString("author"));
				book.setPublish(rs.getString("publish"));
				book.setPublishtime(rs.getString("publishtime"));
				book.setPrice(rs.getInt("price"));
				list.add(book);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally{
			JDBCTools.closeAll(rs, pstm, conn);
		}
		return list;
	}

}
