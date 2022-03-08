package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.BoardVO;
import exercise.model.BoardDAO;

public class BoardContentController implements Controller { // interface ��� - �������� ��������
		@Override
		public String requestHandler(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			int idx = Integer.parseInt(request.getParameter("idx")); // "29"(string) --> 29(int)
			BoardDAO dao = new BoardDAO();
			BoardVO vo = dao.getByIdx(idx);
			// ��ȸ�� ����(count=count+1)
			dao.addCount(idx);
			
			// 3. View�� ���� (JSP) - (��ü���ε�, ������)
			request.setAttribute("vo", vo); // vo -----> vo[29,�Խ���,.....]
			return "boardContent";
		}
		
	
}
