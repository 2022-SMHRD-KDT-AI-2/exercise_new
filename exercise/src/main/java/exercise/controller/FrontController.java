package exercise.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.model.CommunityDAO;

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
		CommunityDAO dao = new CommunityDAO();
		//***View�� ��θ� �����ϴ� ����***
		String nextView = null;
		Controller controller = null;
		HandlerMapping mapping = new HandlerMapping();
		controller = mapping.getController(command);
		nextView = controller.requestHandler(request, response); 
		System.out.println("testNextView"+nextView);
		
		//���⼭ nextView�� ������ ���� => forward or redirect�� �ϱ�
		if(nextView!=null) {
			if (nextView.indexOf("redirect:")!=-1) {
				//redirect
				nextView = nextView.split(":")[1];
				
				response.sendRedirect("/exercise"+nextView);
				
			}else if(nextView.indexOf("flask")!=-1) {
				response.sendRedirect("http://121.147.185.152:9000/youtubeSearch?num=1");
			}
			else {
				//���ǳ������̸�(boardList)->���ǹ��������̸�(���)���� �����Ű�� API : ViewResolver
				//forward
				RequestDispatcher rd = request.getRequestDispatcher(ViewResolver.makeURL(nextView));
			
				rd.forward(request, response);
			
			
			}	
		}
		else {
			System.out.println("test");
			//response.sendRedirect("signUp.jsp");
//			PrintWriter out = response.getWriter();
//			out.print("test");
			
		}
	}

}
