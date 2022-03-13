package com.icia.bbmore.dto;

public class ChatSmall {
	private long chat_sno;		// ChatSmall고유키
	private long chat_mno;		// ChatMedium고유키
	private String chat_sList;	// 소분류 질문
	
	
	public long getChat_sno() {
		return chat_sno;
	}
	public void setChat_sno(long chat_sno) {
		this.chat_sno = chat_sno;
	}
	public long getChat_mno() {
		return chat_mno;
	}
	public void setChat_mno(long chat_mno) {
		this.chat_mno = chat_mno;
	}
	public String getChat_sList() {
		return chat_sList;
	}
	public void setChat_sList(String chat_sList) {
		this.chat_sList = chat_sList;
	}
	
	
	@Override
	public String toString() {
		return "ChatSmall [chat_sno=" + chat_sno + ", chat_mno=" + chat_mno + ", chat_sList=" + chat_sList + "]";
	}
	
	
}
