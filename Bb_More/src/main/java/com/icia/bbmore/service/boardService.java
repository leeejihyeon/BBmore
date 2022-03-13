package com.icia.bbmore.service;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.icia.bbmore.dao.boardDao;
import com.icia.bbmore.dto.Board;
import com.icia.bbmore.dto.Comment;
import com.icia.bbmore.dto.Paging;

@Service
public class boardService {
	
	

	@Autowired
	boardDao dao = new boardDao();
	
	@Autowired
	HttpSession session;
	
	// 게시물 전체 리스트 보여주기
	public ModelAndView getBoardList( int page, ModelAndView mv) throws Exception
	{
		
		
		System.out.println("page : "+ page);
		
		// 1. 페이징 처리를 위해 board의 게시물 전체 개수 select해오기
		int listCnt = dao.getBoardListCnt();
				
		// 2. 페이징처리를 위해 Paging 객체 생성
		Paging pagination = page(page, listCnt);
						
		// 5. 페이징 한 변수 mv에 담기
		mv.addObject("pagination" , pagination);
		System.out.println(pagination);
		List<Board> list = dao.getBoardList(pagination);
		
		// 6. 페이징 처리한 것을 boardList에 띄워줘야함
		mv.addObject("listView", list);

		mv.setViewName("/board/boardList");
		
		System.out.println(mv);
		
		return mv;
	}
	
	
	//페이지 게시물 개수
	private static final int PAGE_LIMIT = 10;
	
	// 페이징처리
	private Paging page(int page, int listCount) {
		Paging paging = new Paging();
		
		//startRow,  endRow는 sql문  limit를 제어하는 애들
		int startRow = (page - 1) * PAGE_LIMIT;
		int endRow = PAGE_LIMIT;
		

		int maxPage = (int) ((double) listCount / PAGE_LIMIT+0.9); // 마지막 페이지 
		int startPage = (((int) ((double) page / 10 +0.9)) - 1) * 10 + 1; //범위 페이지 시작 번호 
		
		int endPage = startPage + 10 - 1; //범위 페이지 마지막 번호

		if (endPage > maxPage) { 
			endPage = maxPage;
		}

		paging.setPage(page);
		paging.setStartRow(startRow);
		paging.setEndRow(endRow);
		paging.setMaxPage(maxPage);
		paging.setStartPage(startPage);
		paging.setEndPage(endPage);
		paging.setLimitCount(listCount);

		return paging;
	}
	




	// 게시판 등록하기 버튼 클릭시 - ajax
	public int registerProc(Board board) {
		
		Board dto = new Board();
		dto.setU_id(board.getU_id());				// 아이디
		dto.setB_title(board.getB_title());			// 게시물 제목
		dto.setB_content(board.getB_content());		// 게시물 내용
		
		
		// 게시판 등록시 
		int code = dao.registerProc(dto);
		System.out.println("처리하고 board에 뭐 담겨있음? " + code); // 업로드 완료시: 1, 실패하면 : 0

		return code;	
	}


	// 등록된 게시물 클릭시
	public ModelAndView clickPost(long b_no, ModelAndView mv) {
		
		Board list = dao.clickPost(b_no);
		
		mv.addObject("clickPost", list);
		System.out.println("등록된 게시물 클릭시 list에 뭐담겨있는데? " + list);
		mv.setViewName("/board/clickPost");
		
		return mv;
	}

	
	// 등록된 게시물 클릭시 조회수 올리기
	public int clickPostProc(Board b_no) {

		int code = dao.clickPostProc(b_no);
		
		return code;
	}
	
	
	
	// 게시물 수정버튼 클릭시
	public ModelAndView boardModify(Board board, ModelAndView mv) {
		mv.addObject("boardUpdate", board);
		mv.setViewName("/board/boardUpdate");
		
		return mv;
	}

	
	// 게시물 삭제버튼 클릭시
	public int boardDeleteProc(Board board) {
		
		Board dto = new Board();
		dto.setB_no(board.getB_no());
		dto.setU_id(board.getU_id());
		
		Comment dto2 = new Comment();
		dto2.setB_no(board.getB_no());
//		dto2.setU_id(board.getU_id());
		
		int code = dao.boardDeleteProc(dto);
		System.out.println("code에 1담겨있어? " + code);
		
		int code2 = dao.boardDeleteProc2(dto2);
		System.out.println("code2에 1담겨있어?");
		
		System.out.println("code + code2 = " + (code+code2));
		return code+code2;
	}
	
	
	
	// 게시물 수정 후 등록버튼 클릭시
	public int updateProc(Board board) {
		
		Board dto = new Board();
		dto.setB_no(board.getB_no());
		dto.setB_title(board.getB_title());
		dto.setB_content(board.getB_content());
		
		int code = dao.updateProc(dto);
	
		return code;
	}


	// 댓글 등록 버튼 클릭시
	public int comment_enterProc(Comment comment) {

		Comment dto = new Comment();
		dto.setB_no(comment.getB_no());
		dto.setComment_content(comment.getComment_content());
		dto.setU_id(comment.getU_id());
	
		int code = dao.comment_enterProc(dto);
				
		return code;
	}


	// 등록 된 댓글 가져오기
	public List<Comment> getCommentProc(Comment comment) {
		
		Comment dto = new Comment();
		dto.setB_no(comment.getB_no());
		
		List<Comment> data = dao.getCommentProc(dto);
		System.out.println("data: "+data);		
		
		
		return data;
	}










}//////////////////////////// boardService
