<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>설문조사</title>
        <link rel="stylesheet" href="./css/survey.css">
        
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
               
            <!-- height, weight-->
			<div>
                <h3 class="request_title">
                    <label for="height">1.신체정보를 입력하세요</label>
                </h3>
                    <div class="box height_id">
                    <input type="text" id="height" class="int" maxlength="30" placeholder="키를 입력하세요">
               		</div>
                	<br>
                	<div class="box weight_id">
                    <input type="text" id="weight" class="int" maxlength="20" placeholder="몸무게를 입력하세요">
                	</div>                         
             </div>
            <!-- target_weight -->
            <div><br>
                <h3 class="request_title"><label for="goal">2.원하는 몸무게를 입력하세요.</label></h3>
                <span class="box int_traget">
                    <input type="text" id="target" class="int" maxlength="20">
                </span>
            </div>


            <!-- athletic_part -->
            <div><br>
                <h3 class="request_title"><label for="athletic_part">3.원하는 운동종류를 선택하세요.</label></h3>

                <div id="athletic_wrap">
                    <div class="athletic_part">
                        <input id="shoulder" type="radio" name="part">유산소 운동 &nbsp;
                        <input id="arm" type="radio" name="part">무산소 운동 &nbsp;
                        <input id="chest" type="radio" name="part">근력운동 &nbsp;<br>
                        <input id="back" type="radio" name="part">요가 &nbsp;
                        <input id="bae" type="radio" name="part">스트레칭<br> &nbsp;
                    </div>
                </div>
            </div>

            <!-- athletic_level-->
            <div>
                <h3 class="request_title"><label for="athletic_level">4.본인의 운동레벨을 선택하세요 </label></h3>
                <div id="athletic_wrap">
                    <div class="athletic_level">
                        <input type="radio" name="level" value="sang">상 &nbsp;
                        <input type="radio" name="level" value="jung">중 &nbsp;
                        <input type="radio" name="level" value="ha">하 &nbsp;<br>
                        
                    </div><br><br>
                </div>
            </div>

            <!--정보 불러오기-->
            <div id="reinfo_wrap">
                <div class="info">
                    <input id="back" type="checkbox" name="back"/>&nbsp; 이전 정보를 불러올래요 &nbsp;
                </div>
            </div>
            
            <!-- SUBMIT BTN-->
          	<div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>가입하기</span>
                    </button>
            </div>

    </div>
    <script src="main.js"></script>
</body>

</html>