<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <metla http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ù������</title>
    <link rel="stylesheet" href="/resources/css/home.css"/>
    
    
</head>
<body>
    <div id="wrap">
        <container class="container">
            <div id="section_1"><a href=""><img src="../img/HP.png" alt=""></a></section_1>
            <!-- *** Healthy Pleasure�� �����ϸ� ȸ������(join.jsp)�� �Ѿ�� ***-->
            <div id="section_2"><button><a href="${context}/memberForm.do"><i>Healthy Pleasure</i></a></button></section_2>
        </container>
    </div>
    
</body>
</html>