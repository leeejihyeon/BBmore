package com.icia.bbmore.dto;

public class CartGoods {
	private long cart_gno;		// cart 고유키
	private long c_no;			// category 고유키
	private long g_no;			// goods 고유키
	private String g_name;		// 상품 이름
	private int g_price;		// 상품 가격
	
	
	
	
	public long getCart_gno() {
		return cart_gno;
	}
	public void setCart_gno(long cart_gno) {
		this.cart_gno = cart_gno;
	}
	public long getC_no() {
		return c_no;
	}
	public void setC_no(long c_no) {
		this.c_no = c_no;
	}
	public long getG_no() {
		return g_no;
	}
	public void setG_no(long g_no) {
		this.g_no = g_no;
	}
	public String getG_name() {
		return g_name;
	}
	public void setG_name(String g_name) {
		this.g_name = g_name;
	}
	public int getG_price() {
		return g_price;
	}
	public void setG_price(int g_price) {
		this.g_price = g_price;
	}
	
	
	@Override
	public String toString() {
		return "CartGoods [cart_gno=" + cart_gno + ", c_no=" + c_no + ", g_no=" + g_no + ", g_name=" + g_name
				+ ", g_price=" + g_price + "]";
	}
	

	
}//////////////////// CartGoods
