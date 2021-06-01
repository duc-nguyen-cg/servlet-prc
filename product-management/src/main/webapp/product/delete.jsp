
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Delete Product</title>
</head>
<body>
    <h1>Delete Product</h1>

    <p>
        <c:if test='${requestScope["message"] != null}'>
            <span class="message">${requestScope["message"]}</span>
        </c:if>
    </p>

    <form method = "post">
        <h3>Are your sure?</h3>
        <fieldset>
            <legend>Product information</legend>
            <table>
                <tr>
                    <td>Name: </td>
                    <td>${requestScope["product"].getName()}</td>
                </tr>
                <tr>
                    <td>Price: </td>
                    <td>${requestScope["product"].getPrice()}</td>
                </tr>
                <tr>
                    <td>Description: </td>
                    <td>${requestScope["product"].getDesc()}</td>
                </tr>
                <tr>
                    <td>Producer</td>
                    <td>${requestScope["product"].getProducer()}</td>
                </tr>
                <tr>
                    <td><input type="submit" value="Delete product"></td>
                    <td><a href="/product">Back to product list</a></td>
                </tr>
            </table>
        </fieldset>
    </form>
</body>
</html>
