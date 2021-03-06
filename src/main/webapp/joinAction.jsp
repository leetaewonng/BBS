<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="user.UserDAO"%>
<%@ page import="java.io.PrintWriter"%>
<%
request.setCharacterEncoding("UTF-8");
%>
<jsp:useBean id="user" class="user.User" scope="page" />
<jsp:setProperty name="user" property="userID" />
<jsp:setProperty name="user" property="userPassword" />
<jsp:setProperty name="user" property="userName" />
<jsp:setProperty name="user" property="userAge" />
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
	String userID = null;
	if (session.getAttribute("userID") != null) {
		userID = (String) session.getAttribute("userID");
	}
	if (userID != null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이미 로그인이 되어있습니다.')");
		script.println("location.href = 'main.jsp'");
		script.println("</script>");
	}
	if (user.getUserID() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('아이디를 입력하세요.')");
		script.println("history.back()");
		script.println("</script>");
	}
	if (user.getUserPassword() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호를 입력하세요.')");
		script.println("history.back()");
		script.println("</script>");
	}
	if (user.getUserPassword() != user.getUserPassword()) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("history.back()");
		script.println("alert('비밀번호가 일치하지 않습니다')");
		script.println("</script>");
	}
	if (user.getUserName() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이름을 입력하세요.')");
		script.println("history.back()");
		script.println("</script>");
	}
	if (user.getUserAge() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('나이를 입력하세요.')");
		script.println("history.back()");
		script.println("</script>");
	}
	if (user.getUserEmail() == null) {
		PrintWriter script = response.getWriter();
		script.println("<script>");
		script.println("alert('이메일을 입력하세요.')");
		script.println("history.back()");
		script.println("</script>");
	} 
	
	else {
		UserDAO userDAO = new UserDAO();
		int result = userDAO.join(user);
		if (result == -1) {
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('이미 존재하는 아이디입니다.')");
			script.println("history.back()");
			script.println("</script>");
		} else {
			session.setAttribute("userID", user.getUserID());
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('회원가입 성공.')");
			script.println("location.href = 'main.jsp'");
			script.println("</script>");
		}
	}
	%>
</body>
</html>