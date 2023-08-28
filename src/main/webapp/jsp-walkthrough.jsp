<%-- tag for JSP --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%-- tag for JSTL --%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%!
    int customers = 0;
    boolean methodIsGet;
%>
<%
    customers++;
    if (request.getMethod().equalsIgnoreCase("GET")) {
        methodIsGet = true;
    } else {
        methodIsGet = false;
    }
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@include file="partials/navbar.jsp" %>
<h1 id="some">We have had <%= customers %> visit our shop</h1>
<p>Enter your name in parameter '?name=${param.name}'</p>
<p>Path: <%= request.getRequestURL() %>
</p>
<p>Query String: <%= request.getQueryString() %>
</p>
<p>"name" parameter: <%= request.getParameter("name") %>
</p>
<p>"method" attribute: <%= request.getMethod() %>
</p>
<p> this method will get? <%=methodIsGet%>
</p>
<p>User-Agent header: <%= request.getHeader("user-agent") %>
</p>

<form method="POST" action="jsp-walkthrough.jsp">
    <label>
        <input type="text" name="coffeename" placeholder="enter a coffee">
    </label>
    <label>
        <input type="text" name="username" placeholder="enter your name">
    </label>
    <label for="creamer">creamer</label>
    <input id="creamer" type="checkbox" name="addons" value="creamer">
    <label for="caramel">caramel</label>
    <input id="caramel" type="checkbox" name="addons" value="caramel">
    <label for="sugar">sugar</label>
    <input id="sugar" type="checkbox" name="addons" value="sugar">
    <button type="submit">submit</button>
</form>

<c:choose>
    <c:when test="${param.coffeename != null}">
        <c:if test="${param.coffeename != null}">
            <p>coffee chosen: ${param.coffeename} </p>
        </c:if>
        <c:if test="${param.username != null}">
            <p>user is: ${param.username}</p>
        </c:if>
        <c:if test="${paramValues.addons != null}">
                <h4>addons</h4>
                <ul>
            <c:forEach var="addon" items="${paramValues.addons}">
                    <li>${addon}</li>
            </c:forEach>
                </ul>
        </c:if>
    </c:when>
    <c:otherwise>
        <p>enter the values</p>
    </c:otherwise>
</c:choose>


</body>
<script>
    <%-- JSP COMMENT DOM stuff --%>
    let some = document.querySelector("#some");
    some.addEventListener("mouseenter", () => {
        some.style.background = "red";
    })
    <!-- html comment -->
</script>
</html>