package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.model.BoardDAO;

public class BoardDeleteController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("idx")); // "20" -> 20
		BoardDAO dao = new BoardDAO();
		dao.boardDelete(idx); // 성공 -> 다시 리스트페이지로 응답을 돌리기
		return "redirect:/boardList.do";
	}
}
