<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
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
<h1>강사조회</h1>
<table border="1">
	<tr>
		<td>강사코드</td>
		<td>강사명</td>
		<td>강의명</td>
		<td>수강료</td>
		<td>강사자격취득일</td>
	</tr>
	<%
    try{
    	Class.forName("oracle.jdbc.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
        String sql = "select * from tbl_teacher_202201";
        PreparedStatement stmt = con.prepareStatement(sql);
        ResultSet rs =stmt.executeQuery();
    	while(rs.next()){
    		String birth = rs.getString(5);
    		birth = birth.substring(0,4) + "년" +birth.substring(4,6) + "월"+birth.substring(6,8) + "일"; 
    		%>
    			<tr>
    				<td><%=rs.getString(1) %></td>
    				<td><%=rs.getString(2) %></td>
    				<td><%=rs.getString(3) %></td>
    				<td><%=rs.getString(4) %></td>
    				<td><%=birth %></td>
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