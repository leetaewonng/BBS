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

				<h1>예방접종 후 주의사항</h1>

				<p>예방접종 후 이상반응 발생 및 조치를 위해 모든 접종 완료자는 예방접종 후 15~30분간 접종기관에 머물러

					이상반응 발생 여부를 관찰하고, 귀가 후에도 적어도 3시간 이상 주의 깊게 관찰해야 한다.<br><br> 최소 15분 간 관찰하되,

					이전에 다른 원인(약, 음식, 주사행위 등)으로 중증 알레르기(예: 아나필락시스) 경험이 있는 경우는 30분 간

					관찰한다.<br><br> 접종 부위는 항상 청결히 유지하고, 동시에 접종 후 최소 3일간은 특별한 관심을 가지고 관찰하며 고열이 있거나

					평소와 다른 신체 증상이 나타나면 바로 의사 진료를 받도록 해야 한다.<br><br></p>

				<h1>예방접종 후 이상반응 생긴다면</h1>

				<p>코로나19 예방접종 후 이상반응으로 접종부위 통증이나 부기, 발적 등의 국소반응이나. 발열, 피로감, 두통,

					근육통, 메스꺼움ㆍ구토 등의 전신반응이 나타날 수 있으나, 이와 같이 접종 후 흔히 나타나는 이상반응은 대부분

					수일(3일) 내 증상이 사라진다.<br><br> 접종부위 통증이나 부기는 차가운 수건을 접종 부위에 대거나 근육통, 피로감 등 전신

					이상반응이 발생했을 때 진통제를 복용하는 것도 도움이 될 수 있다.<br><br> 다만, 알레르기 반응(두드러기나 발진, 얼굴이나 손

					부기) 등의 증상이 나타나거나, 39도 이상 고열이나 일반적으로 나타나는 이상반응의 증상이 일상생활을 방해하는 정도로

					심해지면 의료기관을 방문하여 진료를 받아야 한다.<br><br> 심한 알레르기 반응(아나필락시스 등)이 나타나면 즉시 119로

					연락하거나 가까운 응급실로 내원해야 한다.</p> <a>출처 : 히트뉴스(http://www.hitnews.co.kr)</a>&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp; <a class="btn btn-primary btn-pull" href="main.jsp"
			role="button">돌아가기</a>

			</div>

		</div>

	</div>

	<script

		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script src="js/bootstrap.min.js"></script>

</body>

</html>