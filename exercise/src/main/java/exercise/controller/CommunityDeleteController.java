package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.model.CommunityDAO;

public class CommunityDeleteController implements Controller {
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int article_seq = Integer.parseInt(request.getParameter("article_seq")); 
		CommunityDAO dao = new CommunityDAO();
		dao.communityDelete(article_seq); // 성공 -> 다시 리스트페이지로 응답을 돌리기
		return "redirect:/communityList.do";
	}
}
