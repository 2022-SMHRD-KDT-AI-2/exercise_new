package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.CommunityVO;
import exercise.model.CommunityDAO;

public class CommunityUpdateController implements Controller {
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int article_seq = Integer.parseInt(request.getParameter("article_seq"));
		String articleTitle = request.getParameter("articleTitle");
		String articleContent = request.getParameter("articleContent");
		CommunityVO vo = new CommunityVO();
		CommunityDAO dao = new CommunityDAO();	
		vo.setArticle_seq(article_seq);
		vo.setArticleTitle(articleTitle);
		vo.setArticleContent(articleContent);
		dao.communityUpdate(vo);	
		return "redirect:/communityList.do";
	}
}
