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
<h1>회원정보조회</h1>
<table border="1">
	<tr>
		<td>수강일</td>
		<td>회원번호</td>
		<td>화원명</td>
		<td>강의명</td>
		<td>강의장소</td>
		<td>수강료</td>
		<td>등급</td>
	</tr>
	<%
    try{
    	Class.forName("oracle.jdbc.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
        String sql = "select cl.regist_month, cl.c_no, me.c_name, te.teacher_name,cl.class_area, cl.tuition, me.grade "+
        		"from  tbl_teacher_202201 te, tbl_member_202201 me, tbl_class_202201 cl "+
        		"where te.teacher_code=cl.teacher_code and cl.c_no=me.c_no ";
        PreparedStatement stmt = con.prepareStatement(sql);
        ResultSet rs =stmt.executeQuery();
    	while(rs.next()){
    		String mo = rs.getString(6);
    		mo = "₩"+mo;
    		String birth = rs.getString(1);
    		birth = birth.substring(0,4)+"년" +birth.substring(4,6)+"월";
    		%>
    			<tr>
    				<td><%=birth %></td>
    				<td><%=rs.getInt(2) %></td>
    				<td><%=rs.getString(3) %></td>
    				<td><%=rs.getString(4) %></td>
    				<td><%=rs.getString(5) %></td>
    				<td><%=mo %></td>
    				<td><%=rs.getString(7) %></td>
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