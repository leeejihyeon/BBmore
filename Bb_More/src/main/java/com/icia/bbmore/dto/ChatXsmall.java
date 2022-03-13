package com.icia.bbmore.dto;

public class ChatXsmall {
	private long chat_xsno;
	private long chat_sno;
	private String chat_xsList;
	
	public ChatXsmall()
	{
		chat_xsno = 0;
		chat_sno = 0;
		chat_xsList = "";
	}
	
	
	public long getChat_xsno() {
		return chat_xsno;
	}
	public void setChat_xsno(long chat_xsno) {
		this.chat_xsno = chat_xsno;
	}
	public long getChat_sno() {
		return chat_sno;
	}
	public void setChat_sno(long chat_sno) {
		this.chat_sno = chat_sno;
	}
	public String getChat_xsList() {
		return chat_xsList;
	}
	public void setChat_xsList(String chat_xsList) {
		this.chat_xsList = chat_xsList;
	}


	@Override
	public String toString() {
		return "ChatXsmall [chat_xsno=" + chat_xsno + ", chat_sno=" + chat_sno + ", chat_xsList=" + chat_xsList + "]";
	}

	
	
	
}//////////////////////// class
