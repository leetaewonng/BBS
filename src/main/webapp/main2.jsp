<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width" , initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>경기도 광주 백신 정보사이트</title>
</head>
<body>
	<%
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	%>
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
			<%
			if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="login.jsp">로그인</a></li>
						<li><a href="join.jsp">회원가입</a></li>
					</ul></li>
			</ul>
			<%
			} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul></li>
			</ul>
			<%
			}
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="active"><a href="map.jsp">홈</a>
				</li>
				<li><a href="https://ncvr.kdca.go.kr/cobk/index_n.html">예약하러 가기</a>
				</li>
				<li><a href="map.jsp">의료기관 위치</a>
				</li>
				<li><a href="bbs.jsp">자유게시판</a>
				</li>
			</ul>
		</div>
	</nav>
	<div class="container">
		<div class="jumbotron">
			<div class="container">
				<h1>사전예약 기간 안내</h1>
				<p><60세~74세 고령층 사전예약 후 미접종자 7월 접종 안내></p>
				<p>○ (대상) : 60세~74세 (1947. 1. 1. ~ 1961. 12. 31. 출생)</p>
				<p>○ (예약기간) : 7. 12(월) ~ 7. 17(토)</p>
				<p>○ (접종기간) : 7. 26(월) ~ 8. 7(토)</p>
				<p>* 당초 5. 27. ~ 6. 19. 아스트라제네카 백신 접종 대상인 60세~74세 고령층으로</p>
				<p>사전예약을 완료하였으나, 건강상 이유 등 다양한 사유로 미접종한 자</p>
				<br>
				<p>
					<교육 및 보육 종사자 예방접종 사전안내>
				</p>
				<p>○ (대상) : 어린이집, 유치원 · 초등학교 · 중학교 교직원 등</p>
				<p>○ (예약기간) : 7. 14(수) 0시 ~ 7. 17(토) 18시</p>
				<p>○ (접종기간) : 7. 28(수) ~ 8. 7(토)</p>
				<p>
					○ (접종장소) : 전국 위탁의료기관
					&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
					<a class="btn btn-primary btn-pull" href="https://ncvr.kdca.go.kr/cobk/index_n.html" role="button">예약하러가기</a>
				</p>
			</div>
		</div>
	</div>
	<div style="background-color: #eeeeee; float: left; width: 33%; text-align: center;">
	<h>코로나19 예방접종</h><br>
	<h>온라인 예약방법</h><br>	
	<a class="btn btn-primary btn-pull" href="https://ncvr.kdca.go.kr/cobk/index_n.htmll" role="button">자세히</a>
	</div>
	<div style="background-color: #eeeeee; float: left; width: 33%; text-align: center;">
	<h>코로나19 예방접종</h><br>
	<h>콜센터 안내</h><br>
	<a class="btn btn-primary btn-pull" href="https://ncv.kdca.go.kr/menu.es?mid=a11709140000" role="button">자세히</a>
	</div>
	<div style="background-color: #eeeeee; float: left; width: 33%; text-align: center;">
	<h>코로나19 예방접종</h><br>
	<h>의료기관 찾기</h><br>
	<a class="btn btn-primary btn-pull" href="https://ncvr.kdca.go.kr/cobk/index_n.html" role="button">자세히</a>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>
