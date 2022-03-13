package com.icia.bbmore.dto;

public class User {
	private Long u_no;				// 회원 번호
	private String u_id;			// 사용자 아이디
	private String u_pwd;			// 사용자 비밀번호
	private String u_email;			// 사용자 이메일
	private String u_name;			// 사용자 이름
	private String u_phone;			// 사용자 휴대폰번호
	private String u_address;		// 사용자 주소
	private String u_address_sub;	// 사용자 주소 세부사항
	private String u_enter_way;		// 출입방법
	private String u_way_detail;	// 출입방법 세부사항
	private String u_regDt;			// 회원가입 날짜
	private String u_pickupDate;	// 수거날짜
	private String u_pickupTime;	// 수거 시간
	private String u_deliveryDate; 	// 배송 날짜
	private String u_deliveryTime;	// 배송 시간
	
	public User() {
		
	}
	
	public Long getU_no() {
		return u_no;
	}
	public void setU_no(Long u_no) {
		this.u_no = u_no;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getU_pwd() {
		return u_pwd;
	}
	public void setU_pwd(String u_pwd) {
		this.u_pwd = u_pwd;
	}
	public String getU_email() {
		return u_email;
	}
	public void setU_email(String u_email) {
		this.u_email = u_email;
	}
	public String getU_name() {
		return u_name;
	}
	public void setU_name(String u_name) {
		this.u_name = u_name;
	}
	public String getU_phone() {
		return u_phone;
	}
	public void setU_phone(String u_phone) {
		this.u_phone = u_phone;
	}
	public String getU_address() {
		return u_address;
	}
	public void setU_address(String u_address) {
		this.u_address = u_address;
	}
	public String getU_address_sub() {
		return u_address_sub;
	}
	public void setU_address_sub(String u_address_sub) {
		this.u_address_sub = u_address_sub;
	}
	public String getU_enter_way() {
		return u_enter_way;
	}
	public void setU_enter_way(String u_enter_way) {
		this.u_enter_way = u_enter_way;
	}
	public String getU_way_detail() {
		return u_way_detail;
	}
	public void setU_way_detail(String u_way_detail) {
		this.u_way_detail = u_way_detail;
	}
	public String getU_regDt() {
		return u_regDt;
	}
	public void setU_regDt(String u_regDt) {
		this.u_regDt = u_regDt;
	}
	public String getU_pickupDate() {
		return u_pickupDate;
	}
	public void setU_pickupDate(String u_pickupDate) {
		this.u_pickupDate = u_pickupDate;
	}
	public String getU_pickupTime() {
		return u_pickupTime;
	}
	public void setU_pickupTime(String u_pickupTime) {
		this.u_pickupTime = u_pickupTime;
	}
	public String getU_deliveryDate() {
		return u_deliveryDate;
	}
	public void setU_deliveryDate(String u_deliveryDate) {
		this.u_deliveryDate = u_deliveryDate;
	}
	public String getU_deliveryTime() {
		return u_deliveryTime;
	}
	public void setU_deliveryTime(String u_deliveryTime) {
		this.u_deliveryTime = u_deliveryTime;
	}
	
	
	@Override
	public String toString() {
		return "User [u_no=" + u_no + ", u_id=" + u_id + ", u_pwd=" + u_pwd + ", u_email=" + u_email + ", u_name="
				+ u_name + ", u_phone=" + u_phone + ", u_address=" + u_address + ", u_address_sub=" + u_address_sub
				+ ", u_enter_way=" + u_enter_way + ", u_way_detail=" + u_way_detail + ", u_regDt=" + u_regDt
				+ ", u_pickupDate=" + u_pickupDate + ", u_pickupTime=" + u_pickupTime + ", u_deliveryDate="
				+ u_deliveryDate + ", u_deliveryTime=" + u_deliveryTime + "]";
	}
		
	
	

	
	
}


