<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<!DOCTYPE html>
<html lnag="ko">
    <head>
        <meta charset="UTF-8">
        <title> 회원가입</title>
        <link rel="stylesheet" href="../css/회원가입.css">
        
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <a><img src="../img/손글씨2.jpg" id="logo"></a>
        </div>


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">
		<form action="${context}/memberInsert.do" method="post">
                <!-- Nick -->
                <div>
                    <h3 class="join_title">
                        <label for="nick">닉네임</label>
                    </h3>
                    <span class="box int_nick">
                        <input type="text" id="memNick" name="memNick" class="int" maxlength="20">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- ID -->
                <div>
                    <h3 class="join_title">
                        <label for="id">아이디</label>
                    </h3>
                    
                    <span class="box int_id">
                        <input type="text" id="memId" name="memId" class="int" maxlength="20">
                    </span>
                </div>

                <!-- PW1 -->
                <div>
                    <h3 class="join_title"><label for="pswd1">비밀번호</label></h3>
                    <span class="box int_pass">
                        <input type="text" id="memPwd" name="memPwd" class="int" maxlength="20">
                        <span id="alertTxt">사용불가</span>
                        <img src="../img/icon_pass.png" id="pswd1_img1" class="pswdImg">
                    </span>
                    <span class="error_next_box"></span>
                </div>

                <!-- ADDR(주소) -->
                <div>
                    <h3 class="join_title">
                        <label for="addr">주소</label>
                    </h3>
                    
                    <span class="box int_addr">
                        <input type="text" id="memAddr" name="memAddr" class="int" maxlength="20">
                    </span>
                </div>
        
                <!--ADDR(주소)-->
              
               



                <!-- JOIN BTN-->
                <div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>가입하기</span>
                    </button>
                </div>

                </form>

            </div> 
            <!-- content-->

        </div> 
        <!-- wrapper -->
    <script src="main.js"></script>
    </body>
</html>