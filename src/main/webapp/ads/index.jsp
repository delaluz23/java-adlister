<%--
  Created by IntelliJ IDEA.
  User: josedelaluz
  Date: 8/30/23
  Time: 11:28 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>All Ads!</title>
    <jsp:include page="/partials/head.jsp"/>
</head>
<body>
<h1>Heres all your ads duuuuuude!</h1>
<ul>
    <jsp:include page="/partials/navbar.jsp"/>
    <jsp:useBean id="ads" scope="request" type="java.util.List"/>
    <c:forEach var="ads" items="${ads}">
        <li>${ads.title} : ${ads.description}</li>
    </c:forEach>
</ul>
</body>
</html>
