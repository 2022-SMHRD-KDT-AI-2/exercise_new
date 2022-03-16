<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <html lang="ko"><head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="./css/index.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
        rel="stylesheet">

  <script type="text/javascript">
  	function goOut(){
  		location.href="/exercise/logout.do"
  	}
  	
  	function loginAlert(){
  		alert("로그인이 필요합니다.")
  	}
  </script>  
</head>
<body>
    <div id="wrap">
        <header id="header">
            <div class="h_cont">
                <h1><a href="${context}/index.jsp"><img src="img/logo_1.png" alt="로고"></a></h1>
                <nav>
                    <ul>
                        <li>
                            <a href="${context}/about.do">About</a>
                        </li>
                        <li>
                            <a href="${context}/challenge.do">운동 추천 프로그램</a>
                        </li>
                        <li>
                            <a href="http://121.147.185.152:9000/running?memId=${memVO.memId}">야외 체육시설</a>
                        </li>
                        <li>
                            <a href="${context}/goods.jsp">운동 용품</a>
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
                    <li><a href="/Login/index.html"><img src="./img/icon_7.png" alt=""></a></li>
                    <li><a href="${context}/surveyUpdateForm.do"><img src="./img/icon_5.png" alt=""></a></li>
                    </c:if>
                </ul>
            </div>
        </header>
        <div id="container">
            <section id="section_1">
                <div class="visual">
                    <div class="slogan">
                        <img src="img/Logo.png" alt="글자슬로건">
                    </div>
                </div>
            </section>
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
        </div>
    </div>
</body>
</html>