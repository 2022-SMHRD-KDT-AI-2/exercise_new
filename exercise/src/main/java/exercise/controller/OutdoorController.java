package exercise.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import exercise.entity.ChallengeVO;
import exercise.entity.OutdoorVO;
import exercise.entity.RunningVO;
import exercise.entity.ChallengeVO;
import exercise.model.ChallengeDAO;
import exercise.model.OutdoorDAO;

public class OutdoorController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	HttpSession session = request.getSession();
	String memId=String.valueOf(session.getAttribute("memid"));
	OutdoorDAO dao = new OutdoorDAO();
	List<RunningVO> list = dao.selectRun();
	request.setAttribute("list", list);
	List<OutdoorVO> outdoorList = dao.selectOutdoor();
	request.setAttribute("outdoorList", outdoorList);
	ChallengeDAO chalDao = new ChallengeDAO();
	ChallengeVO chalVo=chalDao.getById(memId);
	request.setAttribute("chalVo", chalVo);
	
	
	return "outdoor";
}
}