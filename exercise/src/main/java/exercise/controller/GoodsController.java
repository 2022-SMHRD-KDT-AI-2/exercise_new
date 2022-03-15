package exercise.controller;

import java.io.IOException;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.GoodsVO;
import exercise.model.GoodsDAO;

public class GoodsController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
														throws ServletException, IOException {
		GoodsDAO dao = new GoodsDAO();
		List<GoodsVO> list = dao.selectAll();
		request.setAttribute("list", list);
		
		return "goods";
	}

}
