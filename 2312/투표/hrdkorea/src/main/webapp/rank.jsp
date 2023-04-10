<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "dbconnect.jsp" %>
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
<h2>후보자등수</h2>
<table border="1">
	<tr>
		<td>후보번호</td>
		<td>성명</td>
		<td>총투표건수</td>
	</tr>
	<%
		try{
			String sql="select vo.m_no, m_name, count(vo.m_no) "+
					"from tbl_vote_202005 vo, tbl_member_202005 me "+
					"where vo.m_no = me.m_no "+
					"group by vo.m_no, m_name ";
			PreparedStatement pstmt =con.prepareStatement(sql);
			ResultSet rs= pstmt.executeQuery();
			while(rs.next()){
				%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=rs.getString(3) %></td>
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