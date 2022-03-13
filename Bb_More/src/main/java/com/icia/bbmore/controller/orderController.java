package com.icia.bbmore.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.bbmore.dto.Goods;
import com.icia.bbmore.dto.OrderList;
import com.icia.bbmore.service.orderService;

@Controller
@RequestMapping("/order")
public class orderController {
	
	ModelAndView mv = new ModelAndView();
	
	@Autowired
	orderService os = new orderService();
	
	@Autowired
	HttpSession session;
	
	
	
	// 메인 페이지로 이동
	@RequestMapping(value="/index", method=RequestMethod.GET)
	public String index() {
		return "/order/index";
	}
	
	// 배송날짜 선택 페이지로 이동
	@RequestMapping(value="/chooseDelivery", method=RequestMethod.GET)
	public String chooseDelivery() {
		return "/order/chooseDelivery";
	}
	
	
	// about페이지
	@RequestMapping(value="/about", method=RequestMethod.GET)
	public String about() {
		return "/order/about";
	}
	
	// howUsePrice페이지
	@RequestMapping(value="/howUsePrice", method=RequestMethod.GET)
	public String howUsePrice() {
		return "/order/howUsePrice";
	}
	
	
	// 무료 견적 페이지
	@RequestMapping(value="/freeService", method=RequestMethod.GET)
	public String freeService() {
		return "/order/freeService";
	}
	
	// 수거날짜 선택 후 ajax
	@RequestMapping(value="/freeServiceProc", method=RequestMethod.POST)
	@ResponseBody
	public int freeServiceProc(@RequestParam("u_pickupDate")String u_pickupDate, @RequestParam("u_pickupTime")String u_pickupTime) 
	{
		int code = os.freeServiceProc(u_pickupDate, u_pickupTime);
		System.out.println("다시 받은 컨트롤러는 뭐가 왔냐 = "+code);
		
		return code;
	}

	
	// 수거날짜 선택 후 의류선택 페이지
	@RequestMapping(value="/chooseClothes", method=RequestMethod.GET)
	public String serviceCloth() {
		return "/order/chooseClothes";
	}
	
	
	// 카테고리 클릭시 ajax페이지
	@RequestMapping(value="/chooseClothesProc", method=RequestMethod.GET)
	@ResponseBody
	public List<Goods> chooseClothesProc(long c_no) {
		
		List<Goods> data = os.chooseClothesProc(c_no);

		System.out.println("컨트롤러에서 받은 데이터는...? " + data);
		return data;
	}

	// 상품 선택 후 다음버튼 클릭시 ajax페이지
    @RequestMapping(value="/clothesSelectProc", method=RequestMethod.GET)
    @ResponseBody	// RequestParam: 단일 파라미터를 받을 때 사용한다.
    public int clothesSelectProc(@RequestParam(value="goodsList") List<Long> goodsList) // value="ajax에서보내는 데이터 이름"
    {
    	int code = os.clothesSelectProc(goodsList);
    	return code;
    }
    
    
    // 배송날짜 선택 후 다음 버튼 클릭시 ajax
    @RequestMapping(value="/deliveryServiceProc", method = RequestMethod.POST)
    @ResponseBody
    public int deliveryServiceProc(String u_deliveryDate, String u_deliveryTime) {
    	int code = os.deliveryServiceProc(u_deliveryDate, u_deliveryTime);
    	return code;
    }
    
    
    // 결제페이지 
    @RequestMapping(value="/pay", method = RequestMethod.GET)
    public String pay() {
    	return "/order/pay";
    }
    
    
    
    // 결제페이지 성공 창 띄우기
    @RequestMapping(value="/success", method = RequestMethod.GET)
    public String generalPay()
    {
    	return "/order/success";
    }
    
    
    // 결제 성공 후 orderList 테이블에 저장하기
    @RequestMapping(value="/successProc", method = RequestMethod.POST)
    @ResponseBody
    public int successProc(OrderList orderList)
    {
    	int code = os.successProc(orderList);
    	System.out.println("code에 list형태로 담겨왔어? " + code);
    	return code;
    }
    

   
    
}/////////////////////// orderController
