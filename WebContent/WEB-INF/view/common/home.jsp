<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<jsp:include page="../common/common_head.jsp"/>
<!DOCTYPE html>

<html>
<head>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>학생상세 정보</title>
<link rel="stylesheet" href="${ctx}/resources/css/member.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	
	
</head>
<body>
	<div id="wrapper">
		<!--전체 웨퍼ㅏ-->
		<header>
			<h1 style="text-align: center;">학생상세 정보</h1>
			<hr />
			<a id="go_main" href="${ctx}/index.jsp">MAIN으로가기</a>
		</header>
		<hr />
		<br />
		<div class="gms-image">
			<img src="${ctx}/resources/img/123.JPG" alt="" /></a>
		</div>
		<br />
		<form id="login_box" name="login_box" >
			<!--do 서블릿  -->
			<fieldset class="form-edit">
				<legend>로그인</legend>
				<span class="login-span">ID</span> 
				<input type="text" id="input_id" name="input_id" /><br /> <label>PASSWORD</label>
				<input type="password"id="input_password" name="input_password" /><br />
				<br /> 
				<input type="submit" id="loginBtn" value="로그인"  class="submit-pink">
				<input type="reset" value="취소" class="submit-blue"> <input
					type="hidden" name="action" value="login"> <input
					type="hidden" name="page" value="main">
			</fieldset>
		</form>
	<script>
	member.init();
	</script>
		<footer>
			<div>
				<p>Posted by: 조봉기</p>
				<p>
					Contact information: <a href="mailto:someone@example.com">
						cho1036216@naver.com</a>.
				</p>
				<a href="jdbc_test.jsp">DB 연결테스트</a>
			</div>
		</footer>
</html>