package exercise.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.BoardVO;
import exercise.model.BoardDAO;

public class BoardInsertController implements Controller {
	@Override
	public String requestHandler(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		//�Ķ���ͼ���(VO), �ѱ۱�������
		String title=request.getParameter("title");
	    String content=request.getParameter("content");
	    String writer=request.getParameter("writer");
	    String memId=request.getParameter("memId");
	    BoardVO vo=new BoardVO(); //
	    vo.setTitle(title);
	    vo.setContent(content);
	    vo.setWriter(writer);
	    vo.setMemId(memId);
	    BoardDAO dao = new BoardDAO();
	    dao.boardInsert(vo); //���� -> �ٽ� ����Ʈ �������� ������
	    return "redirect:/boardList.do";
	
	}
	
}
