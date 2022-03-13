package com.icia.bbmore.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.bbmore.dto.ChatMedium;
import com.icia.bbmore.dto.ChatSmall;
import com.icia.bbmore.dto.ChatXsmall;

import java.util.List; 

@Repository
public class contactDao {

	@Autowired
	private SqlSessionTemplate sql;
	
	// 첫 번째 질문 클릭  - ajax
	public List<ChatMedium> chatLargeProc(ChatMedium dto) {
		return sql.selectList("contactMapper.chatLargeProc", dto);
	}


	// 두 번째 질문 클릭시 - ajax
	public List<ChatSmall> chatMediumProc(ChatSmall dto) {
		return sql.selectList("contactMapper.chatMediumProc", dto);
	}
	
	
	// 세 번째 질문 클릭시 - ajax
	public List<ChatXsmall> chatSmallProc(ChatXsmall dto) {
		return sql.selectList("contactMapper.chatSmallProc", dto);
	}
	
}
