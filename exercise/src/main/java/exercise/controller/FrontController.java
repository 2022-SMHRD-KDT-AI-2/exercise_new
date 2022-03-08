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
		//한글깨짐방지 인코딩
		request.setCharacterEncoding("utf-8");
		//1. 클라이언트의 요청(URL)을 확인(파악)하는 작업
		// /boardList.do
		String reqPath = request.getRequestURI();
		//System.out.println(reqPath);
		String cpath = request.getContextPath();
		//System.out.println(cpath);
		String command = reqPath.substring(cpath.length());
		System.out.println(command);
		//2. 요청에 따른 분기작업(if~else~)
		BoardDAO dao = new BoardDAO();
		//***View의 경로를 저장하는 변수***
		String nextView = null;
		Controller controller = null;
		HandlerMapping mapping = new HandlerMapping();
		controller = mapping.getController(command);
		nextView = controller.requestHandler(request, response); 
		//여기서 nextView의 정보를 보고 => forward or redirect를 하기
		if(nextView!=null) {
			if (nextView.indexOf("redirect:")!=-1) {
				//redirect
				nextView = nextView.split(":")[1];
				response.sendRedirect("/exercise"+nextView);
			} else {
				//뷰의논리적인이름(boardList)->뷰의물리적인이름(경로)으로 변경시키는 API : ViewResolver
				//forward
				RequestDispatcher rd = request.getRequestDispatcher(ViewResolver.makeURL(nextView));
				rd.forward(request, response);
			}	
		}
	}

}
