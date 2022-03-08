package exercise.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.BoardVO;
import exercise.model.BoardDAO;

public class BoardListController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
			BoardDAO dao = new BoardDAO();
			List<BoardVO> list=dao.selectAll();
			request.setAttribute("list", list);
			return "boardList";

}

}
