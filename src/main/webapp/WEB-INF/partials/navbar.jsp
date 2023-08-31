<<<<<<< HEAD:src/main/webapp/partials/navbar.jsp
<<<<<<< HEAD
<nav style="background-color: aqua">
    <p style="display: flex">THIS IS A NAVBAR JABRONI</p>
</nav>
=======
=======
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
>>>>>>> sessions-and-cookies-exercise:src/main/webapp/WEB-INF/partials/navbar.jsp
<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Adlister</a>
        </div>
        <ul class="nav navbar-nav navbar-right">
<<<<<<< HEAD:src/main/webapp/partials/navbar.jsp
            <li><a href="/pickcolor">Color</a></li>
=======
            <c:if test="${user == null}">
                <li><a href="/adlister_war_exploded/login">Login</a></li>
            </c:if>
            <c:if test="${user != null}">
                <li><a href="/adlister_war_exploded/logout">Logout</a></li>
            </c:if>
>>>>>>> sessions-and-cookies-exercise:src/main/webapp/WEB-INF/partials/navbar.jsp
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
>>>>>>> servlets-with-jsps
