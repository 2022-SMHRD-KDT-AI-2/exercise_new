package exercise.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



import exercise.entity.RunningVO;

import exercise.model.OutdoorDAO;

public class OutdoorController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {


	OutdoorDAO dao = new OutdoorDAO();
	List<RunningVO> list = dao.selectRun();
	request.setAttribute("list", list);
	
	return "outdoor";
}
}