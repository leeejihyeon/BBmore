package com.icia.bbmore.dto;

public class ChatMedium {
	private	long chat_mno;		// ChatMedium고유키
	private long chat_lno;		// ChatLarge고유키
	private String chat_mList;	// 중분류 질문
	
	
	public long getChat_mno() {
		return chat_mno;
	}
	public void setChat_mno(long chat_mno) {
		this.chat_mno = chat_mno;
	}
	public long getChat_lno() {
		return chat_lno;
	}
	public void setChat_lno(long chat_lno) {
		this.chat_lno = chat_lno;
	}
	public String getChat_mList() {
		return chat_mList;
	}
	public void setChat_mList(String chat_mList) {
		this.chat_mList = chat_mList;
	}
	
	
	@Override
	public String toString() {
		return "ChatMedium [chat_mno=" + chat_mno + ", chat_lno=" + chat_lno + ", chat_mList=" + chat_mList + "]";
	}
	
	
}
