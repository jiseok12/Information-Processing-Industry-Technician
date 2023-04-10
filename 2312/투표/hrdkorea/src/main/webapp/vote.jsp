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
<section>
<h2>투표하기</h2>

<form method="POST" action="action.jsp" name="frm">
	<table border="1">
		<tr>
			<td>주민 번호</td>
			<td><input type="text" name="v_jumin"></td>
		</tr>
		<tr>
			<td>성명</td>
			<td><input type="text" name="v_name"></td>
		</tr>
		<tr>
			<td>투표번호</td>
			<td>
			<select name="m_no">
				<option>선택하시오</option>
				<option value="1">김후보</option>
				<option value="2">이윤찬</option>
				<option value="3">OH윤찬</option>
				<option value="4">UP윤찬</option>
				<option value="5">윤찬동무</option>
			</select>
		</tr>
		<tr>
			<td>투표시간</td>
			<td><input type="text" name="v_time"></td>
		</tr>
		<tr>
			<td>튜표장소</td>
			<td><input type="text" name="v_area"></td>
		</tr>
		<tr>
			<td>유권자확인</td>
			<td>
				<input type="radio" name="v_confirm"  value="Y">확인
				<input type="radio" name="v_confirm"  value="N">미확인
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="submit" value="튜표하기" name="" onclick="checking()">
				<input type="button" value="다시하기" name="" onclick="reseting()">
			</td>
		</tr>
	</table>
</form> 
<script src="check.js"></script>
</section>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>