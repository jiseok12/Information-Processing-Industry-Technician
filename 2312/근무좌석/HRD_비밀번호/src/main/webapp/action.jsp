<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>

<%
request.setCharacterEncoding("utf-8");

String resvno = request.getParameter("resvno");
String empno = request.getParameter("empno");
String resvdate = request.getParameter("resvdate");
String seatno = request.getParameter("seatno");
try{
	Class.forName("oracle.jdbc.OracleDriver");
	Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
	String sql="insert into tbl_resv_202108 values(?,?,?,?)";
	PreparedStatement pstmt = conn.prepareStatement(sql);
	
	pstmt.setString(1,resvno);
	pstmt.setString(2,empno);
	pstmt.setString(3,resvdate);
	pstmt.setString(4,seatno);
	
	pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}

%>
<jsp:forward page="reserve.jsp"></jsp:forward>