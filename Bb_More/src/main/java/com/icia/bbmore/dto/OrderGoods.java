package com.icia.bbmore.dto;

// 주문 테이블 소분류
public class OrderGoods {
	private long ordergoods_no;		// orderGoods고유키
	private long orderList_no;		// orderList고유키
	private long g_no;				// goods고유키
	private String g_name;			// 상품 이름
	private int g_price;			// 상품 가격
	
	
	public long getOrdergoods_no() {
		return ordergoods_no;
	}
	public void setOrdergoods_no(long ordergoods_no) {
		this.ordergoods_no = ordergoods_no;
	}
	public long getOrderList_no() {
		return orderList_no;
	}
	public void setOrderList_no(long orderList_no) {
		this.orderList_no = orderList_no;
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
		return "OrderGoods [ordergoods_no=" + ordergoods_no + ", orderList_no=" + orderList_no + ", g_no=" + g_no
				+ ", g_name=" + g_name + ", g_price=" + g_price + "]";
	}
	


	
	

	
	
	
}////////////////////// OrderGoods
