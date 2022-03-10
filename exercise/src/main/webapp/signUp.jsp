<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입</title>
<link rel="stylesheet" type="text/css" href="./css/signUp.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
      rel="stylesheet">
</head>
<body>
    <!-- header -->
    <div id="header">
         <a><img src="./img/logo2.jpg" id="logo"></a>
    </div>

    <!-- wrapper -->
    <div id="wrapper">

        <!-- content-->
        <div id="content">

            <!-- Nick -->
            <div>
                <h3 class="join_title">
                    <label for="nick">닉네임</label>
                </h3>
                <span class="box int_nick">
                    <input type="text" id="id" class="int" maxlength="20">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id">아이디</label>
                </h3>

                <span class="box int_id">
                    <input type="text" id="id" class="int" maxlength="20">
                </span>
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                <span class="box int_pass">
                    <input type="text" id="pswd1" class="int" maxlength="20">
                    <span id="alertTxt">사용불가</span>
                   <img src="./img/pw.png" id="pswd1_img1" class="pswdImg">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW2 -->
            <div>
                <h3 class="join_title"><label for="pswd2">비밀번호 재확인</label></h3>
                <span class="box int_pass_check">
                    <input type="text" id="pswd2" class="int" maxlength="20">
                 <img src="./img/pw.png" id="pswd1_img1" class="pswdImg">
                </span>
                <span class="error_next_box"></span>
            </div>
            
            <!-- GENDER(성별) -->
            <div>
                <h3 class="join_title"><label for="gender">성별</label></h3>
                <span class="box gender_code">
                    <select id="gender" class="sel">
                        <option>성별</option>
                        <option value="M">남자</option>
                        <option value="F">여자</option>
                    </select>                            
                </span>
            </div>

            <!--ADDR(주소)-->

            <div id="bir_mm">
                <h3 class="join_title">
                    <label for="addr">주소</label>
                </h3>
                <div class="addr">
                    <div class="box1">
                        <select id="city" class="sel">
                            <option id="input_city">지역</option>
                            <option value="01">서울특별시</option>
                            <option value="02">광주광역시</option>
                        </select>
                    </div>
                    <div class="box2">
                        <select id="city" class="sel">
                            <option id="input_city">지역</option>
                            <option value="01">서울특별시</option>
                            <option value="02">광주광역시</option>
                        </select>
                    </div>
                </div>



                    </span>
                </div>

                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="button" id="btnJoin">
                        <span>가입하기</span>
                    </button>
                </div>



            </div>
            <!-- content-->

        </div>
        <!-- wrapper -->
        <script src="main.js"></script>
</body>
</html>