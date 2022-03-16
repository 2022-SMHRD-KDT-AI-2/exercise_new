<%@page import="exercise.entity.ChallengeVO"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%
	pageContext.setAttribute("context", request.getContextPath());
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <title>challenge</title>
    <link rel="stylesheet" href="./css/heart.css">
    <link rel="stylesheet" href="./css/challenge.css">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link
        href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
        rel="stylesheet">
</head>

<body>
    	
    
    <div id="wrap">
        <header id="header">
            <div class="h_cont">
                <h1><a href="${context}/index.jsp"><img src="img/logo_1.png" alt="로고"></a></h1>
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
                            <a href="${context}/goods.do">운동 용품</a>
                        </li>
                        <li>
                            <a href="${context}/communityList.do">커뮤니티</a>
                        </li>
                    </ul>
                </nav>
                <ul class="h_menu">
                    <li><a href="#"><img src="./img/icon_7.png" alt=""></a></li>
                    <li><a href="#"><img src="./img/icon_5.png" alt=""></a></li>
                </ul>
            </div>
        </header>
        <div id="container">
        	<input type="hidden" name="memId" value="${vo.memId}">
            <section id="section_1">
                <ul class="video_1">
                    <li><iframe width="540" height="315" src="${vo.url1}"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                         <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name1}</a></li>             
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                        
                    </li>
                    <li><iframe width="540" height="315" src="${vo.url2}"

                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name2}</a></li> 
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                    </li>

                </ul>
                <ul class="video_2">
                    <li><iframe width="540" height="315" src="${vo.url3}"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                         <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name3}</a></li>             
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                        
                    </li>
                    <li><iframe width="540" height="315" src="${vo.url4}"

                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name4}</a></li> 
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                    </li>

                </ul>
                <ul class="video_3">
                    <li><iframe width="540" height="315" src="${vo.url5}"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                         <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name5}</a></li>             
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                        
                    </li>
                    <li><iframe width="540" height="315" src="${vo.url6}"

                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name6}</a></li> 
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                    </li>

                </ul>
              
               
                      <ul class="video_4">
                    <li><iframe width="540" height="315" src="${vo.url7}"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                         <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name7}</a></li>             
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                        
                    </li>
                    <li><iframe width="540" height="315" src="${vo.url8}"

                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name8}</a></li> 
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                    </li>

                </ul>
              
               
                      <ul class="video_1">
                    <li><iframe width="540" height="315" src="${vo.url9}"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                         <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name9}</a></li>             
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                        
                    </li>
                    <li><iframe width="540" height="315" src="${vo.url10}"

                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name10}</a></li> 
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                    </li>

                </ul>
              
               
                      <ul class="video_1">
                    <li><iframe width="540" height="315" src="${vo.url1}"
                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                         <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name1}</a></li>             
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                        
                    </li>
                    <li><iframe width="540" height="315" src="${vo.url2}"

                            title="YouTube video player" frameborder="0"
                            allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                            allowfullscreen></iframe>
                        <div class="s1_cont">
                             <ul class="text_box">
                                 <li>제목 :<a href="">${vo.name2}</a></li> 
                              </ul>
                              <ul class="text_2">
                                  <li> <div class="icon">
                                     <svg class="heart-main" viewBox="0 0 512 512" width="10" title="heart">
                                      <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                                 </svg>
                            <svg class="heart-background" viewBox="0 0 512 512" width="100" title="heart">
                          <path d="M462.3 62.6C407.5 15.9 326 24.3 275.7 76.2L256 96.5l-19.7-20.3C186.1 24.3 104.5 15.9 49.7 62.6c-62.8 53.6-66.1 149.8-9.9 207.9l193.5 199.8c12.5 12.9 32.8 12.9 45.3 0l193.5-199.8c56.3-58.1 53-154.3-9.8-207.9z" />
                         </svg>
                             </div></li>
                              </ul>
                             </div>
                    </li>

                </ul>
              
               
              
               
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
                            <a href="${context}/index.jsp" class="link_join" data-clk="log_off.logout" onclick="goOut()">로그아웃</a>
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
    
    <%
    		
    
   
    %>
 
</body>

</html>