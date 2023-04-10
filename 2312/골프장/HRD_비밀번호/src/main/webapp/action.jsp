<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>

<%
	request.setCharacterEncoding("UTF-8");
	String regist_month = request.getParameter("regist_month");
	String c_no = request.getParameter("c_no");
	String class_area = request.getParameter("class_area");
	int tuition =Integer.parseInt(request.getParameter("tuition"));
	String teacher_code = request.getParameter("teacher_code");
    
	try{
    	Class.forName("oracle.jdbc.OracleDriver");
        Connection con = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe","system","1234");
        String sql = "inset into tbl_class_202201 values(?,?,?,?,?)";
        PreparedStatement stmt = con.prepareStatement(sql);
        stmt.setString(1, regist_month);
        stmt.setString(2, c_no);
        stmt.setString(3, class_area);
        stmt.setInt(4, tuition);
        stmt.setString(5, teacher_code);
        stmt.executeLargeUpdate();
    	
    }catch(Exception e){
		e.printStackTrace();
	}
%>
<jsp:forward page="applay.jsp"></jsp:forward>