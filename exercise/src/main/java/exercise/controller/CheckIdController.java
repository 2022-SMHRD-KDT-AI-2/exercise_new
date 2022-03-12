package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.MemberVO;
import exercise.model.MemberDAO;

public class CheckIdController implements Controller {
	
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	
	String memId = request.getParameter("memId");
	MemberVO vo = new MemberVO();
	vo.setMemId(memId);
	// Model
	MemberDAO dao=new MemberDAO();
	MemberVO memVO = dao.checkId(vo);
	
	return "checkId";
	
}
}
