<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ page isELIgnored="false" %>

<sec:authorize access="!isAuthenticated()">
    <a href="/login">Login</a>
    <a href="/registration">registration</a>
</sec:authorize>

<sec:authorize access="isAuthenticated()">

    <sec:authorize access="hasRole('ADMIN')">
        <a href="admin">Admin page</a>
    </sec:authorize>

    <sec:authorize access="hasAuthority('USER')">
        <a href="tasks">Tasks list</a>
    </sec:authorize>

    <a href="/logout">logout</a>
</sec:authorize>
