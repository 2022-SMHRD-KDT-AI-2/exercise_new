package exercise.controller;

import java.io.IOException;
import java.util.List;
import java.util.logging.Handler;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import exercise.entity.CommunityVO;
import exercise.model.CommunityDAO;

public class CommunityFrontController extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("utf-8");
		String reqPath=request.getRequestURI();
		String cpath=request.getContextPath(); 
		String command=reqPath.substring(cpath.length());
		System.out.println(command); 
		CommunityDAO dao=new CommunityDAO();	
		String nextView=null;
		Controller controller=null;
		HandlerMapping mapping=new HandlerMapping();
	    controller=mapping.getController(command);
	    nextView=controller.requestHandler(request, response);
		if(nextView!=null) {
	         if(nextView.indexOf("redirect:")!=-1) {
	        	 nextView=nextView.split(":")[1];   
	          response.sendRedirect("/web"+nextView); // 1. redirect
	         }else {
	          //뷰의논리적인이름(boardList)->뷰의물리적인이름(경로)으로 변경시키는 API : ViewResolver
	        	 RequestDispatcher rd = request.getRequestDispatcher(ViewResolver.makeURL(nextView));
	        	 rd.forward(request, response);
	         }
	     }
	}//_
}//_

