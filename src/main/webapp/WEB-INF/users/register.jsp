<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The daos.Users" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
<%--    <h1>Here Are all the ads!</h1>--%>

<%--    <c:forEach var="users" items="${users}">--%>
<%--        <div class="col-md-6">--%>
<%--            <h2>${users.username}</h2>--%>
<%--            <h3>${users.email}</h3>--%>
<%--        </div>--%>
<%--    </c:forEach>--%>
    <form action="/register" method="post">
        <h4>
            Enter your username
        </h4>
        <label for="username">
            <input type="text" name="username" id="username">
        </label>
        <h4>
            Enter your Email
        </h4>
        <label for="email">
            <input type="text" name="email" id="email">
        </label>
        <h4>
            Enter your password
        </h4>
        <label for="password">
            <input type="password" name="password" id="password">
        </label>
        <hr>
        <button>SUBMIT</button>
    </form>
</div>

</body>
</html>
