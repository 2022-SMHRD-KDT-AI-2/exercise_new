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
        <title>설문조사</title>
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
         <!-- GENDER(성별) -->
				<div>
                    <h3 class="request_title"><label for="gender">1.성별을 선택하세요</label></h3>
					<span class="box gender_code"> 
                    <select id="gender" name="gender" class="sel">
							<option>성별</option>
							<option value="남자">남자</option>
							<option value="여자">여자</option>
					</select>
					</span>
				</div><br>
            <!-- athletic_part -->
            <div><br>
                <h3 class="request_title"><label for="athletic_part">2.원하는 운동종류를 선택하세요</label></h3>
                <div id="athletic_wrap">
                    <div class="athletic_part">
                        <input id="shoulder" type="radio" name="athleticPart" value="유산소 운동">유산소 운동 &nbsp;
                        <input id="arm" type="radio" name="athleticPart" value="무산소 운동">무산소 운동 &nbsp;
                        <input id="chest" type="radio" name="athleticPart" value="근력운동">근력운동 &nbsp;<br>
                        <input id="back" type="radio" name="athleticPart" value="요가">요가 &nbsp;
                        <input id="bae" type="radio" name="athleticPart" value="스트레칭">스트레칭<br> &nbsp;
                    </div>
                </div>
            </div>

            <!-- athletic_level-->
            <div>
                <h3 class="request_title"><label for="athletic_level">3.본인의 운동레벨을 선택하세요</label></h3>
                <div id="athletic_wrap">
                    <div class="athletic_level">
                        <input type="radio" name="athleticLevel" value="상">상 &nbsp;
                        <input type="radio" name="athleticLevel" value="중">중 &nbsp;
                        <input type="radio" name="athleticLevel" value="하">하 &nbsp;<br>
                        
                    </div><br>
                </div>
            </div>
            
            <!--ADDR(주소)-->

				<div id="bir_mm">
					<h3 class="request_title"><label for="addr">4.주소를 선택하세요</label></h3>
					<div class="addr">
						<div class="box1">
                            <span class="box addr_code">
                                <select onchange="categoryChange(this)" id="addr" name="memAddr" class="sel">
                                    <option>지역</option>
                                    <option value="서울특별시">서울특별시</option>
                                    <option value="광주광역시">광주광역시</option>
                                </select>
                            </span> 
                        </div>
						<div class="box2">
                            <span class="box addr_code">
                                <select id="good" name="memAddr1" class="sel">
                                      <option>자치구</option>
                                 </select>
                            </span>
						</div>
					</div>
				</div><br><br>

    

            <!--정보 불러오기-->
            <div id="reinfo_wrap">
                <div class="info">
                    <input id="back" type="checkbox" name="back"/>&nbsp; 이전 정보를 불러올래요 &nbsp;
                </div>
            </div>
            
            <!-- SUBMIT BTN-->
          	<div class="btn_area">
                    <button type="submit" id="btnJoin">
                        <span>제출하기</span>
                    </button>
            </div>
            </form>

    </div>
    <script src="main.js"></script>
</body>

</html>