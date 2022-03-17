<%@page import="exercise.entity.MypageVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <html lang="ko"><head>
        <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>커뮤니티</title>
    <link rel="stylesheet" href="./css/myPage.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
        rel="stylesheet">
    </head>
    <style>
   
    </style>
    <body>
        <div id="wrap">
            <header id="header">
                <div class="h_cont">
                    <h1><a href="${context}/index.jsp"><img src="./img/logo_1.png" alt="로고"></a></h1>
                    <nav>
                        <ul>
                            <li>
                            <a href="${context}/index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="${context}/challenge.jsp">운동 추천 프로그램</a>
                        </li>
                        <li>
                            <a href="${context}/outdoor.jsp">야외 체육시설</a>
                        </li>
                        <li>
                            <a href="${context}/goods.do">운동 용품</a>
                        </li>
                        <li>
                            <a href="${context}/communityList.do">커뮤니티</a>
                        </li>
                        </ul>
                    </nav>
                    <ul class="h_menu">
                        <li><a href="#"><img src="./img/icon_7.png" alt=""></a></li>
                        <li><a href="${context}/survey.jsp"><img src="./img/icon_5.png" alt=""></a></li>
                    </ul>
                </div>
            </header>
        </div>
        
          <section id="section_2">
                <div class="visual">
                    <div class="s_menu">
                        <div id="account" class="sc_login">
                            <div class="login_msg"></div>
                            <c:if test="${empty memVO}">
                            <a href="${context}/loginForm.do" class="link_login" data-clk="log_off.login">로그인</a><br>
                       		<br><a href="${context}/signUp.do" class="link_join" data-clk="log_off.registration">회원가입</a>
                            </c:if>
                            <c:if test="${!empty memVO}">
                            <label>${memVO.memId}</label><br>
                            <a href="${context}/index.jsp" class="link_join" data-clk="log_off.logout" onclick="goOut()">로그아웃</a>
                            </c:if>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/visual_item.png" alt="">
                    </div>
                </div>
            </section>
       
        <div class="container">  
            <h1>BMI</h1>
            <label>
                <input id="h-input" type="number" placeholder="Enter Your Height in Centimeters: " >
            </label>        
            <label>
                <input id="w-input" type="number" placeholder="Enter Your Weight in Kilogrames: ">
            </label>            
            <button type="submit" onclick="Calculate()">BMI계산</button>
            
            <div class="bmi-value">
                <div>BMI Value: 
                <h id="bmi-output"></h>
                </div>
            </div>
            
            <div class="status">
                <div>Status: 
                <h id="bmi-status"></h> 
                </div>
            </div>
        </div>

        <div class="outdoor">
            <h1>좋아요 표시한 야외체육시설</h1>
            <img src="./img/check.png">
            <ul id="list">
                <li><a href="#">▷ 진월동 체육시설</a>
                <div>&nbsp &nbsp &nbsp 광주광역 남구 진월동 화산로 106번지</div></li><br>
            <li><a href="#">▷ 진월동 체육시설</a></li>
                 <div>&nbsp &nbsp &nbsp 광주광역 남구 진월동 화산로 106번지</div></li><br>
            <li><a href="#">▷ 진월동 체육시설</a></li>
                 <div>&nbsp &nbsp &nbsp 광주광역 남구 진월동 화산로 106번지</div></li><br>
            <li><a href="#">▷ 진월동 체육시설</a></li>
                <div>&nbsp &nbsp &nbsp 광주광역 남구 진월동 화산로 106번지</div></li><br>
            <li><a href="#">▷ 진월동 체육시설</a></li>
            <div>&nbsp &nbsp &nbsp 광주광역 남구 진월동 화산로 106번지</div></li><br>
            </ul>
        </div>
        
        <div class="video">
            <h1>좋아요 표시한 동영상</h1>
            <img src="./img/youtube.png">
            <section id="section_1">
                <ul class="video_1">
                   <c:forEach var="vo" items="${list}">
        		   <c:if test="${memVO.memId eq vo.memId}">
                    <li><iframe width="360" height="230" src="${vo.like_video}"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="text_box"><a href="">${vo.like_video_name}</a></div>
                    </li>
                   </c:if>
        		   </c:forEach>
                    
                  <!--   <li><iframe width="360" height="230" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="text_box"><a href="">너를 상대로 혼잣망르 언제까지 할수잇을까?<br>리디후_Familly sory <br>
                                조회수2.3만회 19시간전</a></div>
                    </li>
                    <li><iframe width="360" height="230" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                        title="YouTube video player" frameborder="0"
                        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                        allowfullscreen></iframe>
                    <div class="text_box"><a href="">너를 상대로 혼잣망르 언제까지 할수잇을까?<br>리디후_Familly sory <br>
                            조회수2.3만회 19시간전</a></div>
                </li>
                <li><iframe width="360" height="230" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
                <div class="text_box"><a href="">너를 상대로 혼잣망르 언제까지 할수잇을까?<br>리디후_Familly sory <br>
                        조회수2.3만회 19시간전</a></div>
            </li>
            <li><iframe width="360" height="230" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                    title="YouTube video player" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen></iframe>
                <div class="text_box"><a href="">너를 상대로 혼잣망르 언제까지 할수잇을까?<br>리디후_Familly sory <br>
                        조회수2.3만회 19시간전</a></div>
            </li>
            <li><iframe width="360" height="230" src="https://www.youtube.com/embed/e4WnrhXTjg8"
                title="YouTube video player" frameborder="0"
                allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                allowfullscreen></iframe>
            <div class="text_box"><a href="">너를 상대로 혼잣망르 언제까지 할수잇을까?<br>리디후_Familly sory <br>
                    조회수2.3만회 19시간전</a></div>
        </li>-->
                   
        </ul>
        </div>
    </div>
    	<script type="text/javascript">
     function Calculate(){
    	    var height = document.getElementById("h-input").value;
    	    var weight = document.getElementById("w-input").value;
    	    var re = parseFloat(weight) /(parseFloat(height)/100)**2
    	    var result = re.toFixed(2);
    	    
    	    
    	    
    	    if(!isNaN(result)){
    	        document.getElementById("bmi-output").innerHTML = result;
    	        if(result < 18.5){
    	            document.getElementById("bmi-status").innerHTML = "저체중";
    	        }
    	        else if(result < 25){
    	            document.getElementById("bmi-status").innerHTML = "정상";
    	        }
    	        else if(result < 30){
    	            document.getElementById("bmi-status").innerHTML = "과체중";
    	        }
    	        else{
    	            document.getElementById("bmi-status").innerHTML = "비만";
    	        }
    	    }
    	}

    </script>
    
    
    
</body>
</html>