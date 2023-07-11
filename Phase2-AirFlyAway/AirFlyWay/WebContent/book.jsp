<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@page import="java.sql.DriverManager, java.sql.Connection, java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*"%>

<%
String SOURCE = request.getParameter("source");
String DESTINATION = request.getParameter("destination");
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyway";
String user = "root";
String pass = "manager";
String sql = "select * from flights where source='" + SOURCE + "'and destination='" + DESTINATION + "'";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<h5>*******************************************</h5>
<h1> Your Flights :</h1>
<table border="1">
	<tr>
		<th>name</th>
		<th>airline</th>
		<th>way</th>
		<th>price</th>
		<th>source</th>
		<th>destination</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td><%=rs.getString(1)%></td>
		<td><%=rs.getString(2)%></td>
		<td><%=rs.getString(3)%></td>
		<td><%=rs.getString(4)%></td>
		<td><%=rs.getString(5)%></td>
		<td><%=rs.getString(6)%></td>
	</tr>
	<%
	}
	%>
	</table>
		
	<form action="customerdetails.jsp" method="post">
	<h5>*******************************************************</h5>
	No of Persons for travel : <input type="number" name="no of persons" required><br>
<h5>*******************************************************</h5>
     <h1> User Registration Form : </h1>
   Username :<input type="text" name="username" ><br>
   Password:<input type="password" name="password" ><br>
   Firstname:<input type="text" name="fname" ><br>
   Lastname:<input type="text" name="lname" ><br>
   Address:<input type="text" name="address" ><br>
   Phone:<input type="number" name="phno" ><br>
   <input type="submit" value="Register">
 </form>
  
	
<h5>******************************************************</h5>	
</body>
</html>