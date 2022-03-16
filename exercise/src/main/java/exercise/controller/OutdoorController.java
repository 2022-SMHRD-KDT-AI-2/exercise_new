package exercise.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.RunningVO;
import exercise.model.OutdoorDAO;

public class OutdoorController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	HttpSession session = request.getSession();
	
	String memId=String.valueOf(session.getAttribute("memid")); 
	System.out.println(memId);
	OutdoorDAO dao = new OutdoorDAO();
	RunningVO vo = dao.getByIdRun(memId);
	request.setAttribute("vo", vo);
	
	
	return "outdoor";
}
}