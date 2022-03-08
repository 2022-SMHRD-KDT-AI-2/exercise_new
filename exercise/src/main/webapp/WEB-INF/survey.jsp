<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>��������</title>
        <link rel="stylesheet" href="../css/��������.css">
        
    </head>
    <body>
        <!-- header -->
        <div id="header">
            <a><img src="../img/�ձ۾�2.jpg" id="logo"></a>
        </div>


        <!-- wrapper -->
        <div id="wrapper">

            <!-- content-->
            <div id="content">

                <!-- height, weight-->
                <div>
                    <h3 class="request_title">
                        <label for="height">1.��ü������ �Է��ϼ���.</label>
                    </h3>
                    <span class="box height_id">
                        <input type="text" id="height" class="int" maxlength="30" placeholder="Ű�� �Է��ϼ���">
                    </span>
                    <br>
                    <span class="box weight_id">
                        <input type="text" id="weight" class="int" maxlength="20" placeholder="�����Ը� �Է��ϼ���">
                    </span>
                </div>

                <!-- target_weight -->
                <div><br>
                    <h3 class="request_title"><label for="goal">2.���ϴ� �����Ը� �Է��ϼ���.</label></h3>
                    <span class="box int_traget">
                        <input type="text" id="target" class="int" maxlength="20">
                    </span>
                </div>

                <!-- athletic_part -->
                <div><br>
                    <h3 class="request_title"><label for="athletic_part">3.���ϴ� ������� �����ϼ���.</label></h3><br>

                    <div id="athletic_wrap">
                        <div class="athletic_part">
                            <input id="shoulder" type="radio" name="shoulder">��� &nbsp;
                            <input id="arm" type="radio" name="arm">�� &nbsp;
                            <input id="chest" type="radio" name="chest">���� &nbsp;
                            <input id="back" type="radio" name="back">�� &nbsp;
                            <input id="bae" type="radio" name="bae">����<br> &nbsp;
                        </br>
                            <input id="core" type="radio" name="core">�ھ� &nbsp;
                            <input id="hip" type="radio" name="hip">������ &nbsp;
                            <input id="leg" type="radio" name="leg">�ٸ� &nbsp;
                            <input id="body" type="radio" name="body">���� &nbsp;
                        </div>
                    </div>
                </div><br>

                <!-- athletic_level-->
                <div>
                    <h3 class="request_title"><label for="athletic_level">4.������ ��ü������ �����ϼ��� </label></h3><br>

                    <div id="level_wrap">
                        <div class="athletic_level">
                            <input id="sang" type="radio" name="snag">�� &nbsp;
                            <input id="jung" type="radio" name="jung">�� &nbsp;
                            <input id="ha" type="radio" name="ha">�� &nbsp;
                        </div>
                    </div>
                </div>

                 <!-- athletic_period-->
                 <div><br>
                    <h3 class="request_title"><label for="athletic_period">5.���ϴ� ��Ⱓ�� �����ϼ���.</label></h3><br>

                    <div id="period_wrap">
                        <div class="athletic_period">
                            <input id="one" type="radio" name="one">1�� &nbsp;
                            <input id="two" type="radio" name="two">2�� &nbsp;
                            <input id="three" type="radio" name="three">3�� &nbsp;
                            <input id="four" type="radio" name="four">4�� &nbsp;
                        </div>
                    </div>
                </div>

                 <!-- SUBMIT BTN-->
                 <div class="btn_area">
                    <button type="button" id="btnSubmit">
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