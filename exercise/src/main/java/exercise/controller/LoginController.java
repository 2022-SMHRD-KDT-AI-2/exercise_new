package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.MemberVO;
import exercise.model.MemberDAO;

@WebServlet("/login.do")
public class LoginController extends HttpServlet{
	@Override
	public void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		MemberVO vo = new MemberVO();
		vo.setMemId(memId);
		vo.setMemPwd(memPwd);
		
		MemberDAO dao = new MemberDAO();
		MemberVO usVO = dao.checkLogin(vo);
		
		if(usVO != null) {
			HttpSession session=request.getSession();
			session.setAttribute("MemberVO", MemberVO);
			
		}
		
		response.sendRedirect("/web/index.jsp");
	}
}
