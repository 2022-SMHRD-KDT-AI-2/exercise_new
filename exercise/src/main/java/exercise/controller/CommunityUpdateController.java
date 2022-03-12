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
		
		int idx = Integer.parseInt(request.getParameter("idx"));
		int Article_seq = Integer.parseInt(request.getParameter("Article_seq"));
		String Articletitle = request.getParameter("Articletitle");
		String Articleconent = request.getParameter("Articleconent");
		String Articlefile = request.getParameter("Articlefile");
		int Articledate = Integer.parseInt(request.getParameter("Articledate"));
		String MemId = request.getParameter("MemId");
		CommunityVO vo = new CommunityVO();
		CommunityDAO dao = new CommunityDAO();	
		vo.setIdx(idx);
		vo.setArticle_seq(Article_seq);
		vo.setArticletitle(Articletitle);
		vo.setArticleconent(Articleconent);
		vo.setArticlefile(Articlefile);
		vo.setArticledate(Articledate);
		vo.setMemId(MemId);
		dao.communityUpdate(vo);	
		return "redirect:/communityList.do";
	}
}
