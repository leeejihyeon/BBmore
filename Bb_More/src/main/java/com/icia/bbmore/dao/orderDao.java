package com.icia.bbmore.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.icia.bbmore.dto.Goods;
import com.icia.bbmore.dto.OrderGoods;
import com.icia.bbmore.dto.OrderList;
import com.icia.bbmore.dto.User;

@Repository
public class orderDao {

	@Autowired
	private SqlSessionTemplate sql;

	// 수거 날짜 선택 후 다음 버튼 클릭시
	public int freeServiceProc(User dto) {
		return sql.update("orderMapper.freeServiceProc", dto);
	}


	// 무료견적 서비스 페이지에서 카테고리별 라디오 버튼  클릭시
	public List<Goods> chooseClothesProc(Goods dto) {
		return sql.selectList("orderMapper.chooseClothesProc", dto);
	}


	//상품 가져오기
	public Goods getGoods(Long g_no) { // gnd: goodsList에서 쪼갠 단일 g_no들을 각각 받음 
		return sql.selectOne("orderMapper.getGoods", g_no);
	}


	// 결제 성공 후 order테이블에 저장하기
	public long successProc(OrderList dto) {
		return sql.insert("orderMapper.successProc", dto);
	}


	// orderGoods에 다시 저장하기
	public int insertOderGoods(OrderGoods dto) {
		return sql.insert("orderMapper.insertOderGoods", dto);
	}


	// orderList에 저장 후 orderList_no를 select해오기
	public long selectListNo(long u_no) {
		return sql.selectOne("orderMapper.selectList", u_no);
	}


	// 배송날짜 선택 후 다음 버튼 클릭시 ajax
	public int deliveryServiceProc(User dto) {
		return sql.update("orderMapper.deliveryServiceProc", dto);
	}





}
