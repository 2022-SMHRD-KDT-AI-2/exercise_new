package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.CommunityVO;
import exercise.model.CommunityDAO;

public class CommunityUpdateFormController implements Controller {
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		CommunityDAO dao = new CommunityDAO();
		CommunityVO vo = dao.getBySeq(article_seq);
		request.setAttribute("vo", vo);
		return "communityUpdate";
	}
}
