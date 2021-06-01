
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Edit product</title>
    <style>
        .message{
            color: dodgerblue;
        }
    </style>
</head>
<body>
    <h1>Edit product</h1>
    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>

    <p>
        <a href="/product">Back to product list</a>
    </p>

    <form method = "post">
        <table>
            <tr>
                <td>Name: </td>
                <td><input type="text" name="name" id="name" value="${requestScope["product"].getName()}"></td>
            </tr>
            <tr>
                <td>Price: </td>
                <td><input type="text" name="price" id="price" value="${requestScope["product"].getPrice()}"></td>
            </tr>
            <tr>
                <td>Description: </td>
                <td><input type="text" name="desc" id="desc" value="${requestScope["product"].getDesc()}"></td>
            </tr>
            <tr>
                <td>Producer: </td>
                <td><input type="text" name="producer" id="producer" value="${requestScope["product"].getProducer()}"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type = "submit" value = "Update product"></td>
            </tr>
        </table>
    </form>

</body>
</html>
