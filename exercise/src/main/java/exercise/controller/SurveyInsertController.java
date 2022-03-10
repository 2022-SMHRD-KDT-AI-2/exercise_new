package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.SurveyVO;

public class SurveyInsertController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String gender = request.getParameter("gender");
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		int targetWeight = Integer.parseInt(request.getParameter("targetWeight"));
		String part = request.getParameter("part");
		String level = request.getParameter("level");
		String memId = request.getParameter("memId");
		SurveyVO vo = new SurveyVO();
		vo.setGender(gender);
		vo.setHeight(height);
		vo.setWeight(weight);
		vo.setTargetWeight(targetWeight);
		vo.setPart(part);
		vo.setLevel(level);
		vo.setMemId(memId);
		
		return null;
	} 
 
}
