<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>About</title>
    <link rel="stylesheet" href="./css/about2.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
    <link
        href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
        rel="stylesheet">
        <style>
            .vl {
              border-left: 6px dashed rgba(0, 0, 0, 0.274);
              height: 670px;
              margin-left:1020px;
              margin-top:-540px;
            }
            </style>


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
                            <a href="${context}/logout.do" class="link_join" data-clk="log_off.logout" >로그아웃</a>
                            </c:if>
                        </div>
            </div>
            <div class="item">
                <img src="img/visual_item.png" alt="">
            </div>
        </div>
    </section>

    <section id="so5">
        <div class="hp">
            <div class="service">
                <h1>헬시플레저는<br></h1>
                <strong>최고의 운동프로그램 SERVICE!</strong><br>
                <h2> 운동 프로그램은 물론 실외 운동을 즐기는 사용자들을 위해 야외체육시설 정보까지 제공합니다!</h2>
            </div> 

            <div class="sevice1">
                <div><img src="img/workout.png"></div>
                <div id="tit">운동 추천 프로그램</div><br><br>
                <div id="txt">설문조사를 통해 사용자가 원하는 운동 종류, 운동 레벨 그리고 성별까지 고려한 운동 영상을 제공합니다!</div>
            </div> 

            <div class="sevice2">
                <div><img src="img/rope.png"></div>
                <div id="tit">야외 체육 시설</div><br><br>
                <div id="txt">사용자의 거주 지역을 고려하여 가까운<br>체육시설뿐만 아니라 공원과 러닝코스 정보를 제공합니다!</div>
            </div> 

            <div class="sevice3">
                <div><img src="img/man.png"></div>
                <div id="tit">마이페이지</div><br><br>
                <div id="txt">제공한 정보 중 좋아요한 영상과 시설들을 확인할 수 있습니다! 현재 키와 몸무게를 입력하여 BMI도 확인해 보세요!</div>
            </div> 
        </div>
    </section> 
    </body>
</html>