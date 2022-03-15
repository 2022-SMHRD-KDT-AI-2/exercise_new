package exercise.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.MemberVO;
import exercise.model.MemberDAO;

public class CheckNickController implements Controller {

	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String memNick=request.getParameter("nick"); 
		MemberVO vo = new MemberVO();
		MemberDAO dao=new MemberDAO();
		
		vo.setMemId(memNick);
		request.setAttribute("memNick", memNick);
		
		PrintWriter out = response.getWriter();
		
		return null;		
	}
}
