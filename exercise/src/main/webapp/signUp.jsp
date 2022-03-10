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
    <header id="header">
        <a><img src="./img/logo2" id="logo"></a>
        </div>
    </header>

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
                    <img src="../img/pw.png" id="pswd1_img1" class="pswdImg">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- PW2 -->
            <div>
                <h3 class="join_title"><label for="pswd2">��й�ȣ ��Ȯ��</label></h3>
                <span class="box int_pass_check">
                    <input type="text" id="pswd2" class="int" maxlength="20">
                    <img src="../img/pw.png" id="pswd2_img1" class="pswdImg">
                </span>
                <span class="error_next_box"></span>
            </div>

            <!-- BIRTH -->
            <div>
                <h3 class="join_title"><label for="yy">�������</label></h3>

                <div id="bir_wrap">
                    <!-- BIRTH_YY -->
                    <div id="bir_yy">
                        <span class="box">
                            <input type="text" id="yy" class="int" maxlength="4" placeholder="��(4��)">
                        </span>
                    </div>

                    <!-- BIRTH_MM -->
                    <div id="bir_mm">
                        <span class="box">
                            <select id="mm" class="sel">
                                <option>��</option>
                                <option value="01">1</option>
                                <option value="02">2</option>
                                <option value="03">3</option>
                                <option value="04">4</option>
                                <option value="05">5</option>
                                <option value="06">6</option>
                                <option value="07">7</option>
                                <option value="08">8</option>
                                <option value="09">9</option>
                                <option value="10">10</option>
                                <option value="11">11</option>
                                <option value="12">12</option>
                            </select>
                        </span>
                    </div>

                    <!-- BIRTH_DD -->
                    <div id="bir_dd">
                        <span class="box">
                            <input type="text" id="dd" class="int" maxlength="2" placeholder="��">
                        </span>
                    </div>

                </div>
                <span class="error_next_box"></span>
            </div>

            <!-- GENDER -->
            <div>
                <h3 class="join_title"><label for="gender">����</label></h3>
                <span class="box gender_code">
                    <select id="gender" class="sel">
                        <option>����</option>
                        <option value="M">����</option>
                        <option value="F">����</option>
                    </select>
                </span>
                <span class="error_next_box">�ʼ� �����Դϴ�.</span>
            </div>



            <!-- JOIN BTN-->
            <div class="btn_area">
                <button type="button" id="btnJoin">
                    <a href="/Survey/index.html">�����ϱ�</a>
                </button>
            </div>
            <div class="btn_area">
                <button type="button" id="btnJoin">
                    <a href="/Main/index.html">Home</a>
                </button>
            </div>
        </div>
        <!-- content-->

    </div>
    <!-- wrapper -->
    <script src="main.js"></script>
</body>

</html>