<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������</title>
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
                    <label for="nick">�г���</label>
                </h3>
                <span class="box int_nick">
                    <input type="text" id="id" class="int" maxlength="20">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- ID -->
            <div>
                <h3 class="join_title">
                    <label for="id">���̵�</label>
                </h3>

                <span class="box int_id">
                    <input type="text" id="id" class="int" maxlength="20">
                </span>
            </div>

            <!-- PW1 -->
            <div>
                <h3 class="join_title"><label for="pswd1">��й�ȣ</label></h3>
                <span class="box int_pass">
                    <input type="text" id="pswd1" class="int" maxlength="20">
                    <span id="alertTxt">���Ұ�</span>
                   <img src="./img/pw.png" id="pswd1_img1" class="pswdImg">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW2 -->
            <div>
                <h3 class="join_title"><label for="pswd2">��й�ȣ ��Ȯ��</label></h3>
                <span class="box int_pass_check">
                    <input type="text" id="pswd2" class="int" maxlength="20">
                 <img src="./img/pw.png" id="pswd1_img1" class="pswdImg">
                </span>
                <span class="error_next_box"></span>
            </div>
            
            <!-- GENDER(����) -->
            <div>
                <h3 class="join_title"><label for="gender">����</label></h3>
                <span class="box gender_code">
                    <select id="gender" class="sel">
                        <option>����</option>
                        <option value="M">����</option>
                        <option value="F">����</option>
                    </select>                            
                </span>
            </div>

            <!--ADDR(�ּ�)-->

            <div id="bir_mm">
                <h3 class="join_title">
                    <label for="addr">�ּ�</label>
                </h3>
                <div class="addr">
                    <div class="box1">
                        <select id="city" class="sel">
                            <option id="input_city">����</option>
                            <option value="01">����Ư����</option>
                            <option value="02">���ֱ�����</option>
                        </select>
                    </div>
                    <div class="box2">
                        <select id="city" class="sel">
                            <option id="input_city">����</option>
                            <option value="01">����Ư����</option>
                            <option value="02">���ֱ�����</option>
                        </select>
                    </div>
                </div>



                    </span>
                </div>

                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="button" id="btnJoin">
                        <span>�����ϱ�</span>
                    </button>
                </div>



            </div>
            <!-- content-->

        </div>
        <!-- wrapper -->
        <script src="main.js"></script>
</body>
</html>