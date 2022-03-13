package com.icia.bbmore.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.icia.bbmore.dto.User;

@Repository
public class userDao 
{
	@Autowired
	private SqlSessionTemplate sql;
	
	// 로그인 버튼 클릭시 실행되는 dao
	public User loginProc(Model model) {
		return sql.selectOne("userMapper.loginProc", model);
	}

	
	// 비밀번호 찾기 확인버튼 클릭시 실행되는 dao
	public String findPwdProc(User dto) {
		return sql.selectOne("userMapper.findPwdProc", dto);
	}

	
	// 아이디 찾기 확인버튼 클릭시 실행되는 dao
	public String findIdProc(User dto) {
		return sql.selectOne("userMapper.findIdProc", dto);
	}


	// 회원가입 버튼 클릭시 실행되는 dao
	public int joinProc(User dto) {
		return sql.insert("userMapper.joinProc", dto);
	}


	// 비밀번호 재설정
	public int findPwdResetProc(User dto) {
		return sql.update("userMapper.findPwdResetProc", dto);
	}


	// 아이디 중복체크 버튼 클릭시
	public String idCheckProc(User dto) {
		System.out.println("dao에서 dto는 : " + dto);
		return sql.selectOne("userMapper.idCheckProc", dto);
	}


	


}/////////////repository
