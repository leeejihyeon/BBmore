package com.icia.bbmore.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

import javax.servlet.http.HttpSession;

import com.icia.bbmore.dto.ChatMedium;
import com.icia.bbmore.dto.ChatSmall;
import com.icia.bbmore.dto.ChatXsmall;
import com.icia.bbmore.dao.contactDao;

@Service
public class contactService {

	@Autowired
	contactDao dao = new contactDao();
	
	@Autowired
	HttpSession session;
	
	
	// 첫 번째 질문 클릭  - ajax
	public List<ChatMedium> chatLargeProc(long chat_lno) {	// chat_lno : 내가 선택한 대분류 질문 번호
		
		ChatMedium dto = new ChatMedium();
		dto.setChat_lno(chat_lno);	// chat_lno값만 저장됨
		
		List<ChatMedium> data = dao.chatLargeProc(dto);	// mapper를 통해 chat_lno가 뭐를 선택했냐에 따라서 중분류질문이 같이 나옴
		
		session.setAttribute("chatbot", data);
		System.out.println("chatbot이란는 세션에 뭐가 담김? " + data);
		
		return data;
	}


	// 두 번째 질문 클릭시 - ajax
	public List<ChatSmall> chatMediumProc(long chat_mno) {
		
		ChatSmall dto = new ChatSmall();
		dto.setChat_mno(chat_mno);
		
		List<ChatSmall> data = dao.chatMediumProc(dto);
		
		session.setAttribute("chatbot", data);
		System.out.println("두번째 팻봇에 뭐담김? " + data);
		
		return data;
	}
	
	
	// 세 번째 질문 클릭시 - ajax
	public List<ChatXsmall> chatSmallProc(long chat_xsno) {
		
		ChatXsmall dto = new ChatXsmall();
		dto.setChat_xsno(chat_xsno);
		
		List<ChatXsmall> data = dao.chatSmallProc(dto);
		
		session.setAttribute("chatbot", data);
		System.out.println("세번째 팻봇에 뭐담김? " + data);
		
		return data;
	}
	
	

}//////////////////////// contactService
