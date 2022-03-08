<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

		<%--
			범위
			pageContext -->  한 jsp 페이지
			
			request --> 한번 요청-응답
			
			session --> 브라우저 닫을때까지 
			
			applicatio --> 톰캣서버 끌때까지
			
			
			application에 담아두면 contextpath를 써도 가져올 수 있다.
					
		 --%>
		${context}
</body>
</html>