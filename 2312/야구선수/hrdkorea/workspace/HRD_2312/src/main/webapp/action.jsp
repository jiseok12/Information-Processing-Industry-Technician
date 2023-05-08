<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%
request.setCharacterEncoding("utf-8");

String pid = request.getParameter("pid");
String pname = request.getParameter("pname");
String pposition = request.getParameter("pposition");
String pdate = request.getParameter("pdate");
String pgrade = request.getParameter("pgrade");
out.print(pid+pname+pposition+pdate+pgrade);
try{
Class.forName("oracle.jdbc.OracleDriver");
Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system","1234");
String sql ="insert into giants_player values(?,?,?,?,?)";
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, pid);
pstmt.setString(2, pname);
pstmt.setString(3, pposition);
pstmt.setString(4, pdate);
pstmt.setString(5, pgrade);

pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}
%>
<jsp:forward page="list.jsp"></jsp:forward>