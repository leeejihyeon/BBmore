package com.icia.bbmore.controller;

import java.util.List;   

import org.springframework.beans.factory.annotation.Autowired; 
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.icia.bbmore.dto.Board;
import com.icia.bbmore.dto.Comment;
import com.icia.bbmore.service.boardService;
 
@Controller
@RequestMapping("/board")
public class boardController {
		
	
	@Autowired
	boardService bs = new boardService();
	
	
	// Review클릭시(게시판)
	@RequestMapping(value="/boardList", method=RequestMethod.GET)
	public ModelAndView boardList(
			@RequestParam(value="page" ,required = false, defaultValue = "1") int page) throws Exception
	{
		ModelAndView mv = new ModelAndView();
		mv = bs.getBoardList(page, mv);
		System.out.println(" hello github");

		return mv;
	}
	
	
	// 게시판 글쓰기 버튼클릭시
	@RequestMapping(value="/boardWrite", method=RequestMethod.GET)
	public String boardWrite()
	{
		return "/board/boardWrite";
	}
	
	
	// 게시판 등록하기 버튼 클릭시 - ajax
	@RequestMapping(value="/registerProc", method=RequestMethod.POST)
	@ResponseBody
	public int registerProc(Board board)
	{
		System.out.println("컨트롤러에서 서비스로 보내기전 board " + board);
		int code = bs.registerProc(board);
		return code;
	}
	
	
	// 등록된 게시물 클릭시
	@RequestMapping(value="/clickPost", method=RequestMethod.GET)
	public ModelAndView clickPost (long b_no)
	{
		ModelAndView mv = new ModelAndView();
		mv = bs.clickPost(b_no, mv);
		return mv;
	}
	
	
	// 등록된 게시물 클릭시 조회수 올리기
	@RequestMapping(value="/clickPostProc", method=RequestMethod.POST)
	@ResponseBody
	public int clickPostProc (Board b_no) 
	{
		int code = bs.clickPostProc(b_no);
		
		return code;
	}
	
	
	// 게시물 수정버튼 클릭시
	@RequestMapping(value="/boardUpdate", method=RequestMethod.GET)
	public ModelAndView boardModify(Board board)
	{
		ModelAndView mv = new ModelAndView();
		mv = bs.boardModify(board, mv);
		
		return mv;
	}
	
	
	// 게시물 삭제버튼 클릭시
	@RequestMapping(value="/boardDeleteProc", method=RequestMethod.POST)
	@ResponseBody
	public int boardDeleteProc(Board board)
	{
		int code = bs.boardDeleteProc(board);
		System.out.println("삭제 되고 넘어왔어? 합이 2야? " +code);
		return code;
	}
	
	
	// 게시물 수정 후 등록버튼 클릭시
	@RequestMapping(value="/updateProc", method=RequestMethod.POST)
	@ResponseBody
	public int updateProc(Board board)
	{
		int code = bs.updateProc(board);
		
		return code;
	}
	
	
	// 댓글 등록 버튼 클릭시 디비에 저장하기
	@RequestMapping(value="/comment_enterProc", method=RequestMethod.POST)
	@ResponseBody
	public int comment_enterProc(Comment comment)
	{
		
		int code = bs.comment_enterProc(comment);
			
		return code;
	}
	
	
	// 등록 된 댓글 가져오기
	@RequestMapping(value="/getCommentProc", method=RequestMethod.POST)
	@ResponseBody
	public List<Comment> getCommentProc(Comment comment)
	{
		List<Comment> list = bs.getCommentProc(comment);
		
		return list;
	}
}//////////////////////////// boardController
