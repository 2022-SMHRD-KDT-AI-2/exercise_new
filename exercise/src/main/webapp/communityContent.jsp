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
        <title>Ŀ�´�Ƽ����</title>
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
                    <h1><a href="${context}/index.jsp"><img src="./img/logo_1.png" alt="�ΰ�"></a></h1>
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
                        <li><a href="/Sign up/index.html"><img src="./img/icon_7.png" alt=""></a></li>
                        <li><a href="/Survey/index.html"><img src="./img/icon_5.png" alt=""></a></li>
                    </ul>
                </div>
            </header>
        </div>

        <div class="board_wrap">
            <div class="board_title">
                <strong>Ŀ�´�Ƽ</strong>
                <p>�����Ӱ� �̾߱��ϼ���.</p><br><br>
            </div>
            <div class="board_view_wrap">
                <div class="board_view">
                    <div class="title">

                    </div>
                    <div class="info">
                        <dl>
                            <dt>��ȣ</dt>
                            <dd>1</dd>
                        </dl>
                        <dl>
                            <dt>�۾���</dt>
                            <dd>�ڼҿ�</dd>
                        </dl>
                        <dl>
                            <dt>�ۼ���</dt>
                            <dd>2021.1.16</dd>
                        </dl>
                        <dl>
                            <dt>��ȸ</dt>
                            <dd>33</dd>
                        </dl>
                    </div>
                    <div class="cont">
                        �� ������ ���ϴ�<br>
                        �� ������ ���ϴ�<br>
                        �� ������ ���ϴ�<br>
                        �� ������ ���ϴ�<br>
                        �� ������ ���ϴ�<br>
                        �� ������ ���ϴ�<br>
                        �� ������ ���ϴ�<br>

                    </div>
                </div>
                <div class="bt_wrap">
                    <a href="/Community/Community.html" class="on">���</a>
                    <a href="/Community/Sub_1/Ŀ�´�Ƽ����.html">����</a>
                </div>
            </div>
        </div>

    </body>

    </html>
</body>

</html>