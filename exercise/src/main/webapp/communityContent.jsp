<%@page import="exercise.entity.CommunityVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
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
    
     <script type="text/javascript">
  			function goList(){
  				location.href="/exercise/communityList.do";
  			}
  			function goDel(article_seq){
  				location.href="/exercise/communityDelete.do?article_seq="+article_seq;
  			}
  			function goUpForm(article_seq){
  				location.href="/exercise/communityUpdateForm.do?article_seq="+article_seq;
  			}
  	</script>
    
    
    </head>

    <body>

        <div id="wrap">
            <header id="header">
                <div class="h_cont">
                    <h1><a href="${context}/index.jsp"><img src="./img/logo_1.png" alt="로고"></a></h1>
                    <nav>
                        <ul>
                             <li>
                            <a href="${context}/about.do">About</a>
                        </li>
                        <li>
                        	<c:if test="${empty memVO}">
                            <a href="" onclick="loginAlert()">운동 추천 프로그램</a>
                            </c:if>
                            <c:if test="${!empty memVO}">
                            <a href="${context}/challenge.do">운동 추천 프로그램</a>
                            </c:if>
                        </li>
                        <li>
                        	<c:if test="${empty memVO}">
                            <a href="" onclick="loginAlert()">야외 체육시설</a>                     
                            </c:if>
                            <c:if test="${!empty memVO}">
     		                <a href="http://project-jupyter-2.ddns.net:8852/running?memId=${memVO.memId}">야외 체육시설</a>       
                            </c:if>
                        </li>
                        <li>
                            <a href="${context}/goods.do">운동 용품</a>
                        </li>
                        <li>
                            <a href="${context}/communityList.do">커뮤니티</a>
                        </li>
                        </ul>
                    </nav>
                    <ul class="h_menu">
                        <c:if test="${empty memVO}">
                    	<li><a onclick="loginAlert()"><img src="./img/icon_7.png" alt=""></a></li>
                    	<li><a onclick="loginAlert()"><img src="./img/icon_5.png" alt=""></a></li>
                    	</c:if>
                    	<c:if test="${!empty memVO}">
                    	<li><a href="${context}/myPage.do"><img src="./img/icon_7.png" alt=""></a></li>
                    	<li><a href="${context}/surveyUpdateForm.do"><img src="./img/icon_5.png" alt=""></a></li>
                    	</c:if>
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
                            <a href="" class="link_join" data-clk="log_off.logout" onclick="goOut()">로그아웃</a>
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
                    <dl>
                            <dd>${vo.articleTitle}</dd>
                        </dl>

                    </div>
                    <div class="info">
                        <dl>
                            <dt>번호</dt>
                            <dd>${vo.article_seq}</dd>
                        </dl>
                        <dl>
                            <dt>글쓴이</dt>
                            <dd>${vo.articleWriter}</dd>
                        </dl>
                        <dl>
                            <dt>작성일</dt>
                            <dd>${vo.articleDate}</dd>
                        </dl>
                        <dl>
                            <dt>조회</dt>
                            <dd>${vo.count}</dd>
                        </dl>
                    </div>
                    <div class="cont">
                        <dl>
                        <dd>${fn:replace(vo.articleContent,newLineChar,"<br>")}</dd>
                        </dl>
                    </div>
                </div>
                <div class="bt_wrap">
                    <c:if test="${memVO.memId==vo.memId}">
    				<button class="btn btn-info btn-sm" onclick="goUpForm(${vo.article_seq})">수정</button>
    				<button class="btn btn-warning btn-sm" onclick="goDel(${vo.article_seq})">삭제</button>
    				</c:if>
    				<button class="btn btn-success btn-sm" onclick="goList()">리스트</button>
                </div>
            </div>
        </div>

    </body>

    </html>
</body>

</html>