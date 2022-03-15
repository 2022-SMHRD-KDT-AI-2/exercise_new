package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.GoodsVO;
import exercise.model.GoodsDAO;

public class GoodsController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
														throws ServletException, IOException {
//		GoodsDAO dao = new GoodsDAO();
//		List<GoodsVO> list = dao.selectAll();
//		request.setAttribute("list", list);
		
		String g_name = request.getParameter("g_name");
		int g_price = Integer.parseInt(request.getParameter("g_price"));
		int g_delivery = Integer.parseInt(request.getParameter("g_delivery"));
		GoodsVO vo = new GoodsVO();
		GoodsDAO dao = new GoodsDAO();
		vo.setG_name(g_name);
		vo.setG_price(g_price);
		vo.setG_delivery(g_delivery);
		dao.Goods(vo);
		return "redirect:/goods.jsp";
	}

}
