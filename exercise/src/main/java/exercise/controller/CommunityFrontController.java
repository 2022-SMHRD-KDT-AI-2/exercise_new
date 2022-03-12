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
		//1. Ŭ���̾�Ʈ�� ��û(URL)�� Ȯ��(�ľ�)�ϴ� �۾�
		// communityList.do
		String reqPath=request.getRequestURI();
		//System.out.println(reqPath); // /web/communityDelete.do
		String cpath=request.getContextPath(); 
		//System.out.println(cpath); // /web
		String command=reqPath.substring(cpath.length());
		System.out.println(command); // /communityUpdate.do		
		//2. ��û�� ���� �б��۾�
		CommunityDAO dao=new CommunityDAO();	
		//***View�� ��θ� �����ϴ� ����***
		String nextVew=null;
		Controller controller=null;
		// HandlerMapping(�ڵ鷯�����۾�)=>������ API(class)
		HandlerMapping mapping=new HandlerMapping();
	    controller=mapping.getController(command);
	    nextVew=controller.requestHandler(request, response);
		// 3. ���⼭ nextView�� ������ ���� => forward or redirect�� �ϱ�
		if(nextVew!=null) {
	         if(nextVew.indexOf("redirect:")!=-1) {
	          nextVew=nextVew.split(":")[1];   
	          response.sendRedirect("/web"+nextVew); // 1. redirect
	         }else {
	          //���ǳ������̸�(boardList)->���ǹ��������̸�(���)���� �����Ű�� API : ViewResolver
	          RequestDispatcher rd=request.getRequestDispatcher(ViewResolver.makeURL(nextVew));
	          rd.forward(request, response); // 2. forward
	         }
	     }
	}//_
}//_

