package com.icia.bbmore.dto;

public class ChatLarge {
	private long chat_lno;		// 챗봇 고유키
	private String chat_lList;	// 챗봇 대분류 질문
	
	
	
	public long getChat_lno() {
		return chat_lno;
	}
	public void setChat_lno(long chat_lno) {
		this.chat_lno = chat_lno;
	}
	public String getChat_lList() {
		return chat_lList;
	}
	public void setChat_lList(String chat_lList) {
		this.chat_lList = chat_lList;
	}
	
	
	@Override
	public String toString() {
		return "ChatLarge [chat_lno=" + chat_lno + ", chat_lList=" + chat_lList + "]";
	}
	
	
}///////////////////// ChatLarge
