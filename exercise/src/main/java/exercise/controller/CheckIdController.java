package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.MemberVO;
import exercise.model.MemberDAO;

public class CheckIdController implements Controller {

	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String memId=request.getParameter("id"); // ¾ê°¡ nullÀÎ°Ô ¾Æ´Ò±î¿ä
		System.out.println(memId);
		MemberVO vo = new MemberVO();
		MemberDAO dao=new MemberDAO();
		
		vo.setMemId(memId);
		MemberVO idck= dao.checkId(vo);
		request.setAttribute("idck", idck);
		System.out.println(memId);
		System.out.println(idck);
		
		return null;
		
	}
}