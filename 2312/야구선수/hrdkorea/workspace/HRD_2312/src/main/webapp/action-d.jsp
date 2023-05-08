<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");
String pid = request.getParameter("cl");
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system","1234");
String sql ="delete from giants_player where pid="+pid;
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}
%>
<jsp:forward page="list.jsp"></jsp:forward>