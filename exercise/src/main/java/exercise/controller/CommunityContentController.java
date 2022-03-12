package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.CommunityVO;
import exercise.model.CommunityDAO;

public class CommunityContentController implements Controller{ // 유연성이 떨어진다
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int idx=Integer.parseInt(request.getParameter("idx")); 
		
		CommunityDAO dao = new CommunityDAO();
		CommunityVO vo=dao.getByIdx(idx);
		dao.addCount(idx);			
		request.setAttribute("vo", vo); 
		//
		return "communityContent";
	} 
	
			
}
