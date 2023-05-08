<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<%
request.setCharacterEncoding("utf-8");
String pid = request.getParameter("mv");
Class.forName("oracle.jdbc.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system","1234");
String sql ="select * from giants_player where pid="+pid;
PreparedStatement pstmt = con.prepareStatement(sql);
ResultSet rs = pstmt.executeQuery();
rs.next();
	
%>
<script type="text/javascript" src="check.js"></script>
<h1 style="text-align:center">선수 정보 수정</h1>
<form action="action-m.jsp" name="frm" method="POST">
	<table border="1" style="margin:auto">
		<tr>
			<td>선수번호</td>
			<td><input name="pid" type="text" value="<%=rs.getString(1) %>" readonly></td>
		</tr>
		<tr>
			<td>선수이름</td>
			<td><input name="pname" type="text" value="<%=rs.getString(2) %>"></td>
		</tr>
		<tr>
			<td>선수포지션</td>
			<td>
				<select name="pposition">
					<option value="투수" <%if(rs.getString(3).equals("투수"))  out.print("selected");%>>투수</option>
					<option value="내야수" <%if(rs.getString(3).equals("내야수"))  out.print("selected");%>>내야수</option>
					<option value="외야수" <%if(rs.getString(3).equals("외야수"))  out.print("selected");%>>외야수</option>
					<option value="포수" <%if(rs.getString(3).equals("포수"))  out.print("selected");%>>포수</option>
				</select>	
			</td>
		</tr>
		<tr>
			<td>선수등록일</td>
			<td><input name="pdate" type="text" value="<%=rs.getString(4) %>"></td>
		</tr>
		<tr>
			<td>선수등급</td>
			<td>
				<input name="pgrade" type="radio" value="S" <%if(rs.getString(5).equals("S"))  out.print("checked");%>>S
				<input name="pgrade" type="radio" value="A" <%if(rs.getString(5).equals("A"))  out.print("checked");%>>A
				<input name="pgrade" type="radio" value="B"<%if(rs.getString(5).equals("B"))  out.print("checked");%>>B
				<input name="pgrade" type="radio" value="C"<%if(rs.getString(5).equals("C"))  out.print("checked");%>>C	
			</td>
		</tr>
		<tr>
			<td colspan="2">
				<input type="button" value="수정" onclick="checking()">
				<input type="button" value="취소" onclick="reseting()">
			</td>
		</tr>
	</table>
</form>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>