package com.icia.bbmore.dto;

public class Category {

	private long c_no;		// 카테고리 고유키
	private String c_name;	// 카테고리 이름
	private String c_img;	// 카테고리 이미지
	
	
	public Category(){
		c_no = 0;
		c_name = "";
		c_img = "";
	}


	
	
	public long getC_no() {
		return c_no;
	}

	public void setC_no(long c_no) {
		this.c_no = c_no;
	}

	public String getC_name() {
		return c_name;
	}

	public void setC_name(String c_name) {
		this.c_name = c_name;
	}

	public String getC_img() {
		return c_img;
	}

	public void setC_img(String c_img) {
		this.c_img = c_img;
	}



	@Override
	public String toString() {
		return "Category [c_no=" + c_no + ", c_name=" + c_name + ", c_img=" + c_img + "]";
	}

	
	
	
}//////////////////Category
