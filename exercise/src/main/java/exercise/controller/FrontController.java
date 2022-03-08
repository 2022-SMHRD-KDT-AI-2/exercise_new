package exercise.controller;

import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.model.BoardDAO;

@WebServlet("*.do")
public class FrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//�ѱ۱������� ���ڵ�
		request.setCharacterEncoding("utf-8");
		//1. Ŭ���̾�Ʈ�� ��û(URL)�� Ȯ��(�ľ�)�ϴ� �۾�
		// /boardList.do
		String reqPath = request.getRequestURI();
		//System.out.println(reqPath);
		String cpath = request.getContextPath();
		//System.out.println(cpath);
		String command = reqPath.substring(cpath.length());
		System.out.println(command);
		//2. ��û�� ���� �б��۾�(if~else~)
		BoardDAO dao = new BoardDAO();
		//***View�� ��θ� �����ϴ� ����***
		String nextView = null;
		Controller controller = null;
		HandlerMapping mapping = new HandlerMapping();
		controller = mapping.getController(command);
		nextView = controller.requestHandler(request, response); 
		//���⼭ nextView�� ������ ���� => forward or redirect�� �ϱ�
		if(nextView!=null) {
			if (nextView.indexOf("redirect:")!=-1) {
				//redirect
				nextView = nextView.split(":")[1];
				response.sendRedirect("/exercise"+nextView);
			} else {
				//���ǳ������̸�(boardList)->���ǹ��������̸�(���)���� �����Ű�� API : ViewResolver
				//forward
				RequestDispatcher rd = request.getRequestDispatcher(ViewResolver.makeURL(nextView));
				rd.forward(request, response);
			}	
		}
	}

}
