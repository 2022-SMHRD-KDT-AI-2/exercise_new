<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>    
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>��������</title>
        <script type="text/javascript" src="./js/jquery.city.js"></script>
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
         <form action="http://121.147.185.152:9000/youtubeSearch" method="post">      
            <!-- height, weight-->
			<div>
                 <input type="hidden" name="memId" value="${memVO.memId}">
         <!-- GENDER(����) -->
				<div>
                    <h3 class="request_title"><label for="gender">1.������ �����ϼ���</label></h3>
					<span class="box gender_code"> 
                    <select id="gender" name="gender" class="sel">
							<option>����</option>
							<option value="����">����</option>
							<option value="����">����</option>
					</select>
					</span>
				</div><br>
            <!-- athletic_part -->
            <div><br>
                <h3 class="request_title"><label for="athletic_part">2.���ϴ� ������� �����ϼ���</label></h3>
                <div id="athletic_wrap">
                    <div class="athletic_part">
                        <input id="shoulder" type="radio" name="athleticPart" value="����� �">����� � &nbsp;
                        <input id="arm" type="radio" name="athleticPart" value="����� �">����� � &nbsp;
                        <input id="chest" type="radio" name="athleticPart" value="�ٷ¿">�ٷ¿ &nbsp;<br>
                        <input id="back" type="radio" name="athleticPart" value="�䰡">�䰡 &nbsp;
                        <input id="bae" type="radio" name="athleticPart" value="��Ʈ��Ī">��Ʈ��Ī<br> &nbsp;
                    </div>
                </div>
            </div>

            <!-- athletic_level-->
            <div>
                <h3 class="request_title"><label for="athletic_level">3.������ ������� �����ϼ���</label></h3>
                <div id="athletic_wrap">
                    <div class="athletic_level">
                        <input type="radio" name="athleticLevel" value="��">�� &nbsp;
                        <input type="radio" name="athleticLevel" value="��">�� &nbsp;
                        <input type="radio" name="athleticLevel" value="��">�� &nbsp;<br>
                        
                    </div><br>
                </div>
            </div>
            
            <!--ADDR(�ּ�)-->

				<div id="bir_mm">
					<h3 class="request_title"><label for="addr">4.�ּҸ� �����ϼ���</label></h3>
					<div class="addr">
						<div class="box1">
                            <span class="box addr_code">
                                <select onchange="categoryChange(this)" id="addr" name="memAddr" class="sel">
                                    <option>����</option>
                                    <option value="����Ư����">����Ư����</option>
                                    <option value="���ֱ�����">���ֱ�����</option>
                                </select>
                            </span> 
                        </div>
						<div class="box2">
                            <span class="box addr_code">
                                <select id="good" name="memAddr1" class="sel">
                                      <option>��ġ��</option>
                                 </select>
                            </span>
						</div>
					</div>
				</div><br><br>

    

            <!--���� �ҷ�����-->
            <div id="reinfo_wrap">
                <div class="info">
                    <input id="back" type="checkbox" name="back"/>&nbsp; ���� ������ �ҷ��÷��� &nbsp;
                </div>
            </div>
            
            <!-- SUBMIT BTN-->
          	<div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>�����ϱ�</span>
                    </button>
            </div>
            </form>

    </div>
    <script src="main.js"></script>
</body>

</html>