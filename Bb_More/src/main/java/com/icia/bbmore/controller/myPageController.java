package com.icia.bbmore.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.icia.bbmore.dto.OrderGoods;
import com.icia.bbmore.dto.OrderList;
import com.icia.bbmore.service.myPageService;

@Controller
@RequestMapping(value="/myb")
public class myPageController {

	@Autowired
	myPageService ms = new myPageService();
	
	@Autowired
	HttpSession session;
	
	
	// 마이페이지로 이동
	@RequestMapping(value="/myPage", method=RequestMethod.GET)
	public String myPage()
	{
		return "/myb/myPage";
	}
	
	
	// 마이페이지 - 비밀번호 입력시 
	@RequestMapping(value="/passwordCheck", method = RequestMethod.POST)
	@ResponseBody
	public int passwordCheck(String u_pwd)
	{
		System.out.println("mypage에서 입력한 비번의 값은? = " + u_pwd);
		
		int code = ms.passwordCheck(u_pwd);
		
		return code;
	}
	
	
	// 마이페이지 - 회워정보 수정 페이지로 이동
	@RequestMapping(value="/modifyMemberInfo", method = RequestMethod.GET)
	public String modifyMemberInfo()
	{
		return "/myb/modifyMemberInfo";
	}
	
	
	// 회원정보 - 휴대폰번호 변경버튼 클릭시
	@RequestMapping(value="/changePhone", method = RequestMethod.GET)
	public String changePhone()
	{
		return "/myb/changePhone";
	}
	
	
	// 회원정보 - 휴대폰 번호 변경시 업데이트 처리
	@RequestMapping(value="/changePhonePrco", method = RequestMethod.POST)
	@ResponseBody
	public int changePhonePrco(String u_phone)
	{
		
		int code = ms.changePhonePrco(u_phone);
		
		return code;
	}
	
	
	// 회원정보 - 주소 변경버튼 클릭시
	@RequestMapping(value="/changeAddress", method = RequestMethod.GET)
	public String changeAddress()
	{
		return "/myb/changeAddress";
	}
	
	
	// 회원정보 - 주소 변경시 업데이트 처리
	@RequestMapping(value="/changeAddressPrco", method = RequestMethod.POST)
	@ResponseBody
	public int changeAddressPrco(String u_address, String u_address_sub)
	{
		int code = ms.changeAddressPrco(u_address, u_address_sub);
		
		return code;
	}
	
	
	// 예약현황 - 주문확인 페이지로 이동
	@RequestMapping(value="/reservationOrder", method = RequestMethod.GET)
	public String reservationOrder()
	{
		return "/myb/reservationOrder";
	}
	
	
	// 화면 로딩 후 버튼안에 결제 날짜 select 후 뿌리기
	@RequestMapping(value="/selectOrderDT", method = RequestMethod.POST)
	@ResponseBody 
	public List<OrderList> selectOrderDT(long u_no)
	{
		List<OrderList> orderlist = ms.selectOrderDT(u_no);
		return orderlist;
	}
	 
	
	// 회원탈퇴 버튼 클릭시
	@RequestMapping(value="/deleteUserProc", method = RequestMethod.POST)
	@ResponseBody
	public int deleteUserProc(long u_no)
	{
		int code = ms.deleteUserProc(u_no);
		return code;
	}
	
	
	// orderList 전체 select해오기
	@RequestMapping(value="/getOrderList", method = RequestMethod.POST)
	@ResponseBody
	public List<OrderList> getOrderList(@RequestParam(value="u_no") long u_no)
	{
		List<OrderList> getList = ms.getOrderList(u_no);
		return getList;
	}
	
	
	
	// 상세내역 버튼 클릭시 주문 상새내역 select해오기
	@RequestMapping(value="/getOrderGoods", method = RequestMethod.POST)
	@ResponseBody
	public List<OrderGoods> getOrderGoods(@RequestParam(value="orderList_no") long orderList_no)
	{
		System.out.println("여기까지만 넘어오자,, " + orderList_no);
		List<OrderGoods> getGoods = ms.getOrderGoods(orderList_no);
		return getGoods;
	}
	
}////////////////////// myPageController()
