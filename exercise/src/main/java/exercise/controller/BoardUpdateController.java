package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.BoardVO;
import exercise.model.BoardDAO;

public class BoardUpdateController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("idx"));
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		BoardVO vo = new BoardVO();
		BoardDAO dao = new BoardDAO();
		vo.setIdx(idx);
		vo.setTitle(title);
		vo.setContent(content);
		dao.boardUpdate(vo); //성공 -> 다시 응답을 리스트페이지로 돌리자
		return "redirect:/boardList.do";
	}
}
