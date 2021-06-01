
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Create new product</title>
    <style>
        .message{color: green}
    </style>
</head>
<body>
    <h1> Create new product</h1>

    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>

    <p>
        <a href = "/product">Back to product list</a>
    </p>

    <form method="post">
        <table>
            <tr>
                <td>Name: </td>
                <td><input type = "text" name = "name" id="name"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type = "text" name = "price" id="price"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><input type = "text" name = "desc" id="desc"></td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td><input type = "text" name = "producer" id="producer"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type = "submit" value = "Create product"></td>
            </tr>
        </table>
    </form>
</body>
</html>
