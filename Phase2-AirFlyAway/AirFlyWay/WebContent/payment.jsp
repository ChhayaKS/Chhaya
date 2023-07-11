<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
int count=Integer.parseInt(request.getParameter("no of persons"));
out.println("<h5><br><h3>"+"Payment of amount " + 5000*count + "/- is successful" +"</h3>");
out.println("<h5>*********************************************************</h5><br> <h1> <p style=color:green>Your Flight Ticket Booking Successful......</p></h1><br><h5>****************************************************</h5>");
//RequestDispatcher rd = request.getRequestDispatcher("/showdetails.jsp");
//rd.include(request, response);
%>
</body>
</html>