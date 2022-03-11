<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <html lang="ko"><head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티</title>
    <link rel="stylesheet" href="./css/community.css">
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
                    <h1><a href="/Main/index.html"><img src="./img/logo_1.png" alt="로고"></a></h1>
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
                        <li><a href="/Login/index.html"><img src="./img/icon_5.png" alt=""></a></li>
                    </ul>
                </div>
            </header>
        </div>
        <div class="board_wrap">
            <div class="board_title">
                <strong>커뮤니티</strong>
                <p>자유롭게 이야기하세요</p><br><br>
            </div>
            <div class="board_write_wrap">
                <div class="board_write">
                    <div class="title">
                        <dl>
                            <dt>제목</dt>
                            <dd><input type="text" placeholder="제목 입력"></dd>
                        </dl>
                    </div>
                    <div class="info">
                        <dl>
                            <dt>글쓴이</dt>
                            <dd><input type="text" placeholder="글쓴이 입력"></dd>
                        </dl>
                        <dl>
                            <dt>비밀번호</dt>
                            <dd><input type="password" placeholder="비밀번호 입력"></dd>
                        </dl>
                    </div>
                    <form method="post" enctype="multipart/form-data">
                        <div class="button">
                            <label for="chooseFile">
                                사진을 업로드하세요
                            </label>
                        </div>
                        <input type="file" id="chooseFile" name="chooseFile" accept="image/*" onchange="loadFile(this)">
                    </form>
                    <hr>
                    <div class="cont">
                        <textarea placeholder="내용 입력"></textarea>
                    </div>
                </div>
                <div class="bt_wrap">
                    <a href="Q&A보기.html" class="on">등록</a>
                    <a href="Q&A.html">취소</a>
                </div>
            </div>
        </div>
    
    </body></html>
</body>
</html>