<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
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
	<h2>멘토 점수 조회</h2>
	<table border="1">
		<tr>
			<td>채점번호</td>
			<td>참가번호</td>
			<td>참가자명</td>
			<td>생년월일</td>
			<td>점수</td>
			<td>멘토명</td>
		</tr>
		<%
		request.setCharacterEncoding("utf-8");

		try{
			String sql = "select serial_no,tbl_point_201905.artist_id,artist_name,birth,score,mento_name " +
					"from tbl_point_201905,tbl_artist_201905, tbl_mento_201905 " +
					"where tbl_point_201905.artist_id = tbl_artist_201905.artist_id and "+
					"tbl_point_201905.mento_id = tbl_mento_201905.mento_id " +
					"order by serial_no";
			PreparedStatement pstmt = con.prepareStatement(sql);
			ResultSet rs =pstmt.executeQuery();
			 
			while(rs.next()){
				%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
					<td><%=rs.getString(4) %></td>
					<td><%=rs.getString(5) %></td>
					<td><%=rs.getString(6) %></td>
				</tr>
				<%
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		%>
	</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>