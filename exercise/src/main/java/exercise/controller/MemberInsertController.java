package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.MemberVO;
import exercise.model.MemberDAO;

public class MemberInsertController implements Controller{
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	String memId = request.getParameter("memId");
	String memPw = request.getParameter("memPw");
	String memNick = request.getParameter("memNick");
	MemberVO vo = new MemberVO();
	vo.setMemId(memId);
	vo.setMemPwd(memPw);
	vo.setMemNick(memNick);
	MemberDAO dao = new MemberDAO();
	dao.memberInsert(vo);
	return "redirect:/memberForm.do";
}
}
