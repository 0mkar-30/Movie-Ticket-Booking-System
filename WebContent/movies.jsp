<%@ page import="java.util.*, model.Movie" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>

<head>
    <title>Movies</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: 'Poppins', sans-serif;
            background: #0f0c29;
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            color: white;
        }

        h1 {
            text-align: center;
            padding: 20px;
            font-size: 36px;
            letter-spacing: 1px;
        }

        .movie-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 25px;
            padding: 40px;
            width: 90%;
            margin: auto;
        }

        .movie-card {
            background: rgba(255, 255, 255, 0.08);
            padding: 20px;
            border-radius: 15px;
            text-align: center;
            transition: 0.3s ease;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            backdrop-filter: blur(10px);
        }

        .movie-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 0 25px rgba(255, 65, 108, 0.6);
        }

        .movie-title {
            font-size: 22px;
            margin-bottom: 10px;
            font-weight: bold;
        }

        .movie-desc {
            font-size: 14px;
            opacity: 0.8;
            margin-bottom: 20px;
        }

        .btn {
            padding: 10px 25px;
            background: linear-gradient(45deg, #ff416c, #ff4b2b);
            color: white;
            border-radius: 30px;
            text-decoration: none;
            font-size: 16px;
            transition: 0.3s;
        }

        .btn:hover {
            transform: scale(1.1);
            box-shadow: 0 0 15px rgba(255, 65, 108, 0.6);
        }
    </style>
</head>

<body>

    <h1>🎥 Available Movies</h1>

    <div class="movie-container">

        <%
            List<Movie> movies = (List<Movie>) request.getAttribute("movieList");
            if (movies != null) {
                for (Movie m : movies) {
        %>

  
        <div class="movie-card">
            <div class="movie-title"><%= m.getName() %></div>

            <div class="movie-desc">
                <%= m.getDescription() %>
            </div>

            <a href="shows?movieId=<%= m.getId() %>" class="btn">Book Now</a>
        </div>


        <%  }
            } else {
        %>

        <p>No movies available.</p>

        <% } %>

    </div>

</body>

</html>