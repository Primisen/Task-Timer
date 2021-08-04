<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<body>
<h2>Main page!</h2>

<jsp:include page="WEB-INF/view/header.jsp"/>

<%--<sec:authorize access="!isAuthicated()">--%>
<%--    <a href="/login">Login</a>--%>
<%--    <a href="/registration">registration</a>--%>
<%--</sec:authorize>--%>
<%--<sec:authorize access="isAuthenticated()">--%>
<%--    <a href="tasks">Tasks list</a>--%>
<%--    <a href="/logout">logout</a>--%>
<%--</sec:authorize>--%>
</body>
</html>
