package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.MemberVO;
import exercise.model.MemberDAO;

public class SurveyLoginController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	String memId = request.getParameter("memId");
	String memPwd = request.getParameter("memPwd");
	MemberVO vo = new MemberVO();
	vo.setMemId(memId);
	vo.setMemPwd(memPwd);
	// Model??
	MemberDAO dao=new MemberDAO();
	MemberVO memVO = dao.checkLogin(vo);
	if(memVO!=null) { // ����
		HttpSession session= request.getSession(); // 
		// ��ü���ε�(HttpSession)
		session.setAttribute("memVO", memVO);
		session.setAttribute("memid", memVO.getMemId());
		System.out.println("�α��� ����!");
		
	}else if(memVO==null) { // ����
		HttpSession session= request.getSession(); // 
		// ��ü���ε�(HttpSession)
		session.setAttribute("memVO", memVO);
		System.out.println("�α��� ����!");
		 return "redirect:/login_result.jsp";
	}
	return "redirect:/survey.do";
	
}
}
