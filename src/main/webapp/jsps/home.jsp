<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.net.*" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Tejesh | DevOps Portfolio</title>
    <link rel="icon" href="images/tejesh_logo.jpg">
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;500;700&display=swap');

        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
            color: #fff;
            overflow-x: hidden;
        }

        header {
            text-align: center;
            padding: 50px 20px 20px;
            background: linear-gradient(135deg, #00c9ff, #92fe9d);
            color: #000;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.4);
        }

        header img {
            width: 120px;
            border-radius: 50%;
            border: 4px solid white;
        }

        header h1 {
            font-size: 48px;
            margin: 20px 0 10px;
        }

        header p {
            font-size: 20px;
            color: #333;
        }

        .section {
            padding: 40px 20px;
            text-align: center;
        }

        .glass-box {
            background: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            border-radius: 15px;
            padding: 30px;
            max-width: 700px;
            margin: 20px auto;
            box-shadow: 0 8px 32px rgba(0, 0, 0, 0.5);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .glass-box h2 {
            color: #00e6e6;
            margin-bottom: 15px;
        }

        a {
            color: #00e6e6;
            text-decoration: none;
            font-weight: bold;
        }

        marquee {
            color: #ffcc00;
            font-weight: bold;
            font-size: 18px;
        }

        footer {
            background-color: rgba(0, 0, 0, 0.4);
            text-align: center;
            padding: 20px;
            color: #ccc;
        }

        .btn-hire {
            background: #00e6e6;
            padding: 12px 24px;
            color: #000;
            font-size: 18px;
            border: none;
            border-radius: 8px;
            margin-top: 20px;
            cursor: pointer;
            transition: 0.3s;
        }

        .btn-hire:hover {
            background: #ffcc00;
            color: #000;
        }
    </style>
</head>
<body>

<header>
    <img src="images/tejesh_logo.jpg" alt="Tejesh Logo">
    <h1>Tejesh | DevOps Engineer</h1>
    <p>CI/CD • Cloud • Docker • Kubernetes • GitHub Actions • AWS</p>
</header>

<div class="section">
    <div class="glass-box">
        <h2>🚀 About Me</h2>
        <p>I'm Tejesh, a passionate DevOps Engineer with hands-on experience in Jenkins, Docker, Kubernetes, Terraform, Ansible, and cloud platforms like AWS. I build scalable CI/CD pipelines and automate cloud infrastructure with precision.</p>
        <button class="btn-hire">💼 Hire Me Now</button>
    </div>

    <div class="glass-box">
        <h2>🌍 Server & Client Info</h2>
        <%
            InetAddress inetAddress = InetAddress.getLocalHost();
            String serverIp = inetAddress.getHostAddress();
            String serverHost = inetAddress.getHostName();
        %>
        <p><strong>Server Host Name:</strong> <%= serverHost %></p>
        <p><strong>Server IP:</strong> <%= serverIp %></p>
        <p><strong>Client IP:</strong> <%= request.getRemoteAddr() %></p>
        <p><strong>Client Host:</strong> <%= request.getRemoteHost() %></p>
    </div>

    <div class="glass-box">
        <h2>📍 Contact Info</h2>
        <p><strong>Tejesh</strong><br>
        1-84, Kshurikapuram, Vijayapuram, 517586, AP, India</p>
        <marquee>📞 7893237317</marquee>
        <p>Email: <a href="mailto:tejeshlearning@gmail.com">tejeshlearning@gmail.com</a></p>
    </div>

    <div class="glass-box">
        <h2>📁 Live Service</h2>
        <p>➡ <a href="services/employee/getEmployeeDetails">Get Employee Details</a></p>
    </div>
</div>

<footer>
    <p>© 2025 Tejesh DevOps Portfolio</p>
    <p>Designed with ❤️ to impress every recruiter.</p>
</footer>

</body>
</html>
