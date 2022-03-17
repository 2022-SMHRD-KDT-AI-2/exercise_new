<%@page import="exercise.entity.ChallengeVO"%>
<%@page import="exercise.entity.RunningVO"%>
<%@page import="exercise.entity.OutdoorVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Outdoor</title>
    <link rel="stylesheet" href="./css/Outdoor.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.cm" >
    <link
        href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
        rel="stylesheet">

 <script type="text/javascript">
  	function goOut(){
  		location.href="/exercise/logout.do"
  	}
  	
  	function loginAlert(){
  		alert("로그인이 필요합니다.")
  	}
  </script>

</head>
<body>
    <div id="wrap">
        <header id="header">
            <div class="h_cont">
                <h1><a href="${context}/index.jsp"><img src="img/logo_1.png" alt="로고"></a></h1>
                <nav>
                       <ul>
                         <li>
                            <a href="${context}/about.do">About</a>
                        </li>
                        <li>
                        	<c:if test="${empty memVO}">
                            <a href="" onclick="loginAlert()">운동 추천 프로그램</a>
                            </c:if>
                            <c:if test="${!empty memVO}">
                            <a href="${context}/challenge.do">운동 추천 프로그램</a>
                            </c:if>
                        </li>
                        <li>
                        	<c:if test="${empty memVO}">
                            <a href="" onclick="loginAlert()">야외 체육시설</a>                     
                            </c:if>
                            <c:if test="${!empty memVO}">
     		                <a href="http://project-jupyter-2.ddns.net:8852/running?memId=${memVO.memId}">야외 체육시설</a>       
                            </c:if>
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
                    <c:if test="${empty memVO}">
                    <li><a onclick="loginAlert()"><img src="./img/icon_7.png" alt=""></a></li>
                    <li><a onclick="loginAlert()"><img src="./img/icon_5.png" alt=""></a></li>
                    </c:if>
                    <c:if test="${!empty memVO}">
                    <li><a href="${context}/myPage.do"><img src="./img/icon_7.png" alt=""></a></li>
                    <li><a href="${context}/surveyUpdateForm.do"><img src="./img/icon_5.png" alt=""></a></li>
                    </c:if>
                </ul>
            </div>
        </header>
        
   <section id="section_1">

    <div class="wrapper-flex">
        <div class="nav">
            <ul class="title">
                <li><h1>체육 시설</h1></li>
                <li><h1>러닝 코스</h1></li>
                <li><h1>공 원</h1></li>
            </ul>
        </div>
   <div class="s1_cont">
       <div class="fa">
       
       <c:forEach var="vo" items="${outdoorList}">
        <c:if test="${chalVo.memAddr1 eq vo.o_address}">
        
        <div class="card_boxs">
            <div class="cards">
                  <div class="text_box">
            <h2 class="name"><a href="#">체육시설</a></h2>
            <p class="description" id ="out${vo.o_seq}Name">이름: $${vo.o_name}</p>
            <p class="description" id ="out${vo.o_seq}Addr">주소: ${vo.o_address}</p>
            <div class="heart">
                <div class="icon">
                    <svg class="heart-main" name="out${vo.o_seq}" viewBox="0 0 512 512" width="10" title="heart">
                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                </svg>
           <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
         <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
        </svg>
            </div>
           </div>
          </div>
        </div>
        
        </div>
       
       </c:if>
       </c:forEach>
        <!-- <div class="card_boxs">
            <div class="cards">
                  <div class="text_box">
            <h2 class="name"><a href="#">시설명</a></h2>
            <p class="description">주소:${chalVo.memAddr1}</p>
            <p class="description">이용시간:</p>
            <p class="description">전화번호:</p>
            <div class="heart">
                <div class="icon">
                    <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                </svg>
           <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
         <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
        </svg>
            </div>
           </div>
          </div>
        </div>
        
        </div>
        <div class="card_boxs">
            <div class="cards">
                  <div class="text_box">
            <h2 class="name"><a href="#">시설명</a></h2>
            <p class="description">주소:</p>
            <p class="description">이용시간:</p>
            <p class="description">전화번호:</p>
            <div class="heart">
                <div class="icon">
                    <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                </svg>
           <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
         <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
        </svg>
            </div>
           </div>
          </div>
        </div>
        
        </div>-->
    </div>

    <div class="running">
    <input type="hidden" name="memId" value="${memVO.memId}">
        <c:forEach var="vo" items="${list}">
        <c:if test="${memVO.memId eq vo.memId}">
        
        <div class="card_boxs">
            <div class="cards">
                  <div class="text_box">
             
            <h2 class="name"><a href="#">러닝코스</a></h2>
            <p class="description" id="run${vo.c_seq}Name" value = "${vo.c_name}">이름: ${vo.c_name}</p>
            <span class="description" id="run${vo.c_seq}Addr" value = "${vo.c_addr}">주소: ${vo.c_addr}</span>
            <p class="description">총 길이: ${vo.c_total_distance}</p>
            <a href="${vo.c_information}">상세정보</a>
            <div class="heart">
                <div class="icon">
                    <svg class="heart-main" name="run${vo.c_seq}" viewBox="0 0 512 512" width="10" title="heart">
                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                </svg>
           <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
         <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
        </svg>
            </div>
           </div>
          </div>
        </div>
        
        </div>
        </c:if>
        </c:forEach>
		</div>
        
    <div class="park">
    
       <c:forEach var="vo" items="${parkList}">
       <c:if test="${chalVo.memAddr1 eq vo.park_area}">
        <div class="card_boxs">
            <div class="cards">
                  <div class="text_box">
            <h2 class="name"><a href="#">공원</a></h2>
            <p class="description">이름: ${vo.park_name}</p>
            <p class="description">주소: ${vo.park_addr}</p>
            <div class="heart">
                <div class="icon">
                    <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                </svg>
           <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
         <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
        </svg>
            </div>
           </div>
          </div>
        </div>
        
        </div>
        </c:if>
        </c:forEach>
        
        <!--<div class="card_boxs">
            <div class="cards">
                  <div class="text_box">
            <h2 class="name"><a href="#">공원명</a></h2>
            <p class="description">주소:</p>
            <div class="heart">
                <div class="icon">
                    <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                </svg>
           <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
         <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
        </svg>
            </div>
           </div>
          </div>
        </div>
        
        </div>
        <div class="card_boxs">
            <div class="cards">
                  <div class="text_box">
            <h2 class="name"><a href="#">공원명</a></h2>
            <p class="description">주소:</p>
            <div class="heart">
                <div class="icon">
                    <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                     <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                </svg>
           <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
         <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
        </svg>
            </div>
           </div>
          </div>
        </div>
        
        </div>-->
    </div>
    
    
    </div>
    </div>
       </div>
  
	</section>
	
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
                            <a href="" class="link_join" data-clk="log_off.logout" onclick="goOut()">로그아웃</a>
                            </c:if>
                        </div>
                    </div>
                    <div class="item">
                        <img src="img/visual_item.png" alt="">
                    </div>
                </div>
            </section>

        </div>

    </div>
    
    
    
    
    
     <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script>
	 
	$(".heart-main").on("click",function(){
			var getName=String($(this).attr("name"));
			console.log(getName)
			
			var myout_name = $("#"+getName+"Name").html();
			var myout_addr = $("#"+getName+"Addr").html();
		
			
			//var like_video = $("[name=url"+getName+"]").attr("src");
			//var like_video_name = $("[name=name"+getName+"]").val();
			console.log(myout_name)
			console.log(myout_addr)
			
			$.ajax({
				url : 'mypageOutdoorInsert.do', // 요청경로
				
				type : 'post', // GET or POST
				//dataType : 'text' , // 응답받는 데이터의 형식, json데이터를 응답받을때만 사용  
				data : {
					memId:$("[name=memId]").val(),
					myout_name:myout_name,
					myout_addr:myout_addr

				},
				success : function(data) {
					
					alert('마이페이지에 추가 되었습니다.');

				},
				error : function() {
		
					 alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error)

				
			
				}
			});

		});

	</script>
</body>

</html>
</html>