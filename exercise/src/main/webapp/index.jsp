<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>����������</title>
<link rel="stylesheet" type="text/css" href="./css/main.css">
<link rel="shortcut icon" href="img/favicon.ico" type="image/x-icon">
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
        rel="stylesheet">
  
</head>
<body>
    <div id="wrap">
        <header id="header">
            <div class="h_cont">
                <h1><a href="/Main/index.html"><img src="img/logo_1.png" alt="�ΰ�"></a></h1>
                <nav>
                    <ul>
                        <li>
                            <a href="/Main/index.html">Home</a>
                        </li>
                        <li>
                            <a href="/Challenge/index.html">� ��õ ���α׷�</a>
                        </li>
                        <li>
                            <a href="/Outdoor/index.html">�߿� ü���ü�</a>
                        </li>
                        <li>
                            <a href="/Sales_site/index.html">� ��ǰ</a>
                        </li>
                        <li>
                            <a href="/Community/Community.html">Ŀ�´�Ƽ</a>
                        </li>
                    </ul>
                </nav>
                <ul class="h_menu">
                    <li><a href="/Login/index.html"><img src="./img/icon_7.png" alt=""></a></li>
                    <li><a href="/Survey/index.html"><img src="./img/icon_5.png" alt=""></a></li>
                </ul>
            </div>
        </header>
        <div id="container">
            <section id="section_1">
                <div class="visual">
                    <div class="slogan">
                        <img src="img/Logo.png" alt="���ڽ��ΰ�">
                    </div>

                </div>
            </section>
            <section id="section_2">
                <div class="visual">
                    <div class="s_menu">
                        <div id="account" class="sc_login">
                            <p class="login_msg"></p>
                            <a href="${context}/loginForm.do" class="link_login" data-clk="log_off.login">�α���</a><br>
                        <br><a href="${context}/signUp.do" class="link_join" data-clk="log_off.registration">ȸ������</a>
                            </div>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/visual_item.png" alt="">
                    </div>
                </div>
                <!-- cate_img ���� �߿�!! ������ ���콺���� �� �ٸ� �̹��� ������ ��������� span���� ���� ���� �����س��� -->
            </section>
            


        </div>

    </div>
</body>
</html>