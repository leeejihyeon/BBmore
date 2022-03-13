package com.icia.bbmore.controller;

import java.util.List;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icia.bbmore.dto.ChatMedium;
import com.icia.bbmore.dto.ChatSmall;
import com.icia.bbmore.dto.ChatXsmall;
import com.icia.bbmore.service.contactService;

@Controller
@RequestMapping("/contact")
public class contactController {

	@Autowired
	contactService cs = new contactService();
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private HttpSession session;
	
	// contact페이지 이동
	@RequestMapping(value="/contactView", method=RequestMethod.GET)
	public String contact()
	{
		return "/contact/contactView";
	}
	
	
	// 첫 번째 질문 클릭  - ajax
	@RequestMapping(value="/chatLargeProc", method=RequestMethod.POST)
	@ResponseBody
	public List<ChatMedium> chatLargeProc(long chat_lno)
	{
		List<ChatMedium> data = cs.chatLargeProc(chat_lno);
		
		return data;
	}
	

	// 두 번째 질문 클릭시 - ajax
	@RequestMapping(value="/chatMediumProc", method=RequestMethod.POST)
	@ResponseBody
	public List<ChatSmall> chatMediumProc(long chat_mno)
	{
		List<ChatSmall> data = cs.chatMediumProc(chat_mno);
		
		return data;
	}
	
	
	
	// 세 번째 질문 클릭시 - ajax
	@RequestMapping(value="/chatSmallProc", method=RequestMethod.POST)
	@ResponseBody
	public List<ChatXsmall> chatSmallProc(long chat_xsno)
	{
		List<ChatXsmall> data = cs.chatSmallProc(chat_xsno);
		return data;
	}
	
	
	// Contact에서 메일 보내기
	@RequestMapping(value = "/sendMail", method = RequestMethod.GET)
	@ResponseBody
    public void sendMail(String u_subject, String u_message) throws Exception
	{
        
		String u_email = (String) session.getAttribute("u_email");
		
        String subject = u_subject;				// 메일 제목
        String content = u_message;				// 메일 내용
        String from = "xnfxn97@gmail.com";		// 보내는 사람 메일주소
        String to = "wgilooy97@naver.com";		// 받는 사람 메일 주소(고정)
        
        try {
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
            // true는 멀티파트 메세지를 사용하겠다는 의미
            
            /*
             * 단순한 텍스트 메세지만 사용시엔 아래의 코드도 사용 가능 
             * MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
             */
            
            mailHelper.setFrom(from);
            // 빈에 아이디 설정한 것은 단순히 smtp 인증을 받기 위해 사용 따라서 보내는이(setFrom())반드시 필요
            // 보내는이와 메일주소를 수신하는이가 볼때 모두 표기 되게 원하신다면 아래의 코드를 사용하시면 됩니다.
            //mailHelper.setFrom("보내는이 이름 <보내는이 아이디@도메인주소>");
            mailHelper.setTo(to);
            mailHelper.setSubject(subject);
            mailHelper.setText(content);
            // true는 html을 사용하겠다는 의미입니다.
            
            /*
             * 단순한 텍스트만 사용하신다면 다음의 코드를 사용하셔도 됩니다. mailHelper.setText(content);
             */
            
            mailSender.send(mail);
            
        } catch(Exception e) {
            e.printStackTrace();
        }
        
        
    }

	
}///////////////////////////// contactController
