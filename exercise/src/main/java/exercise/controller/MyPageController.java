package exercise.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.MypageVO;
import exercise.model.MypageDAO;

public class MyPageController implements Controller {
@Override
public String requestHandler(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException {
	MypageDAO dao = new MypageDAO();
	List<MypageVO> list = dao.selectExercise();
	request.setAttribute("list", list);
	

	return "myPage";
}
}
