<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
 
<!-- 로그인 실패 : 세션 없음 -->
<c:if test = "${memVO==null}">
    <div class = "login_warn">
	    <script>
	   		 alert('사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.'); history.back();
	    </script>
    </div>
</c:if>