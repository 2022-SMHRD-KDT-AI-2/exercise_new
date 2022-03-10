<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id"></label>
                </h3>
                <span class="box int_id">
                    <input type="text" id="id" class="int" maxlength="20" placeholder="ID">
                </span>
            </div>
            <!-- PW -->
            <div>
                <h3 class="join_title"><label for="pswd1"></label></h3>
                <span class="box int_pass">
                    <input type="text" id="pswd1" class="int" maxlength="20" placeholder="Password">
                    <img src="./img/pw.png" id="pswd1_img1" class="pswdImg">
                </span>
            </div>

             <!-- LOGIN BTN-->
             <div class="btn_area1">
                <button type="button" id="btnJoin">
                <!-- *** Login��ư�� ������ survey.jsp(��������)�� �Ѿ�ϴ� *** -->
                    <a href="survey.do">Survey</a>
                </button>
            </div>

            <!-- JOIN BTN-->
            <div class="btn_area2">
                <button type="button" id="btnSignUp">
                <!-- *** Sign Up�� ������ signUp.jsp(ȸ������)�� �Ѿ�ϴ� *** -->
                   <a href="signUp.do">Sign up</a> 
                </button>
            </div>

        </div>
    </div>
    <!-- wrapper -->
    <script src="main.js"></script>
</body>
</html>