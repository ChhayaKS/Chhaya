<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<form action="showdetails.jsp" method="post">
	<h5>--------------------------------------------------------------------</h5>
		<h2>Enter Your Passenger details</h2>
		<% 
		int count = Integer.parseInt(request.getParameter("no of persons"));
		for (int i = 1; i <= count; i++)
		{
		%>
		Passenger Name <%=i %> : <input type="text" name="fullname" required> </br> 
		Aadhar UID <%=i %> : <input type="number" name="uid" required></br> 
		Phone Number <%=i %> : <input type="number" name="phone" required> </br> 
		Age <%=i %> : <input type="number" name="age" required></br>
		-----------------------------------------------------------------------</br>
		<%
		}
		%>
		<input type="submit" value="Book Ticket"></br>
		<h2>****************************************************************************</h2>
	</form>



<%@page import="java.sql.*,javax.servlet.*"%>

<%
 try{
 String Username=request.getParameter("username");
 String Password=request.getParameter("password");
 String Fname= request.getParameter("fname");
 String Lname= request.getParameter("lname");
 String Address= request.getParameter("address");
 long Phno= Long.parseLong(request.getParameter("phno"));

   Class.forName("com.mysql.jdbc.Driver");
	String url1 = "jdbc:mysql://localhost:3306/flyway";
	String user1 = "root";
	String pass1 = "manager";
	Connection con1 = DriverManager.getConnection(url1,user1,pass1);
	PreparedStatement st1 = con1.prepareStatement("insert into user values(?,?,?,?,?,?)");
	st1.setString(1, Username);
	st1.setString(2, Password );
	st1.setString(3,Fname);
	st1.setString(4,Lname);
	st1.setString(5,Address);
	st1.setLong(6,Phno);
	st1.executeUpdate();
	 }catch(Exception e)
  {
  e.printStackTrace();	
}

%>



</body>
</html>