<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
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
                                <a href="/Main/index.html">Home</a>
                            </li>
                            <li>
                                <a href="/Challenge/index.html">운동 추천 프로그램</a>
                            </li>
                            <li>
                                <a href="/Outdoor/index.html">야외 체육시설</a>
                            </li>
                            <li>
                                <a href="/Sales_site/index.html">운동 용품</a>
                            </li>
                            <li>
                                <a href="/Community/Community.html">커뮤니티</a>
                            </li>
                        </ul>
                    </nav>
                    <ul class="h_menu">
                        <li><a href="/Sign up/index.html"><img src="./img/icon_7.png" alt=""></a></li>
                        <li><a href="/Survey/index.html"><img src="./img/icon_5.png" alt=""></a></li>
                    </ul>
                </div>
            </header>
        </div>

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
                    <a href="/Community/Community.html" class="on">목록</a>
                    <a href="/Community/Sub_1/커뮤니티수정.html">수정</a>
                </div>
            </div>
        </div>

    </body>

    </html>
</body>

</html>