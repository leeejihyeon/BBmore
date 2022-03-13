package com.icia.bbmore.dto;

import java.sql.Timestamp;


public class Board {
	private long b_no;				// board 고유키
	private String u_id;			// user 아이디
	private String b_title;			// 게시물 제목
	private String b_content;		// 게시물 내용
	private int b_hit;				// 게시물 조회수
	private String fileName;		// 사용자가 올린 파일이름
	private String fileRealName;	// 서버에 등록되는 파일 이름
	private Timestamp regDt;		// 게시물 등록 날짜
	private Timestamp modify_Dt;	// 게시물 수정 날짜

	
	public long getB_no() {
		return b_no;
	}
	public void setB_no(long b_no) {
		this.b_no = b_no;
	}
	public String getU_id() {
		return u_id;
	}
	public void setU_id(String u_id) {
		this.u_id = u_id;
	}
	public String getB_title() {
		return b_title;
	}
	public void setB_title(String b_title) {
		this.b_title = b_title;
	}
	public String getB_content() {
		return b_content;
	}
	public void setB_content(String b_content) {
		this.b_content = b_content;
	}
	public int getB_hit() {
		return b_hit;
	}
	public void setB_hit(int b_hit) {
		this.b_hit = b_hit;
	}
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	public String getFileRealName() {
		return fileRealName;
	}
	public void setFileRealName(String fileRealName) {
		this.fileRealName = fileRealName;
	}
	public Timestamp getRegDt() {
		return regDt;
	}
	public void setRegDt(Timestamp regDt) {
		this.regDt = regDt;
	}
	public Timestamp getModify_Dt() {
		return modify_Dt;
	}
	public void setModify_Dt(Timestamp modify_Dt) {
		this.modify_Dt = modify_Dt;
	}
	
	
	@Override
	public String toString() {
		return "Board [b_no=" + b_no + ", u_id=" + u_id + ", b_title=" + b_title + ", b_content=" + b_content
				+ ", b_hit=" + b_hit + ", fileName=" + fileName + ", fileRealName=" + fileRealName + ", regDt=" + regDt
				+ ", modify_Dt=" + modify_Dt + "]";
	}
	

	
}/////////////////// class
