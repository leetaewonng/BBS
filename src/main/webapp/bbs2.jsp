<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.PrintWriter" %>
<%@ page import="bbs2.BbsDAO" %>
<%@ page import="bbs2.Bbs" %>
<%@ page import="java.util.ArrayList" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>경기도 광주 백신 정보사이트</title>
<style type="text/css">
	a, a:hover {
		color: #000000;
		text-decoration: none;
	}
</style>
</head>
<body>
	<%
		String userID = null;
		if (session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		int pageNumber = 1;
		if (request.getParameter("pageNumber") != null) {
			pageNumber = Integer.parseInt(request.getParameter("pageNumber"));
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
				<li><a href="https://ncvr.kdca.go.kr/cobk/index_n.html">예약하러 가기</a>
				</li>
				<li><a href="map.jsp">의료기관 위치</a>
				</li>
					<li class="active" class="dropdown"><a href="#" class="dropdown-toggle"
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

					aria-expanded="false">후 기 게 시 판<span class="caret"></span></a>

					<ul class="dropdown-menu">

						<li><a href="bbs.jsp">자 유 게 시 판</a></li>

						<li><a href="bbs2.jsp">후 기 게 시 판</a></li>

					</ul></li>
					<h1 style="text-align: center;">후 기 게 시 판</h1><br>
	<div class="container">
		<div class="row">
			<table class="table table-striped" style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th style="background-color: #eeeeee; text-align: center;">번호</th>
						<th style="background-color: #eeeeee; text-align: center;">제목</th>
						<th style="background-color: #eeeeee; text-align: center;">작성자</th>
						<th style="background-color: #eeeeee; text-align: center;">백신</th>
						<th style="background-color: #eeeeee; text-align: center;">나이</th>
						<th style="background-color: #eeeeee; text-align: center;">작성일</th>
					</tr>
				</thead>
				<tbody>
					<%
						BbsDAO bbsDAO = new BbsDAO();
						ArrayList<Bbs> list = bbsDAO.getList(pageNumber);
						for(int i = 0; i < list.size(); i++) {
					%>
					<tr>
						<td><%= list.get(i).getBbsID() %></td>
						<td><a href="view2.jsp?bbsID=<%= list.get(i).getBbsID() %>"><%= list.get(i).getBbsTitle().replaceAll(" ", "&nbsp;").replaceAll("<", "&lt;").replaceAll(">", "&gt;").replaceAll("\n", "<br>")  %></a></td>
						<td><%= list.get(i).getUserID() %></td>
							<td><%= list.get(i).getBbsVaccine() %></td>
							<td><%= list.get(i).getBbsAge() %></td>
<%-- 						<td><%= list.get(i).getBbsDate().substring(0, 11) + list.get(i).getBbsDate().substring(11, 13) + "시" + list.get(i).getBbsDate().substring(14, 16) + "분" %></td> --%>
						<td><%= list.get(i).getBbsDate().substring(0, 11)%></td>
					</tr>
					<%
						}
					%>
				</tbody>
			</table>
			<%
				if(pageNumber != 1) {
			%>
				<a href="bbs2.jsp?pageNumber=<%=pageNumber - 1%>" class="btn btn-success btn-arraw-Left">이전</a>
			<%
				} if(bbsDAO.nextPage(pageNumber + 1)) {
			%>
				<a href="bbs2.jsp?pageNumber=<%=pageNumber + 1%>" class="btn btn-success btn-arraw-Left">다음</a>
			<%
				}
			%>
			<a href="bbsAction2.jsp" class="btn btn-primary pull-right">글쓰기</a>
		</div>
	</div>
	<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
</body>
</html>