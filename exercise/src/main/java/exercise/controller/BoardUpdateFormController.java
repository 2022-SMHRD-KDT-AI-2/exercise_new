package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.BoardVO;
import exercise.model.BoardDAO;

public class BoardUpdateFormController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int idx = Integer.parseInt(request.getParameter("idx"));
		BoardDAO dao = new BoardDAO();
		BoardVO vo = dao.getByIdx(idx);
		// 수정화면JSP로 forward - boardUpdate.jsp
		// 객체바인딩(request 바인딩)
		request.setAttribute("vo", vo);
		return "boardUpdate";
	}
}
