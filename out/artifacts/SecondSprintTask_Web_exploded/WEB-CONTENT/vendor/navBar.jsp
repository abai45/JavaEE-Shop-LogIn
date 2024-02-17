
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .container {
            max-width: 100%;
            background-color: #0281cf;
        }

        .navBar {
            display: flex;
            align-items: center;
            max-width: 70%;
            justify-content: space-between;
            margin: 0 auto;
            padding: 10px;
            color: #fff;
        }

        .logoText, .link{
            text-decoration: none;
            color: #fff;
        }
        .logoText {
            font-size: 24px;
            font-weight: bold;
        }
        .link {
            font-size: 18px;

        }
        .link:first-child {
            margin-right: 20px;
        }
        .navLink {
            margin-right: 15px;
            color: #fff;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container">
    <div class="navBar">
        <div class="logo">
            <a class="logoText" href="/home">BITLAB SHOP</a>
        </div>
        <div class="navLink">
            <a class="link" href="/login">Log In</a>
            <a class="link" href="/home">Registration</a>
        </div>
    </div>
</div>
</body>
</html>
