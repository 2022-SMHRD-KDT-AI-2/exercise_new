<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
pageContext.setAttribute("context", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>MyPage</title>
<script type="text/javascript" src="./js/bmi.js"></script>
<link rel="stylesheet" href="./css/myPage.css">
</head>
<body>
	<div id="wrap">
        <header id="header">
            <div class="h_cont">
                <h1><a href="/Main/index.html"><img src="img/logo_1.png" alt="로고"></a></h1>
                <nav>
                    <ul>
                        <li>
                             <a href="${context}/index.jsp">Home</a>
                        </li>
                        <li>
                            <a href="${context}/challenge.jsp">운동 추천 프로그램</a>
                        </li>
                        <li>
                            <a href="${context}/Outdoor.jsp">야외 체육시설</a>
                        </li>
                        <li>
                           <a href="/Sales_site/index.html">운동 용품</a>
                        </li>
                        <li>
                            <a href="${context}/community.jsp">커뮤니티</a>
                            
                        </li>
                    </ul>
                </nav>
                <ul class="h_menu">
                    <li><a href="/Sign up/index.html"><img src="img/icon_7.png" alt=""></a></li>
                    <li><a href="/Survey/index.html"><img src="img/icon_5.png" alt=""></a></li>
                </ul>
            </div>
        </header>
     </div>   

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
            <ul id="list">
                <li><a href="#">▷ 진월동 체육시설</a></li><br>
                <li><a href="#">▷ 진월동 체육시설</a></li><br>
                <li><a href="#">▷ 진월동 체육시설</a></li><br>
                <li><a href="#">▷ 진월동 체육시설</a></li><br>
                <li><a href="#">▷ 진월동 체육시설</a></li>
            </ul>
        </div>
        
       

        <div class="video">
            <h1>좋아요 표시한 동영상</h1>
            <section id="section_1">
                <ul class="video_1">
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
                   
        </ul>
        </div>
    </div>
</body>
</html>