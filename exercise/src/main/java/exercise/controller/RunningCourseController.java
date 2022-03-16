package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.ChallengeVO;
import exercise.model.ChallengeDAO;

public class RunningCourseController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	HttpSession session = request.getSession();
	
	String memId=String.valueOf(session.getAttribute("memid")); 
	System.out.println(memId);
	ChallengeDAO dao = new ChallengeDAO();
	ChallengeVO vo=dao.getById(memId);		
	request.setAttribute("vo", vo); 
	//
	return null;
}
}
