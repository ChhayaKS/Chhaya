 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>AdminLogin</title>
</head>
<body>
       
      <form action="placeslist.jsp" method="post">
			<h2>
			Places:	<input type="submit" value="Places List">
			</h2>
		</form>
		<form action="airlineslist.jsp" method="post">
			<h2>
			Airlines:<input type="submit" value="Airlines List">
			</h2>
		</form>
		
		
		<form action="flightslist.jsp" method="post">
			<h2>
			All Flights:<input type="submit" value="Flights List">
			</h2>
		</form>
		<form action="passdata.jsp" method="post">
			<h2>
			Admin change password :<input type="submit" value="Change Password">
			</h2>
		</form>
</body>
</html>