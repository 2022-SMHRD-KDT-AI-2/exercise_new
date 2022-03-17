<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%
pageContext.setAttribute("context", request.getContextPath());
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>회원가입</title>
<script type="text/javascript" src="./js/jquery.city.js"></script>
<link rel="stylesheet" type="text/css" href="./css/signUp.css">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Black+Han+Sans&family=Do+Hyeon&family=Jua&family=Sunflower:wght@500&display=swap"
	rel="stylesheet">
<script src="/webjars/jquery/dist/jquery.min.js"></script>


</head>
<body>
	<!-- header -->
	<div id="header">
		<a href="${context}/index.jsp"><img src="./img/logo2.jpg" id="logo"></a>
	</div>
	<!-- wrapper -->
	<div id="wrapper">
		<!-- content-->
		<div id="content">
			<form action="${context}/memberInsert.do" method="post">
				<!-- Nick -->
				<div>
					<h3 class="join_title">
						<label for="nick">닉네임</label>
					</h3>
					<span class="box int_nick"> <input type="text" id="memNick"
						name="memNick" class="int" maxlength="20"> <input
						type="button" class="btn_ck" id="btn_nick" value="중복확인">
						<input type="hidden" name="idDuplication" value="idUncheck">
					</span> <span class="error_next_box"></span>
				</div>
				<!-- ID -->
				<div>
					<h3 class="join_title">
						<label for="id">아이디</label>
					</h3>
				<span class="box int_id"> <input type="text" id="memId"
						name="memId" class="int" maxlength="20"> 
				<input
						type="button" class="btn_ck" id="btn_id" value="중복확인"> 
						<input type="hidden" name="idDuplication" value="idUncheck">
					</span>
				</div>


				<!-- PW1 -->
				<div>
					<h3 class="join_title">
						<label for="pswd1">비밀번호</label>
					</h3>
					<span class="box int_pass"> <input type="password"
						id="memPwd" name="memPwd" class="int" maxlength="20"> <span
						id="alertTxt">사용불가</span> <img src="./img/pw.png" id="pswd1_img1"
						class="pswdImg">
					</span> <span class="error_next_box"></span>
				</div>

				<!-- PW2 -->
				<div>
					<h3 class="join_title">
						<label for="pswd2">비밀번호 재확인</label>
					</h3>
					<span class="box int_pass_check"> <input type="password"
						id="pswd2" class="int" maxlength="20"> <img
						src="./img/pw.png" id="pswd1_img1" class="pswdImg">
					</span> <span class="error_next_box"></span>
				</div>

				
				<!-- JOIN BTN-->
				<div class="btn_area">
					<button type="submit" id="btnJoin">
						<span>가입하기</span>
					</button>
				</div>
			</form>
		</div>
	</div>
	<!-- wrapper -->
	<script src="main.js"></script>

	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script>
    	$('#btn_nick').on("click",function(){
    		var nick = $('#memNick').val();
    		
    		$.ajax({
    			url : "checkId.do?",
    			data:{"memNick":nick},
    			success : function(nick){
    				if(nick==0){
    					alert('사용할 수 있는 닉네임입니다');
    				}
    				else{
    				alert('사용할 수 없는 닉네임입니다');
    				}
    			},
    			error : function(){
    				alert('error');
    			} 
    		});  
    	});
    </script>


	<script src="https://code.jquery.com/jquery-latest.min.js"></script>
    <script>
    	$('#btn_id').on("click",function(){
    		var id = $('#memId').val();
    		console.log(id);
    		
    		$.ajax({
    			url : "checkId.do?",
    			data:{"memId":id},
    			success : function(id){
    				if(id==0){
    					alert('사용할 수 있는 아이디입니다');
    				}
    				else{
    				alert('사용할 수 없는 아이디입니다');
    				}
    			},
    			error : function(){
    				alert('error');
    			} 
    		});  
    	});
    </script>
</body>
</html>