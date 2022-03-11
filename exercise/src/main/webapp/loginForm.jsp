<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
<link rel="stylesheet" type="text/css" href="./css/login.css">
</head>
<body>
    <div id="header">
        <a><img src="./img/logo2.jpg" id="logo"></a>
    </div>
    <div id="wrapper">
        <div id="content">
        <form class="form-inline" action="${context}/login.do" method="post">
            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id"></label>
                </h3>
                <span class="box int_id">
                    <input type="text" id="memId" name="memId" class="int" maxlength="20" placeholder="ID">
                </span>
            </div>
            <!-- PW -->
            <div>
                <h3 class="join_title"><label for="pswd1"></label></h3>
                <span class="box int_pass">
                    <input type="password" id="memPwd" name="memPwd" class="int" maxlength="20" placeholder="Password">
                    <img src="./img/pw.png" id="pswd1_img1" class="pswdImg">
                </span>
            </div>

             <!-- LOGIN BTN-->
             <div class="btn_area1">
                <button type="submit" id="btnJoin">
                <!-- *** Login버튼을 누르면 survey.jsp(설문조사)로 넘어갑니다 *** -->
                    <a href="${context}/index.jsp">Login</a>
                </button>
            </div><!-- 회원가입 BTN-->
             <div class="btn_area1">
                <button type="button" id="btnJoin">
                <!-- *** Login버튼을 누르면 survey.jsp(설문조사)로 넘어갑니다 *** -->
                    <a href="${context}/signUp.do">SignUp</a>
                </button>
            </div>
          </form>  
        </div>
    </div>
    <!-- wrapper -->
    <script src="main.js"></script>
</body>
</html>