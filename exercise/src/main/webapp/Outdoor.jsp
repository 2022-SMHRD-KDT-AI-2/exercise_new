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
    <title>Outdoor</title>
    <link rel="stylesheet" href="./css/Outdoor.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" >
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
                            <a href="#">운동 용품</a>
                        </li>
                        <li>
                            <a href="${context}/community.jsp">커뮤니티</a>
                        </li>
                    </ul>
                </nav>
                <ul class="h_menu">
                    <li><a href="/Sign up/index.html"><img src="./img/icon_7.png" alt=""></a></li>
                    <li><a href="/Survey/index.html"><img src="./img/icon_5.png" alt=""></a></li>
                </ul>
            </div>
        </header>
        <div id="container">
            <section id="section_1">
                <div class="s1_cont">
                    <div class="box">
                        <div class="text">강북 웰빙 스포츠 센터</div>
                    <div class="text">심사 여부 : 심사</div>
                    <div class="text">이용 요금  : 165,500원</div>
                    <div class="button"><button>바로가기</button></div>
                    </div>
                    <div class="box">
                        <div class="text">강북 웰빙 스포츠 센터</div>
                        <div class="text">심사 여부 : 심사</div>
                        <div class="text">이용 요금  : 165,500원</div>
                        <div class="button"><button>바로가기</button></div>
                    </div>
                    <div class="box">
                        <div class="text">강북 웰빙 스포츠 센터</div>
                        <div class="text">심사 여부 : 심사</div>
                        <div class="text">이용 요금  : 165,500원</div>
                        <div class="button"><button>바로가기</button></div>
                    </div>
              
            </div>
            <div class="s1_cont">
                <div class="box">
                    <div class="text">강북 웰빙 스포츠 센터</div>
                    <div class="text">심사 여부 : 심사</div>
                    <div class="text">이용 요금  : 165,500원</div>
                    <div class="button"><button>바로가기</button></div>
                </div>
                <div class="box">
                    <div class="text">강북 웰빙 스포츠 센터</div>
                    <div class="text">심사 여부 : 심사</div>
                    <div class="text">이용 요금  : 165,500원</div>
                    <div class="button"><button>바로가기</button></div>
                </div>
                <div class="box">
                    <div class="text">강북 웰빙 스포츠 센터</div>
                    <div class="text">심사 여부 : 심사</div>
                    <div class="text">이용 요금  : 165,500원</div>
                    <div class="button"><button>바로가기</button></div>
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