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
String sql ="update giants_player "+
			"set pname=?, pposition=?, pdate=?, pgrade=? "+
			"where pid="+pid;
PreparedStatement pstmt = con.prepareStatement(sql);
pstmt.setString(1, pname);
pstmt.setString(2, pposition);
pstmt.setString(3, pdate);
pstmt.setString(4, pgrade);

pstmt.executeUpdate();
}catch(Exception e){
	e.printStackTrace();
}
%>
<jsp:forward page="list.jsp"></jsp:forward>