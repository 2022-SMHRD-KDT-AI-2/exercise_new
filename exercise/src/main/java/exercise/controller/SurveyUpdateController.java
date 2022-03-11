package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.SurveyVO;
import exercise.model.SurveyDAO;

public class SurveyUpdateController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	int weight = Integer.parseInt(request.getParameter("weight"));
	int targetWeight = Integer.parseInt(request.getParameter("targetWeight"));
	String athleticPart = request.getParameter("athleticPart");
	String athleticLevel = request.getParameter("athleticLevel");
	String memId = request.getParameter("memId");
	SurveyVO vo = new SurveyVO();
	SurveyDAO dao = new SurveyDAO();
	vo.setMemId(memId);
	vo.setWeight(weight);
	vo.setTargetWeight(targetWeight);
	vo.setAthleticPart(athleticPart);
	vo.setAthleticLevel(athleticLevel);
	dao.surveyUpdate(vo);
	return "redirect:/index.jsp";
 }
}
