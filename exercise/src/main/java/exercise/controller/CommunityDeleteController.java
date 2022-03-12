package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.model.CommunityDAO;

public class CommunityDeleteController implements Controller {
	
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		int idx = Integer.parseInt(request.getParameter("idx")); // "20" -> 20
		CommunityDAO dao = new CommunityDAO();
		dao.communityDelete(idx); // ���� -> �ٽ� ����Ʈ�������� ������ ������
		return "redirect:/communityList.do";
	}
}
