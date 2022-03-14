package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.MemberVO;
import exercise.model.MemberDAO;

public class LogInController implements Controller {

	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 파라메터수집
		// VO 
		String memId = request.getParameter("memId");
		String memPwd = request.getParameter("memPwd");
		MemberVO vo = new MemberVO();
		vo.setMemId(memId);
		vo.setMemPwd(memPwd);
		// Model??
		MemberDAO dao=new MemberDAO();
		MemberVO memVO = dao.checkLogin(vo);
		
		
		if(memVO!=null) { // 성공
			HttpSession session= request.getSession(); // 
			// 객체바인딩(HttpSession)
			session.setAttribute("memVO", memVO);
			session.setAttribute("memId", memVO.getMemId());
			System.out.println("로그인 성공!");
		}
		else if(memVO==null) { // 실패
			HttpSession session= request.getSession(); // 
			// 객체바인딩(HttpSession)
			session.setAttribute("memVO", memVO);
			System.out.println("로그인 실패!");
			 return "redirect:/login_result.jsp";
		}
		return "redirect:/index.jsp";
	}
	
	

}
