<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href = "style.css" rel = "stylesheet">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<script type="text/javascript" src="check.js"></script>
<section>
<h2>좌석예약조회</h2> 
<form action="list2.jsp" method="POST" name="frm">
<table border="1">
	<tr>
		<td>사원번호를 입력 하시오.</td>
		<td><input type="text" name="empno"></td>
	</tr>
	<tr>
		<td colspan="2">
			<input type="button" value="좌석예약조회" onclick="checking2();">
			<input type="button" value="홈으로" onclick="gohome()">
		</td>
	</tr>
</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>