<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="book" method="post">

    <input type="hidden" name="movie" value="<%= request.getParameter("movie") %>">
    <input type="hidden" name="show" value="<%= request.getParameter("show") %>">
    <input type="hidden" name="seats" value="<%= request.getParameter("seats") %>">

    Your Name: <input type="text" name="name" required><br><br>

    <input type="submit" value="Book Ticket">
</form>



</body>
</html>