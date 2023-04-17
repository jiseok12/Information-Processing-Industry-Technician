<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
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
<h2>부서별근무일수집계</h2>
<table border=1>
	<tr>
		<td>사원번호</td>
		<td>이름</td>
		<td>부서명</td>
		<td>근무일수</td>
	</tr>
<%
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
	String sql="select em.empno, empname,  deptcode, count(*) "+
			"from tbl_emp_202108 em, tbl_resv_202108 re "+
			"where em.empno=re.empno "+
			"group by em.empno, empname, deptcode ";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	ResultSet rs = pstmt.executeQuery();
	while(rs.next()){
		String deptc="";
		switch(rs.getInt(3)){
		case 10:
			deptc="영업팀";
			break;
		case 20:
			deptc="총무팀";
			break;
		case 30:
			deptc="구매팀";
			break;
		}
		%>
		<tr style="text-align:center">
			<td><%=rs.getString(1) %></td>
			<td><%=rs.getString(2) %></td>
			<td><%=deptc %></td>
			<td><%=rs.getString(4) %></td>
		</tr>
		<%
	}
%> 
</table>
</section>
<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>