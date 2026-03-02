<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<h2>Select Show Time</h2>

<% List<Show> shows =(List<Show>) request.getAttribute("showList");%>

<ul>
<% for(Show s : shows){ %>
<li>
    <a href="seat_selection.jsp?showId=<%= s.getId() %>&movieId=<%= s.getMovie_id() %>">
        <%= s.getShow_time() %>
    </a>
</li>
<% } %>
</ul>


</body>
</html>