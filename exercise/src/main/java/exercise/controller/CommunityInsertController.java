package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.CommunityVO;
import exercise.model.CommunityDAO;

public class CommunityInsertController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String articleTitle = request.getParameter("articleTitle");
		String articleContent = request.getParameter("articleContent");
		String memId = request.getParameter("memId");
		String articleWriter = request.getParameter("articleWriter");
	    CommunityVO vo=new CommunityVO(); //
		vo.setArticleTitle(articleTitle);
		vo.setArticleContent(articleContent);
		vo.setMemId(memId);
		vo.setArticleWriter(articleWriter);

	    CommunityDAO dao = new CommunityDAO();
	    dao.communityInsert(vo); //성공 -> 다시 리스트 페이지로 돌리기
	    return "redirect:/communityList.do";
	
	}
	
}
