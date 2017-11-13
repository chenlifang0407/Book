package com.easy.model;

public class Book {

	private int id;//编号
	private String name;//书名
	private String author;//作者
	private String publish;//出版社
	private String publishtime;//出版日期
	private int price;//价格
	public Book() {
		super();
		// TODO Auto-generated constructor stub
	}
	public Book(int id, String name, String author, String publish,
			String publishtime, int price) {
		super();
		this.id = id;
		this.name = name;
		this.author = author;
		this.publish = publish;
		this.publishtime = publishtime;
		this.price = price;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public String getPublish() {
		return publish;
	}
	public void setPublish(String publish) {
		this.publish = publish;
	}
	public String getPublishtime() {
		return publishtime;
	}
	public void setPublishtime(String publishtime) {
		this.publishtime = publishtime;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	@Override
	public String toString() {
		return "Book [id=" + id + ", name=" + name + ", author=" + author
				+ ", publish=" + publish + ", publishtime=" + publishtime
				+ ", price=" + price + "]";
	}
	
}
