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
	
		return "survey";
	}

}
