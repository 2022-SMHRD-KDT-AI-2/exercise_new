package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.MemberVO;
import exercise.entity.SurveyVO;
import exercise.model.BoardDAO;

public class SurveyController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 파라메터수집
		// VO 
		String memId = request.getParameter("memId");
		String gender = request.getParameter("gender");
		int height=Integer.parseInt(request.getParameter("height")); 
		int weight=Integer.parseInt(request.getParameter("weight")); 
		int target_weight=Integer.parseInt(request.getParameter("target_weight")); 
		String part = request.getParameter("athletic_part");
		String level = request.getParameter("athletic_level");
		
		MemberVO vo = new MemberVO();
		SurveyVO svo = new SurveyVO();
		
		vo.setMemId(memId);
		vo.setGender(gender);
		svo.setHeight(height);
		svo.setWeight(weight);
		svo.setTargetWeight(target_weight);
		svo.setPart(part);
		svo.setLevel(level);
		
		// Model
		BoardDAO dao=new BoardDAO();
		MemberVO memVO = dao.checkLogin(vo);
		if(memVO!=null) { // 성공
			HttpSession session= request.getSession(); // 
			// 객체바인딩(HttpSession)
			session.setAttribute("memVO", memVO);
		}
		return "redirect:/survey.do";
	}

}
