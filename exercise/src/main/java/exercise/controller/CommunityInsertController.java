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
		int idx = Integer.parseInt(request.getParameter("idx"));
		int Article_seq = Integer.parseInt(request.getParameter("Article_seq"));
		String Articletitle = request.getParameter("Articletitle");
		String Articleconent = request.getParameter("Articleconent");
		String Articlefile = request.getParameter("Articlefile");
		int Articledate = Integer.parseInt(request.getParameter("Articledate"));
		String MemId = request.getParameter("MemId");
	    
	    CommunityVO vo=new CommunityVO(); //
	    vo.setIdx(idx);
		vo.setArticle_seq(Article_seq);
		vo.setArticletitle(Articletitle);
		vo.setArticleconent(Articleconent);
		vo.setArticlefile(Articlefile);
		vo.setArticledate(Articledate);
		vo.setMemId(MemId);

	    CommunityDAO dao = new CommunityDAO();
	    dao.communityInsert(vo); //성공 -> 다시 리스트 페이지로 돌리기
	    return "redirect:/communityInsert.do";
	
	}
	
}
