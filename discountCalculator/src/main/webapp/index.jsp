<%--
  Created by IntelliJ IDEA.
  User: BOSS
  Date: 5/30/2021
  Time: 6:03 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Product Discount Calculator</title>
    <link rel = "stylesheet" type = "text/css" href = "style.css">
  </head>
  <body>
    <h1> Discount Calculator</h1>
    <form action = "display-discount" method = "post">
      <input type = "text" name = "description" placeholder="Product's Description">
      <br>
      <input type = "text" name = "price" placeholder= "Price">
      <br>
      <input type = "text" name = "discountPercent" placeholder= "Discount Percent">
      <br>
      <input type = "submit" id = "submit" value = "Calculate Discount">
    </form>

  </body>
</html>
