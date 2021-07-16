<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Bootstrap CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>회원 관리</title>
<script type="text/javascript" src="script/member.js"></script>
</head>
<body>
<h2> 로그인 </h2>
<form action="login.do" method="post" name="frm" >
	<table>
	<tr>
		<td>아이디 </td>
		<td><input type="text" name="userid" value="${userid}"></td> 
	</tr>
	<tr>
		<td>암 호 </td>
		<td><input type="password" name="pwd"></td> 
	</tr>
	<tr>
	<td colspan="2" align="center">
	<input type="submit" class="btn btn-primary" value="로그인" onclick="return loginCheck()">&nbsp;&nbsp;
	<input type="reset" class="btn btn-primary" value="취소"> &nbsp;&nbsp;
	<input type="button" class="btn btn-primary" value="회원 가입"	onclick="location.href='join.do'">
<!-- 	<button type="button" class="btn btn-primary">Primary</button> -->
<!-- <button type="button" class="btn btn-secondary">Secondary</button> -->
<!-- <button type="button" class="btn btn-success">Success</button> -->
<!-- <button type="button" class="btn btn-danger">Danger</button> -->
<!-- <button type="button" class="btn btn-warning">Warning</button> -->
<!-- <button type="button" class="btn btn-info">Info</button> -->
<!-- <button type="button" class="btn btn-light">Light</button> -->
<!-- <button type="button" class="btn btn-dark">Dark</button> -->

<!-- <button type="button" class="btn btn-link">Link</button> -->
	</td>
	</tr>
	<tr><td colspan="2" > ${message}</td></tr>
	</table>
</form>
</body>
</html>