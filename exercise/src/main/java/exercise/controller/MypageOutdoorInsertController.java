package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.MypageOutdoorVO;
import exercise.model.MypageDAO;

public class MypageOutdoorInsertController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {

	String memId = request.getParameter("memId");
	String myout_addr = request.getParameter("myout_addr");
	String myout_name = request.getParameter("myout_name");
	

	//System.out.println(like_video);
	//System.out.println(like_video_name);
	
    MypageOutdoorVO vo=new MypageOutdoorVO(); //
	vo.setMemId(memId);
	vo.setMyout_addr(myout_addr);
	vo.setMyout_name(myout_name);
	
	//System.out.println(vo.getLike_video());


    MypageDAO dao = new MypageDAO();
    dao.mypageOutInsert(vo); //성공 -> 다시 리스트 페이지로 돌리기
	
	return null;
}
}
