<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="bbs2.BbsDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="bbs2" class="bbs2.Bbs" scope="page" />
<jsp:setProperty name="bbs2" property="bbsTitle" />
<jsp:setProperty name="bbs2" property="bbsContent" />
<jsp:setProperty name="bbs2" property="bbsAge" />
<jsp:setProperty name="bbs2" property="bbsVaccine" />
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>경기도 광주 백신 정보사이트</title>
</head>
<body>
	<%
		String userID = null;
		if(session.getAttribute("userID") != null) {
			userID = (String) session.getAttribute("userID");
		}
		if (userID == null){
			PrintWriter script = response.getWriter();
			script.println("<script>");
			script.println("alert('로그인을 하세요.')");
			script.println("location.href = 'login.jsp'");
			script.println("</script>");
		} else{
			if (bbs2.getBbsTitle() == null || bbs2.getBbsContent() == null || bbs2.getBbsAge() == null || bbs2.getBbsVaccine() == null) {
					PrintWriter script = response.getWriter();
					script.println("<script>");
					script.println("alert('입력이 안 된 사항이 있습니다.')");
					script.println("history.back()");
					script.println("</script>");
				} else {
					BbsDAO bbsDAO = new BbsDAO();
					int result = bbsDAO.write(bbs2.getBbsTitle(), userID, bbs2.getBbsContent(), bbs2.getBbsAge(), bbs2.getBbsVaccine());
					if (result == -1){
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("alert('글쓰기에 실패했습니다.')");
						script.println("history.back()");
						script.println("</script>");
					}
					else {
						PrintWriter script = response.getWriter();
						script.println("<script>");
						script.println("location.href = 'bbs2.jsp'");
						script.println("</script>");
					}
				}
		}
	%>
</body>
</html>