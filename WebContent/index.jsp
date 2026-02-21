<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <title>Movie Ticket Booking System</title>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: "Poppins", sans-serif;
        }

        body {
            background: linear-gradient(135deg, #0f0c29, #302b63, #24243e);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
        }

        .container {
            width: 85%;
            max-width: 700px;
            padding: 40px;
            background: rgba(255, 255, 255, 0.08);
            border-radius: 15px;
            backdrop-filter: blur(10px);
            text-align: center;
            box-shadow: 0 8px 25px rgba(0, 0, 0, 0.3);
            animation: fadeIn 1.2s ease;
        }

        .title {
            font-size: 34px;
            font-weight: 700;
            margin-bottom: 20px;
            letter-spacing: 1px;
        }

        p {
            font-size: 16px;
            margin-bottom: 30px;
            opacity: 0.85;
        }

        /* Buttons */
        .btn {
            display: inline-block;
            padding: 14px 35px;
            margin: 12px;
            font-size: 18px;
            border-radius: 50px;
            color: white;
            text-decoration: none;
            background: linear-gradient(to right, #ff416c, #ff4b2b);
            transition: 0.3s ease;
        }

        .btn:hover {
            transform: scale(1.08);
            box-shadow: 0 0 20px rgba(255, 65, 108, 0.6);
        }

        /* Animation */
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(20px);
            }

            to {
                opacity: 1;
                transform: translateY(0px);
            }
        }

        /* Footer */
        .footer {
            margin-top: 30px;
            font-size: 14px;
            opacity: 0.7;
        }
    </style>
</head>

<body>

    <div class="container">
        <div class="title">🎬 Movie Ticket Booking System</div>

        <p>Book the latest movies with fast, easy, and secure online ticket booking.</p>

        <a href="movies" class="btn">🎥 View Movies</a>
        <a href="admin/add_movie.jsp" class="btn">⚙️ Admin Panel</a>

        <div class="footer">
            © 2026 Movie Ticket Booking System
        </div>
    </div>

</body>

</html>