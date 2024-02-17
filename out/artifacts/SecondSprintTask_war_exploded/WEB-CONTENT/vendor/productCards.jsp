<%@ page import="Classes.Items" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        .product-card {
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0,0,0,0.1);
            transition: transform 0.3s ease;
            background-color: #fff;
            overflow: hidden;
            margin: 20px;
            width: 300px;
            cursor: pointer;
            display: inline-block;
        }

        .product-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.2);
        }

        .product-card-content {
            padding: 20px;
            text-align: center;
        }

        .product-card h3 {
            margin-top: 0;
            font-size: 20px;
            color: #333;
        }

        .product-card p {
            margin: 10px 0;
            font-size: 16px;
            color: #666;
        }

        .product-card button {
            display: block;
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            justify-content: center;
            background-color: #4CAF50;
            color: white;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .product-card button:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
<%
    ArrayList<Items> items = (ArrayList<Items>) request.getAttribute("itemsArray");

    for(Items i: items) {

%>
    <div class="product-card">
        <div class="product-card-content">
            <h3><%=i.getName()%></h3>
            <p><%=i.getDescription()%></p>
            <p>Цена: $<%=i.getPrice()%></p>
            <button>Добавить в корзину</button>
        </div>
    </div>
<%
    }
    %>
</body>
</html>
