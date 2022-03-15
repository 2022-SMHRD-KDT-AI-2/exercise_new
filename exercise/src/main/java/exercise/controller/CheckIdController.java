package exercise.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.MemberVO;
import exercise.model.MemberDAO;

public class CheckIdController implements Controller {

	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String memId=request.getParameter("id"); // 
		System.out.println("test"+memId);
		MemberVO vo = new MemberVO();
		MemberDAO dao=new MemberDAO();
		
		vo.setMemId(memId);
		request.setAttribute("memId", memId);
		
		PrintWriter out = response.getWriter();
		//out.println();
		
		//response.sendRedirect("signUp.jsp");
		return null;		
	}
}