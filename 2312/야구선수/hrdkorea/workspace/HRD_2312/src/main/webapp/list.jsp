<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>롯데자이언츠 선수 목록</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
<section>
<h1 style="text-align:center">롯데자이언츠 선수 목록</h1>
<table border="1" style="text-align:center; margin:auto;">
	<tr>
		<td>선수번호</td>
		<td>선수이름</td>
		<td>선수포지션</td>
		<td>선수등록일</td>
		<td>선수등급</td>
		<td>삭제</td>
	</tr>
	<%
	try{
		Class.forName("oracle.jdbc.OracleDriver");
		Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system","1234");
		String sql ="select * from giants_player";
		PreparedStatement pstmt = con.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		while(rs.next()){
			String date=rs.getString(4);
			date = date.substring(0,4)+"년"+date.substring(4,6)+"월"+date.substring(6,8)+"일";
			%>
			<tr>
				<td><a href="insert2.jsp?mv=<%=rs.getString(1) %>"><%=rs.getString(1) %></a></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=date %></td>
				<td><%=rs.getString(5) %></td>
				<td><a href="action-d.jsp?cl=<%=rs.getString(1) %>">삭제</a></td>
			</tr>
			<%
		}
	}catch(Exception e){
		e.printStackTrace();
	}
	%>
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>