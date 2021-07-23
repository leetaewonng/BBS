<%@ page language="java" contentType="text/html; charset=UTF-8"

	pageEncoding="UTF-8"%>

<%@ page import="java.io.PrintWriter"%>

<!DOCTYPE html>

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<meta name="viewport" content="width=device-width , initial-scale=1">

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

			<a class="navbar-brand" href="main.jsp"> 경기도 광주 </a> <a

				class="navbar-brand">COVID-19<br>코로나19 예방접종 백신정보 사이트

			</a>

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

				<li class="active"><a href="main.jsp">홈</a></li>

				<li><a href="https://ncvr.kdca.go.kr/index_n.html">예약하러 가기</a>

				</li>

				<li><a href="map.jsp">의료기관 위치</a></li>

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

		<div class="jumbotron">

			<div class="container">

				<h1>예방접종 전 주의사항</h1>

				<p>예방접종 하루 전, 예방접종 대상자는 예약된 예방접종 장소와 시간을 확인하고, 건강한 몸 상태를 유지한

					상태에서 접종 전 반드시 의사의 예진을 받아야 한다.<br><br> 1차 접종 시 또는 코로나19 백신 구성 성분에 대한 아나필락시스와

					같은 심한 알레르기 반응이 나타난 경우 접종을 받아서는 안 되며, △코로나19 감염이 의심되는 경우, △발열(37.5℃

					이상) 등 급성병증이 있는 경우에는 접종을 연기해야 한다.<br><br> 코로나19 백신별 1차·2차 예방접종 간격을 반드시 준수해

					동일한 백신으로 접종해야 하고, 다른 감염병 예방접종은 코로나19 예방접종과 최소 14일 간격을 둬야 한다.<br><br> 백신별

					접종간격은 아스트라제네카 제품 8∼12주, 화이자 제품 3주다. <br><br></p><a>출처 :

					히트뉴스(http://www.hitnews.co.kr)</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <a class="btn btn-primary btn-pull" href="main.jsp"
			role="button">돌아가기</a>

			</div>

		</div>

	</div>

	<script

		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script src="js/bootstrap.min.js"></script>

</body>

</html>