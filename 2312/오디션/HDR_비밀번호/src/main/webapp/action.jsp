<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="dbconnect.jsp" %>
<%@ page import="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String artist_id=request.getParameter("artist_id");
	String artist_name=request.getParameter("artist_name");
	String birth = request.getParameter("birth");
	String gender = request.getParameter("gender");
	String talent = request.getParameter("talent");
	String agency = request.getParameter("agency");

	
	try{
		String sql = "insert into tbl_artist_201905 values(?,?,?,?,?,?)";
		PreparedStatement pstmt = con.prepareStatement(sql);
		pstmt.setString(1, artist_id);
		pstmt.setString(2, artist_name);
		pstmt.setString(3, birth);
		pstmt.setString(4, gender);
		pstmt.setString(5, talent);
		pstmt.setString(6, agency);
		pstmt.executeUpdate();
	}
	catch(Exception e){
		e.printStackTrace();
	}
%>
<jsp:forward page="insert.jsp"></jsp:forward>