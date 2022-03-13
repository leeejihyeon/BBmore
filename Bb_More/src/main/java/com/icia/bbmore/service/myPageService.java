package com.icia.bbmore.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.icia.bbmore.dao.myPageDao;
import com.icia.bbmore.dto.OrderGoods;
import com.icia.bbmore.dto.OrderList;
import com.icia.bbmore.dto.User;

@Service
public class myPageService {
	
	@Autowired
	myPageDao dao = new myPageDao();
	
	
	@Autowired
	HttpSession session;


	// 마이페이지 - 비밀번호 입력시 
	public int passwordCheck(String u_pwd) {
		
		String u_id = (String)session.getAttribute("u_id");
		
		User dto = new User();
		dto.setU_id(u_id);
		dto.setU_pwd(u_pwd);
		
		User selectUser = dao.passwordCheck(dto);
		
		System.out.println("selectUser에 비번 찾아와? = " + selectUser);
		
		int code = 0;
		
		if(selectUser != null)
		{
			System.out.println("같은걸로 와?");
			code = 1;
		}

		
		return code;
	}


	// 휴대폰 번호 변경시 업데이트 처리
	public int changePhonePrco(String u_phone) {
		
		long u_no = (long)session.getAttribute("u_no");
		
		User dto = new User();
		dto.setU_no(u_no);
		dto.setU_phone(u_phone);
		
		session.removeAttribute("u_phone");
		
		session.setAttribute("u_phone", u_phone);
		
		int updatePhone = dao.changePhonePrco(dto);
		
		int code = 0;
		if(updatePhone == 1)
		{
			
			code = 1;
		}
		
		return code;
	}


	// 주소 변경시 업데이트 처리
	public int changeAddressPrco(String u_address, String u_address_sub) {

		long u_no = (long)session.getAttribute("u_no");
		
		User dto = new User();
		dto.setU_no(u_no);
		dto.setU_address(u_address);
		dto.setU_address_sub(u_address_sub);
		
		session.removeAttribute("adress");
		session.removeAttribute("adressSub");
		
		session.setAttribute("adress", u_address);
		session.setAttribute("adressSub", u_address_sub);
		
		int updateAddress = dao.changeAddressPrco(dto);
		
		int code = 0;
		if(updateAddress == 1)
		{
			
			code = 1;
		}
		
		return code;
	}


	// 화면 로딩 후 버튼안에 결제 날짜 select 후 뿌리기
	public List<OrderList> selectOrderDT(long u_no) {
		
		OrderList dto = new OrderList();
		dto.setU_no(u_no);
		
		List<OrderList> orderlist = dao.selectOrderDT(dto);
		System.out.println("orderlist 갖고왔냐 = " + orderlist);
		
		session.setAttribute("myb_orderlist", orderlist);
		
		return orderlist;
	}


	// 회원탈퇴 버튼 클릭시
	public int deleteUserProc(long u_no) {
		
		// 1. db에서 회원 삭제하기
		int deleteCode = dao.deleteUserProc(u_no);
		
		if(deleteCode == 1)
		{
			session.removeAttribute("u_no");
			session.removeAttribute("u_id");
			session.removeAttribute("u_pwd");
			session.removeAttribute("u_phone");
			session.removeAttribute("u_name");
			session.removeAttribute("adress");
			session.removeAttribute("adressSub");
			session.removeAttribute("u_email");
		}
		return deleteCode;
	}


	// orderList 전체 select해오기
	public List<OrderList> getOrderList(@RequestParam(value="u_no") long u_no) {
		
		OrderList dto = new OrderList();
		dto.setU_no(u_no);
		
		List<OrderList> getList = dao.getOrderList(dto);
		session.setAttribute("orderList", getList);
		System.out.println("getList에 어떻게 담겨와? = " + getList);
		return getList;
	}


	// 상세내역 버튼 클릭시 주문 상새내역 select해오기
	public List<OrderGoods> getOrderGoods(@RequestParam(value="orderList_no") long orderList_no) {

		List<OrderGoods> getGoods = dao.getOrderGoods(orderList_no);
		System.out.println("getGoods에 어떻게 담겨와? = " + getGoods);
		
		return getGoods;
	}


}////////////////////// myPageService()
