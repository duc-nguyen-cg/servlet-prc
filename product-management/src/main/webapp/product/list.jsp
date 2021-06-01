<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Product List</title>
</head>
<body>
    <h1>Products</h1>
    <p>
        <a href = "product?action=create">Create new product</a>
    </p>
    <table border = "1px solid black">
        <tr>
            <th>Name</th>
            <th>Price</th>
            <th>Description</th>
            <th>Producer</th>
            <th>Edit</th>
            <th>Delete</th>
        </tr>
        <c:forEach items = '${requestScope["products"]}' var = "product">
            <tr>
                <td><a href = "/product?action=view&id=${product.getId()}">${product.getName()}</a></td>
                <td>${product.getPrice()}</td>
                <td>${product.getDesc()}</td>
                <td>${product.getProducer()}</td>
                <td><a href = "/product?action=edit&id=${product.getId()}">edit</a></td>
                <td><a href = "/product?action=delete&id=${product.getId()}">delete</a></td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
