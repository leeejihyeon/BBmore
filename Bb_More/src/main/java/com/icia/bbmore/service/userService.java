package com.icia.bbmore.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.icia.bbmore.dao.userDao;
import com.icia.bbmore.dto.User;

@Service
public class userService {
	
	@Autowired
	userDao dao = new userDao();
	
	@Autowired
	HttpSession session;
	
	// 로그인 버튼 클릭시 서비스 호출
	public int loginProc(Model model, String u_id, String u_pwd) {
		
		model.addAttribute("u_id", u_id);
		model.addAttribute("u_pwd", u_pwd);

		User user = dao.loginProc(model);
		
		int code;
		if(user != null) {
			
			session.setAttribute("u_no", user.getU_no());
			session.setAttribute("u_id", user.getU_id());	// userId 저장
			session.setAttribute("u_pwd", user.getU_pwd());
			session.setAttribute("u_phone", user.getU_phone());
			session.setAttribute("u_name", user.getU_name());
			session.setAttribute("adress", user.getU_address());
			session.setAttribute("adressSub", user.getU_address_sub());
			session.setAttribute("u_email", user.getU_email());
			

			code = 1;
		}
		else {
			code = 0;
		}
		
		return code;
	}
	
	
	// 비밀번호 찾기-확인버튼 클릭시 서비스  호출
	public int findPwdProc(String userId, String userName, String userPhone) {
		User dto = new User();
		dto.setU_id(userId);
		dto.setU_name(userName);
		dto.setU_phone(userPhone);
		
		String findPwd = dao.findPwdProc(dto);
		
		int code = 0;
		if(findPwd != null) {
			session.setAttribute("pwdId", dto.getU_id());
			code = 1;
		}
		
		return code;
	}

	
	// 아이디 찾기 - 확인버튼 클릭시 서비스 호출
	public String findIdProc(String userName, String userPhone) {
		User dto = new User();
		dto.setU_name(userName);
		dto.setU_phone(userPhone);
		
		String findId = dao.findIdProc(dto);
		
		String data = null;
		if(findId != null) {
			data = findId;
		}
		
		return data;
	}


	// 회원가입 - 가입하기 버튼 클릭시 서비스 호출
	public int joinProc(User user) 
	{		
		User dto = new User();	
		dto.setU_id(user.getU_id());
		dto.setU_pwd(user.getU_pwd());
		dto.setU_name(user.getU_name());
		dto.setU_address(user.getU_address());
		dto.setU_address_sub(user.getU_address_sub());
		dto.setU_phone(user.getU_phone());
		dto.setU_email(user.getU_email());
		dto.setU_enter_way(user.getU_enter_way());
		dto.setU_way_detail(user.getU_way_detail());
		
		int join = dao.joinProc(dto);
		
		session.setAttribute("user", dto);
	
		return join;
	}

	
	// 비밀번호 재설정
	public int findPwdResetProc(String newPwd, String userId) {
		User dto = new User();
		dto.setU_pwd(newPwd);
		dto.setU_id(userId);
		
		int findPwdReset = dao.findPwdResetProc(dto);
		int code = 0;
		if(findPwdReset == 0)
		{
			code = 0;
		}
		else if(findPwdReset == 1)
		{
			
			code = 1;
		}
		return code;
	}


	// 아이디 중복체크 버튼 클릭시
	public int idCheckProc(String userId) {

		User dto = new User();
		dto.setU_id(userId);
		
		String idCheck = dao.idCheckProc(dto);
		
		int code = 0;
		if(idCheck != null)	// 중복된다
		{
			code = 0;
		}
		else if(idCheck == null)	// 중복이 안된다.
		{
			code = 1;
		}
		return code;
	}




	


}/////////////////////service
