<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="style.css" rel="stylesheet">

</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
	<form method="post" action="action.jsp" name=frm>
		<table border="1">
			<tr>
				<td>수강월</td>
				<td><input type="text" name="regist_month"></td>
			</tr>
			<tr>
				<td>화원명</td>
				<td>
					<select name="c_no" onchange= "getMemberNo(this.value)">
						<option value="">회원명</option>
						<option value="10001">홍길동</option>
						<option value="10002">이윤찬</option>				
					</select>
				</td>
			</tr>
			<tr>
				<td>회원번호</td>
				<td>
					<input type="text" name="memberNo" value="" readonly>
				</td>
			</tr>
			<tr>
				<td>강의장소</td>
				<td>
					<select name="class_area">
						<option value="">강의장소</option>
						<option value="서울본원">서울본원</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>강의명</td>
				<td>
					<select name="teacher_code" onchange="makeTuition(this.value)">
						<option value="">강의명</option>
						<option value="100">초급반</option>
					</select>
				</td>
			</tr>
			<tr>
				<td>수강료</td>
				<td><input type="text"  name="tuition" readonly></td>
			</tr>
			<tr>
				<td colspan="2" style="test-align:center">
					<input type="button" value="수강신청" onclick="checking()">
					<input type="button" value="다시쓰기" onclick="reseting()">
				</td>
			</tr>
		</table>
	</form>
</section>
<script src="check.js"></script>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>