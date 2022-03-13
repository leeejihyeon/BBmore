package com.icia.bbmore.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icia.bbmore.dto.User;
import com.icia.bbmore.service.userService;
 
@Controller
@RequestMapping("/user")
public class userController 
{
	@Autowired
	userService us = new userService();
	
	@Autowired
	HttpSession session;
	
	// 로그인 ajax
	@RequestMapping(value="/loginProc", method=RequestMethod.POST)
	@ResponseBody
	public int loginProc(Model model, String u_id, String u_pwd) {
		
		int code = us.loginProc(model, u_id, u_pwd);
		return code;
	}
	
	
	// 아이디 찾기 페이지로 이동
	@RequestMapping(value="/findId", method=RequestMethod.GET)
	public String findId() {
		return "/user/findId";
	}
	
	// 비밀번호 찾기 페이지로 이동
	@RequestMapping(value="/findPwd", method=RequestMethod.GET)
	public String findPwd() {
		return "/user/findPwd";
	}
	
	// 회원가입 페이지
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String join() {
		return "/user/join";
	}
	
	// 비밀번호 찾기 ajax
	@RequestMapping(value="/findPwdProc", method=RequestMethod.POST)
	@ResponseBody
	public int findProc(String userId, String userName, String userPhone) {
		
		int code = us.findPwdProc(userId, userName, userPhone);
		return code;
	}
	
	// 비밀번호 재설정 페이지
	@RequestMapping(value="/findPwdReset", method=RequestMethod.GET)
	public String findPwdReset() {
		return "/user/findPwdReset";
	}
	
	
	// 아이디 찾기ajax
	@RequestMapping(value="/findIdProc", method=RequestMethod.POST)
	@ResponseBody
	public String findIdProc(String userName, String userPhone) {
		String data = us.findIdProc(userName, userPhone);
		System.out.println(data);
		return data;
	}
	
	
	// 아이디 찾기 후 완료되면 로그인페이지로 이동 처리
	@RequestMapping(value="/login", method=RequestMethod.GET)
	public String login() {
		return "/user/login";
	}
	
	
	// 회원가입 ajax
	@RequestMapping(value="/joinProc", method=RequestMethod.POST)
	@ResponseBody
	public int joinProc(@ModelAttribute User user)
	{
		System.out.println("user"+user);
		int code = us.joinProc(user);
		return code;
	}
	
	
	// 비밀번호 재설정 ajax
	@RequestMapping(value="/findPwdResetProc", method=RequestMethod.POST)
	@ResponseBody
	public int findPwdResetProc(String newPwd, String userId)
	{
		int code = us.findPwdResetProc(newPwd, userId);
		return code;
	}
	
	
	// 아이디 중복확인 버튼 클릭
	@RequestMapping(value="/idCheckProc", method=RequestMethod.POST)
	@ResponseBody
	public int idCheckProc(String userId) {
		
		int code = us.idCheckProc(userId);
		
		return code;
	}
	
	
	
	// 로그아웃 버튼 클릭시
	@RequestMapping(value="/logoutProc", method=RequestMethod.GET)
	public String logoutProc()
	{
		session.removeAttribute("u_id");
		return "/order/index";
	}

	
}///////////////controller
