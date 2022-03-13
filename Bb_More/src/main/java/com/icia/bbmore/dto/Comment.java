package com.icia.bbmore.dto;

import java.sql.Timestamp;

public class Comment {

	private long comment_no;			// 댓글 고유번호
	private long b_no;					// 게시물 고유번호
	private String u_id;				// 회원 아이디
	private String comment_content;		// 댓글 내용
	private String comment_parentId;	// 댓글 부모아이디
	private Timestamp regDt;			// 댓글 등록날짜
	
	
	
	public long getComment_no() {
		return comment_no;
	}
	public void setComment_no(long comment_no) {
		this.comment_no = comment_no;
	}
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
	public String getComment_content() {
		return comment_content;
	}
	public void setComment_content(String comment_content) {
		this.comment_content = comment_content;
	}
	public String getComment_parentId() {
		return comment_parentId;
	}
	public void setComment_parentId(String comment_parentId) {
		this.comment_parentId = comment_parentId;
	}
	public Timestamp getRegDt() {
		return regDt;
	}
	public void setRegDt(Timestamp regDt) {
		this.regDt = regDt;
	}
	
	
	
	@Override
	public String toString() {
		return "Comment [comment_no=" + comment_no + ", b_no=" + b_no + ", u_id=" + u_id + ", comment_content="
				+ comment_content + ", comment_parentId=" + comment_parentId + ", regDt=" + regDt + "]";
	}
	

}///////////////////// class
