<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h2>Select Seat</h2>

<form action="confirm.jsp" method="post">
    <input type="hidden" name="movie" value="<%= request.getParameter("movieId") %>">
    <input type="hidden" name="show" value="<%= request.getParameter("showId") %>">

    Seat Numbers (e.g., A1,A2,A3):  
    <input type="text" name="seats" required><br><br>

    <input type="submit" value="Continue">
</form>



</body>
</html>