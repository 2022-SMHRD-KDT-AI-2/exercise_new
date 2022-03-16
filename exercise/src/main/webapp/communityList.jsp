<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>커뮤니티</title>
<link rel="stylesheet" type="text/css" href="./css/community.css">
<link
        href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
        rel="stylesheet">
</head>
<body>
<div id="wrap">
        <header id="header">
            <div class="h_cont">
                <h1><a href="${context}/index.jsp"><img src="img/logo_1.png" alt="로고"></a></h1>
                <nav>
                       <ul>
                        <li>
                            <a href="${context}/index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="${context}/challenge.jsp">운동 추천 프로그램</a>
                        </li>
                        <li>
                            <a href="${context}/Outdoor.jsp">야외 체육시설</a>
                        </li>
                        <li>
                            <a href="${context}/goods.do">운동 용품</a>
                        </li>
                        <li>
                            <a href="${context}/communityList.jsp">커뮤니티</a>
                        </li>
                    </ul>
                </nav>
                <ul class="h_menu">
                    <li><a href="#"><img src="./img/icon_7.png" alt=""></a></li>
                    <li><a href="${context}/survey.jsp"><img src="./img/icon_5.png" alt=""></a></li>
                </ul>
            </div>
        </header>
       <div id="container">
       <section id="section_2">
                <div class="visual">
                    <div class="s_menu">
                        <div id="account" class="sc_login">
                            <div class="login_msg"></div>
                            <c:if test="${empty memVO}">
                            <a href="${context}/loginForm.do" class="link_login" data-clk="log_off.login">로그인</a><br>
                       		<br><a href="${context}/signUp.do" class="link_join" data-clk="log_off.registration">회원가입</a>
                            </c:if>
                            <c:if test="${!empty memVO}">
                            <label>${memVO.memId}</label><br>
                            <a href="${context}/index.jsp" class="link_join" data-clk="log_off.logout" onclick="goOut()">로그아웃</a>
                            </c:if>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/visual_item.png" alt="">
                    </div>
                </div>
            </section>
        <div class="board_wrap">
            <div class="board_title">
                <strong>커뮤니티</strong>
                <p>자유롭게 이야기하세요</p><br><br>
            </div>
            <div class="board_list_wrap">
                <div class="board_list">
                    <div class="top">
                        <div class="num">번호</div>
                        <div class="title">제목</div>
                        <div class="writer">작성자</div>
                        <div class="date">작성일</div>
                        <div class="count">조회</div>
                    </div>
                    <!--  -->
                    <c:forEach var="vo" items="${list}">
	
                    <div>
                        <div class="num">${vo.article_seq}</div>
                        <div class="title"><a href="${context}/communityContent.do?article_seq=${vo.article_seq}">${vo.articleTitle}</a></div>
                        <div class="writer">${vo.memId}</div>
                        <div class="date">${vo.articleDate.substring(0,10)}</div>
                        <div class="count">${vo.count}</div>
                    </div>
	    	  </c:forEach>
	    	  
	      
             </div>
                <div class="board_page">
                    <a href="#" class="bt first">&lt;&lt;</a>
                    <a href="#" class="bt prev">&lt;</a>
                    <a href="#" class="num on">1</a>
                    <a href="#" class="num">2</a>
                    <a href="#" class="num">3</a>
                    <a href="#" class="num">4</a>
                    <a href="#" class="num">5</a>
                    <a href="#" class="bt next">&gt;</a>
                    <a href="#" class="bt last">&gt;&gt;</a>
                </div>
                <c:if test="${!empty memVO}">
                <div class="bt_wrap">
                    <a href="${context}/communityForm.do" class="on">등록</a>
                    <!--<a href="#">수정</a>-->
                </div>
                </c:if>
            </div>
        </div>
        </div>
    </body>
</html>