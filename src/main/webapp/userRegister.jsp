<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userGender" />
<jsp:setProperty name="user" property="userEmail" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경기도 광주 백신 정보사이트</title>
</head>
<body>
	<%
	String userID = request.getParameter("userID");
	String userPassword1 = request.getParameter("userPassword1");
	String userPassword2 = request.getParameter("userPassword2");
	String userName = request.getParameter("userName");
	String userGender = request.getParameter("userGender");
	String userEmail = request.getParameter("userEmail");
	if(userID == null || userID.equals("") || userPassword1 == null || userPassword1.equals("")
			|| userPassword2 == null || userPassword2.equals("") || userName == null || userName.equals("")
			|| userGender == null || userGender.equals("")
			|| userEmail == null || userEmail.equals("")) {
		request.getSession().setAttribute("messageType", "오류 메세지");
		request.getSession().setAttribute("messageContent", "모든 내용을 입력하세요.");
		response.sendRedirect("join.jsp");
		return;
	}
	if(!userPassword1.equals(userPassword2)) {
		request.getSession().setAttribute("messageType", "오류 메세지");
		request.getSession().setAttribute("messageContent", "비밀번호가 서로 일치하지 않습니다.");
		response.sendRedirect("join.jsp");
		return;
	}
	int result = new UserDAO().register(userID, userPassword1, userName, userGender, userEmail);
	if (result == 1) {
		request.getSession().setAttribute("messageType", "성공 메세지");
		request.getSession().setAttribute("messageContent", "회원가입에 성공했습니다.");
		response.sendRedirect("join.jsp");
		return;
	}
	else {
		request.getSession().setAttribute("messageType", "오류 메세지");
		request.getSession().setAttribute("messageContent", "이미 존재하는 회원입니다.");
		response.sendRedirect("join.jsp");
		return;
	}
	%>
</body>
</html>