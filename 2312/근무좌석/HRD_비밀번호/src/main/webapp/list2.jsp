<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<%
			request.setCharacterEncoding("utf-8");
			String empno = request.getParameter("empno");
			try{
				Class.forName("oracle.jdbc.OracleDriver");
				Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@//localhost:1521/xe", "system", "1234");
				String sql="select se.empno, empname, tel1,tel2,tel3,re.seatno,office,callno " +
				"from TBL_emp_202108 se, tbl_resv_202108 re, tbl_seat_202108 se "+
				"where se.empno=re.empno and re.seatno=se.seatno and se.empno= "+empno;
				String sql2="select count(empno) from tbl_resv_202108 where empno= "+empno;
				PreparedStatement pstmt2 = conn.prepareStatement(sql2);
				ResultSet rs2 = pstmt2.executeQuery();
				int emno = 1;
				while(rs2.next()){
					int emnomode=rs2.getInt(1);
					if(emnomode == 0){
						emno=0;
					}
				}
				PreparedStatement pstmt = conn.prepareStatement(sql);
				ResultSet rs = pstmt.executeQuery();
				if(emno != 0){
		%>
		<h2>사원번호: <%=empno %> 님의 좌석예약조회</h2>
		<table border=1>
			<tr>
				<td>사원번호</td>
				<td>이름</td>
				<td>근무일자</td>
				<td>좌석번호</td>
				<td>좌석위치</td>
				<td>내선번호</td>
				<td>내선번호2</td>
				<td>내선번호3</td>
			</tr>
			<%
					while(rs.next()){
			%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(7) %></td>
				<td><%=rs.getString(8) %></td>
			</tr>
			<%
					} 
			%>
		</table>
		<%
				}
				else{
		%>
		<h2>좌석예매 정보가 존재하지 않습니다</h2>
		<input type="button" value="돌아가기" onclick="location.href='list.jsp'">
		<%
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		%>
		</section>
		<jsp:include page="footer.jsp"></jsp:include>
	</body>
</html>