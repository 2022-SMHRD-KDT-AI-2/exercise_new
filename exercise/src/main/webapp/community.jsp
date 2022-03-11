<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>challenge</title>
    <link rel="stylesheet" href="./css/challenge.css">
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
                <h1><a href="${context}/index.jsp"><img src="img/logo_1.png" alt="�ΰ�"></a></h1>
                <nav>
                       <ul>
                        <li>
                            <a href="${context}/index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="${context}/challenge.jsp">� ��õ ���α׷�</a>
                        </li>
                        <li>
                            <a href="${context}/Outdoor.jsp">�߿� ü���ü�</a>
                        </li>
                        <li>
                            <a href="/Sales_site/index.html">� ��ǰ</a>
                        </li>
                        <li>
                            <a href="${context}/community.jsp">Ŀ�´�Ƽ</a>
                        </li>
                    </ul>
                </nav>
                <ul class="h_menu">
                    <li><a href="#"><img src="./img/icon_7.png" alt=""></a></li>
                    <li><a href="#"><img src="./img/icon_5.png" alt=""></a></li>
                </ul>
            </div>
        </header>
        <div id="container">
            <section id="section_1">
                <ul class="video_1">
                    <li><iframe width="540" height="315" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="text_box"><a href="">�ʸ� ���� ȥ����� �������� �Ҽ�������?<br>������_Familly sory <br>
                                ��ȸ��2.3��ȸ 19�ð���</a></div>
                    </li>
                    <li><iframe width="540" height="315" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="text_box"><a href="">�ʸ� ���� ȥ����� �������� �Ҽ�������?<br>������_Familly sory <br>
                                ��ȸ��2.3��ȸ 19�ð���</a></div>
                    </li>
                   
                </ul>
                <ul class="video_2">
                    <li><iframe width="540" height="315" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="text_box"><a href="">�ʸ� ���� ȥ����� �������� �Ҽ�������?<br>������_Familly sory <br>
                                ��ȸ��2.3��ȸ 19�ð���</a></div>
                    </li>
                    <li><iframe width="540" height="315" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="text_box"><a href="">�ʸ� ���� ȥ����� �������� �Ҽ�������?<br>������_Familly sory <br>
                                ��ȸ��2.3��ȸ 19�ð���</a></div>
                    </li>
                </ul>
                <ul class="video_3">
                    <li><iframe width="540" height="315" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="text_box"><a href="">�ʸ� ���� ȥ����� �������� �Ҽ�������?<br>������_Familly sory <br>
                                ��ȸ��2.3��ȸ 19�ð���</a></div>
                    </li>
                    <li><iframe width="540" height="315" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="text_box"><a href="">�ʸ� ���� ȥ����� �������� �Ҽ�������?<br>������_Familly sory <br>
                                ��ȸ��2.3��ȸ 19�ð���</a></div>
                    </li>
                   
                </ul>
                </section>
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

        </div>

    </div>
</body>

</html>