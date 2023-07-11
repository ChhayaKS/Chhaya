<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="payment.jsp">
	 No of Persons <input type="number" name="no of persons" required></br>
	<h1>Payment Details :</h1>
	 Debit card Number : <input type="number" required><br>
	 Expiry Date : <input type="text" required><br>
	 CVV : <input type="password" required><br>
	<input type="submit" value="submit" >
	</form>
</body>
</html>

