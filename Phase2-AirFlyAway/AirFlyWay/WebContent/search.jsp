<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<table><tr><td>
<%@page import="java.sql.*,javax.servlet.*"%>
<%
Class.forName("com.mysql.jdbc.Driver");
String url = "jdbc:mysql://localhost:3306/flyway";
String user = "root";
String pass = "manager";
String sql = "select * from flights order by name";
Connection con = DriverManager.getConnection(url, user, pass);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);
%>
<h1> Available Flights List :</h1>
<table border="1">
	<tr>
		<th>name</th>
		<th>airline</th>
		<th>way</th>
		<th>price</th>
	</tr>
	<%
	while (rs.next()) {
	%>
	<tr>
		<td>
			<%=
			rs.getString(1)
			%>
		</td>
		<td>
			<%=
			rs.getString(2)
			%>
		</td>
		<td>
			<%=
			rs.getString(3)
			%>
		</td>
		<td>
			<%=
			rs.getString(4)
			%>
		</td>
	</tr>
	<%
	}
	%>
</table>

<br>
<br>

<br>
<h5>*********************************************************************************</h5>
</td><td>
   <h5>*************************************************************************************</h5>
<form action="book.jsp" method="post">
 Travel Date : <input type="date" id="traveldate" name="traveldate" required> 
	    <datalist id="source">
		<%
		Class.forName("com.mysql.jdbc.Driver");
		String url1 = "jdbc:mysql://localhost:3306/flyway";
		String user1 = "root";
		String pass1 = "manager";
		String sql1 = "select name from places order by name";
		Connection con1 = DriverManager.getConnection(url1, user1, pass1);
		ResultSet rs1 = con1.createStatement().executeQuery(sql1);
		
		while (rs1.next()) {
			String source = rs1.getString("name");
		%>
		<option value="<%=source%>" />
		<%
		}
		%>
	   </datalist>
	   <p>
		Source: <input type="text" name="source" list="source" required/>
	   </p>
	
	<datalist id="destination">
		<%
		Class.forName("com.mysql.jdbc.Driver");
		String url2= "jdbc:mysql://localhost:3306/flyway";
		String user2 = "root";
		String pass2 = "manager";
		String sql2 = "select name from places order by name";
		Connection con2 = DriverManager.getConnection(url2, user2, pass2);
		ResultSet rs2 = con2.createStatement().executeQuery(sql2);
		
		while (rs2.next()) {
			String destination = rs2.getString("name");
		%>
		<option value="<%=destination%>" />
		<%
		}
		//rs.close();
		//con.close();
		%>
	</datalist>
	<p>
		Destination: <input type="text" name ="destination" list="destination" required/>
    </p>

	No of Persons <input type="number" name="no of persons" required><br>
	<br>
 Search Flight: <input type="submit" value="Search Flight" name ="id"> <br>
 <h5>********************************************************************</h5>
</form>

</td></tr></table>

</body>
</html>