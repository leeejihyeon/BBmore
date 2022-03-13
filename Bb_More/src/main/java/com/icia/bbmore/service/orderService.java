package com.icia.bbmore.service;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.transaction.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.bbmore.dao.orderDao;
import com.icia.bbmore.dto.Goods;
import com.icia.bbmore.dto.OrderGoods;
import com.icia.bbmore.dto.OrderList;
import com.icia.bbmore.dto.User;

@Service
public class orderService {
	
	ModelAndView mv = new ModelAndView();
	
	@Autowired
	HttpSession session;
	
	@Autowired
	orderDao dao = new orderDao();
	
	
	// 무료견적 서비스페이지 내 다음버튼 클릭시
	public int freeServiceProc(@RequestParam("u_pickupDate")String u_pickupDate, @RequestParam("u_pickupTime")String u_pickupTime) 
	{
		
		String u_id	= (String)session.getAttribute("u_id");
		
		User dto = new User();
		dto.setU_id(u_id);
		dto.setU_pickupDate(u_pickupDate);
		dto.setU_pickupTime(u_pickupTime);		
		System.out.println("dto에 뭐담겼냐 "+dto);
		
		int pickupUpdate = dao.freeServiceProc(dto);
		System.out.println("pickupUpdate에는 뭐담겼냐 = "+pickupUpdate);
		
		int code = 0;
		if(pickupUpdate == 1)
		{
			session.setAttribute("u_pickupDate", u_pickupDate);
			session.setAttribute("u_pickupTime", u_pickupTime);
			
			code = 1;
		}

		return code;
	}
	
	// 무료견적 서비스 페이지에서 카테고리 클릭시
	public List<Goods> chooseClothesProc(long c_no) 
	{
		
		Goods dto = new Goods();
		dto.setC_no(c_no);
		
		List<Goods> data = dao.chooseClothesProc(dto);
		
		return data;
	}
	
	// 상품선택 후 다음버튼 클릭
	public int clothesSelectProc(List<Long> goodsList) {	// goodsList : 선택한 g_no
		
		List<Goods> list = new ArrayList<>();	// ArrayList<Goods> list = new ArrayList<>(); 와 동일
												// list : g_no로 select한 상품의 모든 정보가 담겨있음[상품이름, 상품가격, g_no, c_no]

		int total = 0;
		for(int i = 0; i<goodsList.size(); i++)
		{
			Goods goods = dao.getGoods(goodsList.get(i)); // .get(0) == goodslist[0]
				
			//리스트 저장하기
			list.add(goods);
				
			//그리고 리스트에 저장한걸 바로바로 총가격 구하기
			total += list.get(i).getG_price();
		}
		
		session.setAttribute("goodsList", list);
		System.out.println("list에 뭐담겼어 = " + list);
		
		
		
		
		
		int code = 0;	
		if(list.size() > 0) 
		{
			int ordergoods_totCount = list.size();
			session.setAttribute("ordergoods_totCount", ordergoods_totCount);
			System.out.println("상품 몇개 담겼어>? = " + ordergoods_totCount);

//			session.setAttribute("goodsList", list);
			session.setAttribute("total", total);
			code = 1;
		}
	
		return code; 
	}


	// 배송날짜 선택 후 다음 버튼 클릭시 ajax
	public int deliveryServiceProc(String u_deliveryDate, String u_deliveryTime) {
		
		String u_id = (String)session.getAttribute("u_id");
		User dto = new User();
		dto.setU_id(u_id);
		dto.setU_deliveryDate(u_deliveryDate);
		dto.setU_deliveryTime(u_deliveryTime);
		
		int updateDelivery = dao.deliveryServiceProc(dto);
		
		int code = 0;
		if(updateDelivery == 1)
		{
			session.setAttribute("u_deliveryDate", u_deliveryDate);
			session.setAttribute("u_deliveryTime", u_deliveryTime);
			
			code = 1;
		}

		return code;
	}
	
	

	
	// 결제 성공 후 orderList 테이블에 저장하기
	public int successProc(OrderList orderList) {
		// 1. 결제진행시 orderList에 저장하기
		OrderList dto = new OrderList();
		
		dto.setU_no(orderList.getU_no());
		dto.setOrdergoods_totCount(orderList.getOrdergoods_totCount());
		dto.setOrdergoods_totPrice(orderList.getOrdergoods_totPrice());
		session.setAttribute("orderList", dto);
		
		long insertCode = dao.successProc(dto);
		System.out.println("insertCode에 뭐라고 나와? = " + insertCode);
		
		// orderList에 insert 성공시
		if(insertCode == 1)
		{
			// 2. orderList에 저장 후 orderList_no를 다시 select해오기
			long selectOrderList_no = dao.selectListNo(dto.getU_no());
			System.out.println("selectOrderList_no가 long형태로 숫자만 넘어와? " + selectOrderList_no);
			
			// 3. select해온 orderList_no값으로 orderGoods에 insert하기
			List<Goods> goodsList = (ArrayList<Goods>)session.getAttribute("goodsList");
			
			for(int i=0; i<goodsList.size(); i++)
			{
				OrderGoods dto2 = new OrderGoods();
				
				dto2.setOrderList_no(selectOrderList_no);
				dto2.setG_name(goodsList.get(i).getG_name());
				dto2.setG_no(goodsList.get(i).getG_no());
				dto2.setG_price(goodsList.get(i).getG_price());
				
				int insertCode2 = dao.insertOderGoods(dto2);
				System.out.println("2. insertCode2에 1이 넘어왔어? = " + insertCode2);
			
			}
		}
		return 1;
	}



	
}/////////////////////////// class
