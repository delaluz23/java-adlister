<%--
  Created by IntelliJ IDEA.
  User: josedelaluz
  Date: 8/28/23
  Time: 11:40 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>login jsp exercise</title>
</head>
<body>
<c:choose>
    <c:when test="${param.username eq 'admin' && param.password eq 'password'}">
            <c:redirect url="profile.jsp"/>
    </c:when>
    <c:otherwise>
            <h1>LOG IN TO ADMIN FOR A SUPRISE P.S THE PASSWORD IS PASSWORD</h1>
            <form action="login.jsp" method="POST">
                <label for="username">
                    <input id="username" type="text" name="username" placeholder="Enter your username">
                </label>
                <label for="password">
                    <input id="password" type="password" name="password" placeholder="Enter your password">
                </label>
                <button type="submit">submit</button>
            </form>
    </c:otherwise>
</c:choose>
</body>
</html>
