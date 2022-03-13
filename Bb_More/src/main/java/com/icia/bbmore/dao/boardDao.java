package com.icia.bbmore.dao;

import java.util.List; 

import org.mybatis.spring.SqlSessionTemplate; 
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.ui.Model;

import com.icia.bbmore.dto.Board;
import com.icia.bbmore.dto.Comment;
import com.icia.bbmore.dto.Paging;


@Repository
public class boardDao {

	@Autowired
	private SqlSessionTemplate sql;

	// 모든 게시판 정보 불러오기
	public List<Board> getBoardList(Paging pagination) {
		return sql.selectList("boardMapper.getBoardList", pagination);
	}
	
	
	// 게시판 등록하기 버튼 클릭시 - ajax
	public int registerProc(Board dto) {
		return sql.insert("boardMapper.registerProc", dto);
	}

	
	// 등록된 게시물 클릭시
	public Board clickPost(long b_no) {
		return sql.selectOne("boardMapper.clickPost", b_no);
	}

	
	// 등록된 게시물 클릭시 조회수 올리기
	public int clickPostProc(Board b_no) {
		return sql.update("boardMapper.clickPostProc", b_no);
	}

	
	// 게시물 삭제버튼 클릭시
	public int boardDeleteProc(Board dto) {
		return sql.delete("boardMapper.boardDeleteProc", dto);
	}
	
	
	// 게시물 수정 후 등록버튼 클릭시
	public int updateProc(Board dto) {
		return sql.update("boardMapper.updateProc", dto);
	}


	// 댓글 등록 버튼 클릭시
	public int comment_enterProc(Comment dto) {
		return sql.insert("boardMapper.comment_enterProc", dto);
	}


	// 등록 된 댓글 가져오기
	public List<Comment> getCommentProc(Comment dto) {
		return sql.selectList("boardMapper.getCommentProc", dto);
	}


	// 게시물 삭제시 댓글 삭제하기
	public int boardDeleteProc2(Comment dto2) {
		return sql.delete("boardMapper.boardDeleteProc2", dto2);
	}



	// 페이징 처리를 위해 board의 게시물 전체 개수 select해오기
	public int getBoardListCnt() {
		return sql.selectOne("boardMapper.getBoardListCnt");
	}






}////////////////////// boardDao
