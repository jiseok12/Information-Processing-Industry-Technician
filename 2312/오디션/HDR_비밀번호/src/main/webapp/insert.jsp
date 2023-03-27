<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">
<script src="check.js"></script>
</head>
<body>
<jsp:include page="header.jsp" ></jsp:include>
<section>
	<h2>오디션 등록</h2>
	<form method="POST" action="action.jsp" name="frm">
		<table border="1">
			<tr>
				<td>참가번호</td>
				<td><input type="text" name="artist_id">*참가번호는(A000)4자리입니다</td>
			</tr>
			<tr>
				<td>참가자명</td>
				<td><input type="text" name="artist_name"></td>
			</tr>
			<tr>	
				<td>생년월일</td>
				<td>
					<input type="text" name="birth">
				</td>
			</tr>
			<tr>
				<td>성별</td>
				<td><input type="radio" name="gender" value="M">남성<input type="radio" name="gender" value="F" checked>여성</td>
			</tr>
			<tr>
				<td>특기</td>
				<td>
					<select name="talent">
						<option value="0">듣기</option>
						<option value="1">보컬</option>
						<option value="2">댄스</option>
						<option value="3">랩</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>소속사</td>
				<td><input type="text" name="agency"></td>
			</tr>
			<tr>
				<td colspan="2">
					<input  type="button" name="" value="오디션 등록" onclick="insertCheck()">&nbsp;
					<input type="button" name="" value="다시쓰기" onclick="res()">
				</td>
			</tr>
		</table>
	</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>