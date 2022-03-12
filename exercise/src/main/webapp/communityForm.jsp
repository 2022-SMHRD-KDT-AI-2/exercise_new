<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
   pageContext.setAttribute("context", request.getContextPath());
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>커뮤니티보기</title>
        <link rel="stylesheet" type="text/css" href="./css/community.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link
            href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
            rel="stylesheet">
    </head>

    <body>

        <div id="wrap">
            <header id="header">
                <div class="h_cont">
                    <h1><a href="${context}/index.jsp"><img src="./img/logo_1.png" alt="로고"></a></h1>
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
                            <a href="#">운동 용품</a>
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
        </div>
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
                <p>자유롭게 이야기하세요.</p><br><br>
            </div>
            <div class="board_view_wrap">
                <div class="board_view">
                    <div class="title">

                    </div>
                    <div class="info">
                        <dl>
                            <dt>번호</dt>
                            <dd>1</dd>
                        </dl>
                        <dl>
                            <dt>글쓴이</dt>
                            <dd>박소연</dd>
                        </dl>
                        <dl>
                            <dt>작성일</dt>
                            <dd>2021.1.16</dd>
                        </dl>
                        <dl>
                            <dt>조회</dt>
                            <dd>33</dd>
                        </dl>
                    </div>
                    <div class="cont">
                        글 내용이 들어갑니다<br>
                        글 내용이 들어갑니다<br>
                        글 내용이 들어갑니다<br>
                        글 내용이 들어갑니다<br>
                        글 내용이 들어갑니다<br>
                        글 내용이 들어갑니다<br>
                        글 내용이 들어갑니다<br>

                    </div>
                </div>
                <div class="bt_wrap">
                    <a href="${context}/communityList.jsp" class="on">목록</a>
                    <a href="${context}/communityUpdate.jsp">수정</a>
                </div>
            </div>
        </div>

    </body>

    </html>
</body>

</html>