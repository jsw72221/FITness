package com.kh.mvc.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kh.mvc.board.model.service.BoardService;
import com.kh.mvc.board.model.vo.Board;
import com.kh.mvc.board.model.vo.Reply;
import com.kh.mvc.member.model.vo.Member;

import com.kh.mvc.common.util.FileRename;
import com.oreilly.servlet.MultipartRequest;

@WebServlet(name = "boardReplyDelete", urlPatterns = { "/board/replydelete" })
public class BoardReplyDeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    public BoardReplyDeleteServlet() {
    }
    
    @Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}
 
    //댓글 삭제
    @Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	HttpSession session = request.getSession(false);
		Member loginMember = (session == null) ? null : (Member) session.getAttribute("loginMember");
    	
		int result = 0;
		int replyNo = Integer.parseInt(request.getParameter("replyNo"));
    	int boardNo = Integer.parseInt(request.getParameter("boardNo"));
		
    	Reply reply = new Reply();
    	
    	System.out.println("dyddd" + reply);
		
    	reply.setNo(replyNo);
		reply.setBoardNo(boardNo);
		reply.setWriterNo(loginMember.getNo());
		
		result = new BoardService().deleteReply(reply);
		
		if(result > 0) {
			request.setAttribute("msg", "댓글이 삭제되었습니다.");
			request.setAttribute("location", "/board/view?no=" + boardNo);
		} else {
			request.setAttribute("msg", "댓글 삭제 실패");
			request.setAttribute("location", "/board/view?no=" + boardNo);
		}
	      request.getRequestDispatcher("/views/common/msg.jsp").forward(request, response);
	}

}