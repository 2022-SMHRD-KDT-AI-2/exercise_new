package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.SurveyVO;
import exercise.model.SurveyDAO;

public class SurveyInsertController implements Controller{
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int height = Integer.parseInt(request.getParameter("height"));
		int weight = Integer.parseInt(request.getParameter("weight"));
		int targetWeight = Integer.parseInt(request.getParameter("targetWeight"));
		String athleticPart = request.getParameter("athleticPart");
		String athleticLevel = request.getParameter("athleticLevel");
		String memId = request.getParameter("memId");
		SurveyVO vo = new SurveyVO();
		vo.setHeight(height);
		vo.setWeight(weight);
		vo.setTargetWeight(targetWeight);
		vo.setAthleticPart(athleticPart);
		vo.setAthleticLevel(athleticLevel);
		vo.setMemId(memId);
		System.out.println(memId);
		SurveyDAO dao = new SurveyDAO();
		dao.surveyInsert(vo);
		
		return "flask";
	} 
 
}
