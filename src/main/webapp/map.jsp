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

				<li><a href="main.jsp">홈</a>

				</li>

				<li><a href="https://ncvr.kdca.go.kr/index_n.html">예약하러 가기</a>

				</li>

				<li class="active"><a href="map.jsp">의료기관 위치</a>

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

 

				<li class="dropdown"><a href="#" class="dropdown-toggle"

					data-toggle="dropdown" role="button" aria-haspopup="true"

					aria-expanded="false">경기광주시민체육관<span class="caret"></span></a>

					<ul class="dropdown-menu">

						<li><a href="map.jsp">경기광주시민체육관</a></li>

						<li><a href="map2.jsp">참조은병원</a></li>

					</ul></li>

			</ul>
			<h1 style="text-align: center;">경기광주시민체육관</h1><br>

	<center><div id="map" style="width: 1137px; height: 400px;"></div></center>

	<script type="text/javascript"

		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=fbbc7335f83ea0e291ce40cd973c1669"></script>

	<script>

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 

		mapOption = {

			center : new kakao.maps.LatLng(37.39477923848797,

					127.25865020216514), // 지도의 중심좌표

			level : 4

		// 지도의 확대 레벨

		};

 

		var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

 

		// 마커가 표시될 위치입니다 

		var markerPosition = new kakao.maps.LatLng(37.39477923848797,

				127.25865020216514);

 

		// 마커를 생성합니다

		var marker = new kakao.maps.Marker({

			position : markerPosition

		});

 

		// 마커가 지도 위에 표시되도록 설정합니다

		marker.setMap(map);

 

		var iwContent = '<div style="padding:5px;">경기광주시민체육관 <br><a href="https://map.kakao.com/link/map/경기광주시민체육관,37.39477923848797, 127.25865020216514" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/광주시민체육관,37.39477923848797, 127.25865020216514" style="color:blue" target="_blank">길찾기</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다

		iwPosition = new kakao.maps.LatLng(37.39477923848797,

				127.25865020216514); //인포윈도우 표시 위치입니다

 

		// 인포윈도우를 생성합니다

		var infowindow = new kakao.maps.InfoWindow({

			position : iwPosition,

			content : iwContent

		});

 

		// 마커 위에 인포윈도우를 표시합니다. 두번째 파라미터인 marker를 넣어주지 않으면 지도 위에 표시됩니다

		infowindow.open(map, marker)

	</script>
	<br><br>
		<div class="container">

		<div class="jumbotron">

			<div class="container">

				<h1>코로나19 백신접종 교통편의 지원</h1>

				<p>☎ 031-769-1030 ☎</p>

				<p>2021년 5월 1일 ~ 6월 30일 : 권역별 노선 운영 4대 운영</p>

				<p>1호차 : 광주터미널 - 보건소 - 경기광주역 - 시민체육관</p>

				<p>2호차 : 오포농협 - 능평도서관 - 오포읍사무소 - 오포공성운동장 - 시민체육관</p>

				<p>3호차 : 도척면사무소 - 곤지암터미널 - 초월읍사무소 - 김촌말 - 시민체육관</p>

				<p>4호차 : 남종면사무소 - 퇴촌농협앞 - 남한산성면사무소 - 시민체육관</p>

			</div>

		</div>

	</div>

	<script

		src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

	<script src="js/bootstrap.min.js"></script>

</body>

</html>

