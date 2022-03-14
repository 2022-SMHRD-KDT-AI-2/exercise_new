<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>About</title>
<link rel="stylesheet" type="text/css" href="./css/about.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" >
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
      rel="stylesheet">
</head>
<body>
	<div id="wrap">
        <header id="header">
            <div class="h_cont">
                <h1><a href="/Main/index.html"><img src="/Challenge/img/logo_1.png" alt="�ΰ�"></a></h1>
                <nav>
                    <ul>
                        <li>
                            <a href="/Main/index.html">Home</a>
                        </li>
                        <li>
                            <a href="/Challenge/index.html">� ��õ ���α׷�</a>
                        </li>
                        <li>
                            <a href="/Outdoor/">�߿� ü���ü�</a>
                        </li>
                        <li>
                            <a href="/Sales_site/">� ��ǰ</a>
                        </li>
                        <li>
                            <a href="/Community/Community.html">Ŀ�´�Ƽ</a>
                        </li>
                    </ul>
                </nav>
                <ul class="h_menu">
                    <li><a href="/Sign up/index.html"><img src="/Challenge/img/icon_7.png" alt=""></a></li>
                    <li><a href="/Survey/index.html"><img src="/Challenge/img/icon_5.png" alt=""></a></li>
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
                    <a href="${context}/loginForm.do" class="link_login" data-clk="log_off.login">�α���</a><br>
                       <br><a href="${context}/signUp.do" class="link_join" data-clk="log_off.registration">ȸ������</a>
                    </c:if>
                    <c:if test="${!empty memVO}">
                    <label>${memVO.memId}</label><br>
                    <a href="${context}/index.jsp" class="link_join" data-clk="log_off.logout" onclick="goOut()">�α׾ƿ�</a>
                    </c:if>
                </div>
            </div>
            <div class="item">
                <img src="img/visual_item.png" alt="">
            </div>
        </div>
    </section>

    <section id="so1">
        <div class ="gae1">
            <img src="/img/virus.png"> 
            <div id="explain">
                <h1>�������縦 ���� ���� �������� �����մϴ�</h1><br>
                <p>�α��� �� �������簡 �̷������ ����, �����, ������� ���� ����α׷��� �����Ǿ����ϴ�. 
                    �α��� �� �������簡 �̷������ ����, �����, ������� ���� ����α׷��� �����Ǿ����ϴ�.
                   
                </p>
                
                
            </div>
        </div>
    </section>

    <section id="so2">
        <div class="gae2">
            <img src="/Challenge/img/visual_bg.png"> 
            <div id="explain">
                <h1>�������縦 ���� ���� �������� �����մϴ�</h1><br>
                <p>�α��� �� �������簡 �̷������ ����, �����, ������� ���� ����α׷��� �����Ǿ����ϴ�. </p>
            </div>
        </div>
    </section>

    <section id="so3">
        <div class="gae3">
            <img src="/Challenge/img/visual_bg.png"> 
            <div id="explain">
                <h1>�������縦 ���� ���� �������� �����մϴ�</h1><br>
                <p>�α��� �� �������簡 �̷������ ����, �����, ������� ���� ����α׷��� �����Ǿ����ϴ�. </p>
            </div>
        </div>
    </section>

    <section id="so4">
        <div class="gae4">
            <img src="/Challenge/img/visual_bg.png"> 
            <div id="explain">
                <h1>�������縦 ���� ���� �������� �����մϴ�</h1><br>
                <p>�α��� �� �������簡 �̷������ ����, �����, ������� ���� ����α׷��� �����Ǿ����ϴ�. </p>
            </div>
        </div>
    </section>
    
</body>
</html>