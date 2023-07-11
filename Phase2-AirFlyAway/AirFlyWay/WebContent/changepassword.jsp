<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>
<%
String PASS = request.getParameter("new password");
String oldpass = request.getParameter("existing password");
String OLDPASS = "";
String confirmPassword = request.getParameter("confirm password");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyway";
String user = "root";
String pass = "manager";
String sql1 = "select password from login where password='" + oldpass + "'";
String sql2 = "update login set password=" + confirmPassword + " where username='?'";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql1);
if (rs.next()) {
	OLDPASS = rs.getString("password");
}
if (PASS.equals(confirmPassword)) {
	if (oldpass.equals(OLDPASS)) {
		st = con.createStatement();
		int i = st.executeUpdate(sql2);
		out.println("password updated");
		RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
		rd.include(request, response);
	} else {
		out.println("old password doesn't match");
		RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
		rd.include(request, response);
	}
} else {
	out.println("passwords dont match");
	RequestDispatcher rd = request.getRequestDispatcher("/passdata.jsp");
	rd.include(request, response);
}
%>
</body>
</html>