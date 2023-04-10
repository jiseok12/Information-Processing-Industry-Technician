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
<h2>후보조회</h2>
<table border="1">
	<tr>
		<td>후보번호</td>
		<td>성명</td>
		<td>소속정당</td>
		<td>학력</td>
		<td>주민번호</td>
		<td>지역구</td>
		<td>대표전화1</td>
	</tr>
	<%
		try{
			String sql="select m_no, m_name, me.p_code, p_school,m_jumin, m_city, p_tel1, p_tel2, p_tel3 "+
						"from tbl_member_202005 me, tbl_party_202005 pa "+
						"where me.p_code=pa.p_code";
			PreparedStatement pstmt =con.prepareStatement(sql);
			ResultSet rs= pstmt.executeQuery();
			while(rs.next()){
				String school="";
				String pp="";
				String jumin = rs.getString(5);
				jumin= jumin.substring(0,6)+"-"+jumin.substring(7,13);
				String tel =  rs.getString(7)+"-"+ rs.getString(8)+"-"+ rs.getString(9);
				switch(rs.getString(4)){
					case "1":
						school="고졸";
					break;
					case "2":
						school="학사";
					break;
					case "3":
						school="석사";
					break;
					case "4":
						school="학사";
					break;
					case "5":
						school="박사";
					break;
				}
			
				switch(rs.getString(3)){
					case "P1":
						pp="A정당";
					break;
					case "P2":
						pp="B정당";
					break;
					case "P3":
						pp="C정당";
					break;
					case "P4":
						pp="D정당";
					break;
					case "P5":
						pp="E정당";
					break;
				}
				%>
				<tr>
					<td><%=rs.getString(1) %></td>
					<td><%=rs.getString(2) %></td>
					<td><%=pp %></td>
					<td><%=school %></td>
					<td><%=jumin %></td>
					<td><%=rs.getString(6) %></td>
					<td><%=tel%></td>
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