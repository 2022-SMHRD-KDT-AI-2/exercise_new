package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.BoardVO;
import exercise.model.BoardDAO;

public class BoardContentController implements Controller { // interface 사용 - 유연성이 떨어진다
		@Override
		public String requestHandler(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
			int idx = Integer.parseInt(request.getParameter("idx")); // "29"(string) --> 29(int)
			BoardDAO dao = new BoardDAO();
			BoardVO vo = dao.getByIdx(idx);
			// 조회수 누적(count=count+1)
			dao.addCount(idx);
			
			// 3. View와 연동 (JSP) - (객체바인딩, 포워딩)
			request.setAttribute("vo", vo); // vo -----> vo[29,게시판,.....]
			return "boardContent";
		}
		
	
}
