<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Students</title>
    <style>
        <%@include file="vendor/src/main.css"%>
    </style>
</head>
<body>
<%@include file="vendor/navBar.jsp"%>
<div class="mainContent">
    <div class="welcome">
        <h1 class="welcomeTitle">Welcome to BITLAB SHOP</h1>
        <p class="welcomeSubtitle">Lorem ipsum dolor sit amet,
            consectetur adipisicing elit. Commodi deleniti
            dolorem fuga nam tempore?</p>
    </div>
    <div class="productCards">
        <%@include file="vendor/productCards.jsp"%>
    </div>

</div>
</body>
</html>
