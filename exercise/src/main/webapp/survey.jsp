<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>��������</title>
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
            <!-- GENDER -->
               <div>
                   <h3 class="join_title"><label for="gender">1.������ �����ϼ���</label></h3>
                        <select id="gender" class="sel">
                            <option value="M">����</option>
                            <option value="F">����</option>
                        </select>                            
              
                </div>
            
            <div>
                <h3 class="request_title">
                    <label for="height">2.��ü������ �Է��ϼ���.</label>
                </h3>
                <div class="box height_id">
                    <input type="text" id="height" class="int" maxlength="30" placeholder="Ű�� �Է��ϼ���">
                </div>
                <br>
                <div class="box weight_id">
                    <input type="text" id="weight" class="int" maxlength="20" placeholder="�����Ը� �Է��ϼ���">
                </div>
            </div>

            <!-- target_weight -->
            <div><br>
                <h3 class="request_title"><label for="goal">3.���ϴ� �����Ը� �Է��ϼ���.</label></h3>
                <span class="box int_traget">
                    <input type="text" id="target" class="int" maxlength="20">
                </span>
            </div>


            <!-- athletic_part -->
            <div><br>
                <h3 class="request_title"><label for="athletic_part">4.���ϴ� ������� �����ϼ���.</label></h3>

                <div id="athletic_wrap">
                    <div class="athletic_part">
                        <input id="shoulder" type="radio" name="shoulder">����� � &nbsp;
                        <input id="arm" type="radio" name="arm">����� � &nbsp;
                        <input id="chest" type="radio" name="chest">�ٷ¿ &nbsp;<br>
                        <input id="back" type="radio" name="back">�䰡 &nbsp;
                        <input id="bae" type="radio" name="bae">��Ʈ��Ī<br> &nbsp;
                    </div>
                </div>
            </div>

            <!-- athletic_level-->
            <div>
                <h3 class="request_title"><label for="athletic_level">5.������ ������� �����ϼ��� </label></h3>

                <div id="level_wrap">
                    <div class="athletic_level">
                        <input id="sang" type="radio" name="snag">�� &nbsp;
                        <input id="jung" type="radio" name="jung">�� &nbsp;
                        <input id="ha" type="radio" name="ha">�� &nbsp;<br>
                    </div><br>
                </div>
            </div>

            <!--���� �ҷ�����-->
                <div id="reinfo_wrap">
                    <div class="info">
                        <input id="sang" type="checkbox" name="snag">&nbsp; ���� ������ �ҷ��÷��� &nbsp;
                    </div>
                </div>
            
           
            <!-- SUBMIT BTN-->
            <div class="btn_area">
                <button type="button" id="btnSubmit">
                    <a href="/Main/index.html">�����ϱ�</a>
                </button>
            </div>

        </div>
        <!-- content-->

    </div>
    <!-- wrapper -->
    <script src="main.js"></script>
</body>

</html>