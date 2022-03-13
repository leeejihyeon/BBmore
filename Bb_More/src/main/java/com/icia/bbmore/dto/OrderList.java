package com.icia.bbmore.dto;

import java.sql.Timestamp;

// 주문 테이블 대분류
public class OrderList {
	private long orderList_no;			// orderlist 고유키
	private long u_no;					// user 고유키
	private int ordergoods_totCount;	// 주문한 상품 총 개수
	private int ordergoods_totPrice;	// 주문한 상품 총 가격
	private String order_regDt;		// 결제 날짜

	
	
	public long getOrderList_no() {
		return orderList_no;
	}
	public void setOrderList_no(long orderList_no) {
		this.orderList_no = orderList_no;
	}
	public long getU_no() {
		return u_no;
	}
	public void setU_no(long u_no) {
		this.u_no = u_no;
	}
	public int getOrdergoods_totCount() {
		return ordergoods_totCount;
	}
	public void setOrdergoods_totCount(int ordergoods_totCount) {
		this.ordergoods_totCount = ordergoods_totCount;
	}
	public int getOrdergoods_totPrice() {
		return ordergoods_totPrice;
	}
	public void setOrdergoods_totPrice(int ordergoods_totPrice) {
		this.ordergoods_totPrice = ordergoods_totPrice;
	}
	public String getOrder_regDt() {
		return order_regDt;
	}
	public void setOrder_regDt(String order_regDt) {
		this.order_regDt = order_regDt;
	}
	
	
	
	@Override
	public String toString() {
		return "OrderList [orderList_no=" + orderList_no + ", u_no=" + u_no + ", ordergoods_totCount="
				+ ordergoods_totCount + ", ordergoods_totPrice=" + ordergoods_totPrice + ", order_regDt=" + order_regDt + "]";
	}
	
	

	

	

	
	
	
	
}////////////////// OrderList
