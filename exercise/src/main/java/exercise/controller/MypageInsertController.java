package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.MypageVO;
import exercise.model.CommunityDAO;
import exercise.model.MypageDAO;

public class MypageInsertController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	String memId = request.getParameter("memId");
	String like_video = request.getParameter("like_video");
	String like_outdoor = request.getParameter("like_outdoor");
	String like_video_name = request.getParameter("like_video_name");
	
    MypageVO vo=new MypageVO(); 
	vo.setMemId(memId);;
	vo.setLike_video(like_video);;
	vo.setLike_video_name(like_video_name);;
	vo.setLike_outdoor(like_outdoor);;

    MypageDAO dao = new MypageDAO();
    dao.mypageInsert(vo); //성공 -> 다시 리스트 페이지로 돌리기
    return null;
}
}
