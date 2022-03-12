<%@page import="exercise.entity.CommunityVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Bootstrap Example</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <script type="text/javascript">
  	function goOut(){
	  location.href="/web/logout.do";
	}
  </script>	
</head>
<body>
 
<div class="container">
  <h2>MVC Framework 04</h2>
  <div class="panel panel-default">
    <div class="panel-heading">
    	<c:if test="${empty memVO}">
			<form class="form-inline" action="/web/login.do" method="post">
			  <div class="form-group">
			    <label for="memId">ID:</label>
			    <input type="text" class="form-control" name="memId">
			  </div>
			  <div class="form-group">
			    <label for="memPwd">Password:</label>
			    <input type="password" class="form-control" name="memPwd">
			  </div>
			  <button type="submit" class="btn btn-default">로그인</button>
			</form>
		</c:if>
		<c:if test="${!empty memVO}">
          <div>
             <label>${memVO.memUser}님 방문을 환영합니다.</label>
             <button class="btn btn-info btn-sm" onclick="goOut()">로그아웃</button>
          </div>
      </c:if>
	</div>
    <div class="panel-body">
    	<table class="table table-bordered table-hover">
    	<tr>
    	    <td>번호</td>
    	    <td>제목</td>
    	    <td>작성자</td>
    	    <td>작성일</td>
    	    <td>조회수</td>
    	  </tr>
    	  <c:forEach var="vo" items="${list}">
    	  	  <tr>
    	        <td>${vo.idx}</td>
    	        <td><a href="/web/communityContent.do?idx=${vo.idx}">${vo.articletitle}</a></td>
    	        <td>${vo.memId}</td>
    	        <td>${vo.articledate}</td>
    	        <td>${vo.count}</td>
    	      </tr>
    	  </c:forEach>
    	  <c:if test="${!empty memVO}">
	    	  <tr>
	    	    <td colspan="5">
	    	    <button class="btn btn-success btn-sm" onclick="location.href='/web/boardForm.do'">글쓰기</button>
	    	    </td>
	    	  </tr>
    	  </c:if>
    	</table>
    </div>
    <div class="panel-footer">운동짱()</div>
  </div>
</div>

</body>
</html>
