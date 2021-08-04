<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>

<header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">

    <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">Task timer</span>
    </a>

    <sec:authorize access="!isAuthenticated()">
        <ul class="nav nav-pills">
            <li class="nav-item"><a href="/login" class="nav-link active">Login</a></li>
            <li class="nav-item"><a href="/registration" class="nav-link">Registration</a></li>
        </ul>
    </sec:authorize>

    <sec:authorize access="isAuthenticated()">
    <ul class="nav nav-pills">

        <sec:authorize access="hasRole('ADMIN')">
            <li class="nav-item"><a href="/admin" class="nav-link active">Admin page</a></li>
<%--            <a href="admin">Admin page</a>--%>
        </sec:authorize>

        <sec:authorize access="hasAuthority('USER')">
            <li class="nav-item"><a href="/tasks" class="nav-link active">Tasks list</a></li>
<%--            <a href="tasks">Tasks list</a>--%>
        </sec:authorize>

        <li class="nav-item"><a href="/logout" class="nav-link">Logout</a></li>
<%--        <a href="/logout">logout</a>--%>
    </ul>
    </sec:authorize>

</header>
