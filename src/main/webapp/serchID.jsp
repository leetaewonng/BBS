<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width , initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>경기도 광주 백신 접종사이트</title>
</head>
<body>
<br>
	<center>
		<a href="main.jsp"> <img src="images/2.png" width="400" height="100"></a>
	</center>
	<br>
	<nav class="navbar navbar-default">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="#bs-example-navbar-collapse-1"
				aria-expanded="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="main.jsp"> 경기도 광주 </a> 
			<a class="navbar-brand">COVID-19<br>코로나19 예방접종 백신정보 사이트</a>
		</div>
		<div class="collapse navbar-collapse" id=bs-example-navbar-collapse-1">
		<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><li class="active"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li class="active"><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
		<ul class="nav navbar-nav navbar-right">
				<li><a href="main.jsp">홈</a>
				</li>
				<li><a href="https://ncvr.kdca.go.kr/cobk/index_n.html">예약하러 가기</a>
				</li>
				<li><a href="map.jsp">의료기관 위치</a>
				</li>
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">게시판<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="bbs.jsp">자유게시판</a></li>
						<li><a href="bbs2.jsp">후기게시판</a></li>
					</ul></li>
			</ul>
		</div>
	</nav>
	
		<div class="container">
		<div class="col=lg-4"></div>
		<div class="col=lg-4">
				<form method="post" action="loginAction.jsp">
					<h3 style="text-align: center;">아이디찾기</h3>
					<div class="form-group">
						<input type="text" class="form-control" placeholder="이름을 입력하세요." name="userName" maxlength="20">
					</div>
					<div class="form-group">
						<input type="password" class="form-control" placeholder="이메일을 입력하세요." name="userEmail" maxlength="20">
					</div>
					<input type="submit" class="btn btn-primary form-control" value="확인">
				</form>
			</div>
		<div class="col-lg-4"></div>
	</div>
	</div>
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>