<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tejesh Learning Website</title>
    <link rel="icon" href="images/tejesh_logo.jpg">
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #f8f9fa, #e3f2fd);
            color: #333;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #1976d2;
            color: white;
            padding: 20px 0;
            text-align: center;
        }

        header h1 {
            margin: 0;
            font-size: 36px;
            letter-spacing: 2px;
        }

        .section {
            padding: 30px;
            text-align: center;
        }

        .section h2 {
            color: #1976d2;
        }

        .info-box {
            background-color: #e3f2fd;
            border-radius: 10px;
            padding: 20px;
            margin: 20px auto;
            max-width: 600px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }

        .footer {
            background-color: #1976d2;
            color: white;
            padding: 20px;
            text-align: center;
        }

        .footer a {
            color: #fff9c4;
            text-decoration: none;
        }

        img.logo {
            width: 100px;
            border-radius: 50%;
            margin-bottom: 10px;
        }

        marquee {
            color: #d32f2f;
            font-weight: bold;
        }
    </style>
</head>
<body>

<header>
    <img src="images/tejesh_logo.jpg" class="logo" alt="Tejesh Logo">
    <h1>Tejesh Learning Website</h1>
    <p>DevOps | Cloud | Scripting | CI/CD</p>
</header>

<div class="section">
    <h2>Welcome to My Learning Journey!</h2>
    <p>This is a simple JSP page powered with Groovy script and DevOps tools integration.</p>
</div>

<div class="info-box">
    <h3>🌐 Server Side Information</h3>
    <%
        InetAddress inetAddress = InetAddress.getLocalHost();
        String serverIp = inetAddress.getHostAddress();
        String serverHost = inetAddress.getHostName();
    %>
    <p><strong>Server Host Name:</strong> <%= serverHost %></p>
    <p><strong>Server IP Address:</strong> <%= serverIp %></p>
</div>

<div class="info-box">
    <h3>💻 Client Side Information</h3>
    <p><strong>Client IP Address:</strong> <%= request.getRemoteAddr() %></p>
    <p><strong>Client Host:</strong> <%= request.getRemoteHost() %></p>
</div>

<div class="info-box">
    <h3>📍 Contact Details</h3>
    <p><strong>Tejesh</strong><br>
    1-84, Kshurikapuram, Vijayapuram, 517586, AP, India</p>
    <marquee>📞 7893237317</marquee>
    <p>Email: <a href="mailto:tejeshlearning@gmail.com">tejeshlearning@gmail.com</a></p>
</div>

<div class="section">
    <h3>📁 Service Link</h3>
    <p>➡ <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
</div>

<div class="footer">
    <p>© 2025 Tejesh Learning Platform</p>
    <p>Developed and Maintained by <a href="https://www.google.com/">Tejesh DevOps</a></p>
</div>

</body>
</html>
