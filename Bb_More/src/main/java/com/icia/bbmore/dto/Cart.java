package com.icia.bbmore.dto;

public class Cart {

	private long cart_no;	// cart 고유키
	private long u_no;		// user 고유키
	
	
	
	public long getCart_no() {
		return cart_no;
	}
	public void setCart_no(long cart_no) {
		this.cart_no = cart_no;
	}
	public long getU_no() {
		return u_no;
	}
	public void setU_no(long u_no) {
		this.u_no = u_no;
	}
	
	
	
	
	@Override
	public String toString() {
		return "Cart [cart_no=" + cart_no + ", u_no=" + u_no + "]";
	}
	

}////////////////////// Cart
