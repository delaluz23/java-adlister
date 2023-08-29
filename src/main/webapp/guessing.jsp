<%--
  Created by IntelliJ IDEA.
  User: josedelaluz
  Date: 8/29/23
  Time: 11:45 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>GUESSING GAME</title>
</head>
<body>
<h1>Enter a number 1-3</h1>
<form action="guess" method="post">
    <label for="num">
        <input id="num" name="num" type="text" placeholder="Enter a num 1-3">
    </label>
    <button type="submit">Submit</button>
</form>
</body>
</html>
