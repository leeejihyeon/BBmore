package com.icia.bbmore.dao;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.bbmore.dto.OrderGoods;
import com.icia.bbmore.dto.OrderList;
import com.icia.bbmore.dto.User;

@Repository
public class myPageDao {

	@Autowired
	SqlSessionTemplate sql;

	
	// 마이페이지 - 비밀번호 입력시 
	public User passwordCheck(User dto) {
		return sql.selectOne("myPageMapper.passwordCheck", dto);
	}

	
	// 휴대폰 번호 변경시 업데이트 처리
	public int changePhonePrco(User dto) {
		return sql.update("myPageMapper.changePhonePrco", dto);
	}


	// 주소 변경시 업데이트 처리
	public int changeAddressPrco(User dto) {
		return sql.update("myPageMapper.changeAddressPrco", dto);
	}


	// 화면 로딩 후 버튼안에 결제 날짜 select 후 뿌리기
	public List<OrderList> selectOrderDT(OrderList dto) {
		return sql.selectList("myPageMapper.selectOrderDT", dto);
	}


	// 회원탈퇴 버튼 클릭시
	public int deleteUserProc(long u_no) {
		return sql.delete("myPageMapper.deleteUserProc", u_no);
	}


	// orderList 전체 select해오기
	public List<OrderList> getOrderList(OrderList dto) {
		return sql.selectList("myPageMapper.getOrderList", dto);
	}


	// 상세내역 버튼 클릭시 주문 상새내역 select해오기
	public List<OrderGoods> getOrderGoods(long orderList_no) {
		return sql.selectList("myPageMapper.getOrderGoods", orderList_no);
	}
}
