<%--
  Created by IntelliJ IDEA.
  User: josedelaluz
  Date: 8/28/23
  Time: 4:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <form method="post" action="Coffee">
        <input name="CoffeeName" type="text" placeholder="Coffee name">
        <input name="Username" type="text" placeholder="Enter Username">
        <label for="caramel">
            <input id="caramel" type="checkbox" name="addon">
            Caramel
        </label>
        <label for="creamer">
            <input id="creamer" type="checkbox" name="addon">
            Creamer
        </label>
        <label for="sugar">
            <input id="sugar" type="checkbox" name="addon">
            Sugar
        </label>
        <button type="submit">Submit</button>
    </form>
</body>
</html>
