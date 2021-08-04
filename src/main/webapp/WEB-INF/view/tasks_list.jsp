<%--
  Created by IntelliJ IDEA.
  User: primi
  Date: 22.07.2021
  Time: 10:19
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Tasks list</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<div class="container">
    <jsp:include page="header.jsp"/>

    <a href="/add" class="btn btn-success">Add task</a>

    <div class="my-3 p-3 bg-body rounded shadow-sm">
        <h5 class="border-bottom pb-2 mb-0">Tasks</h5>
        <c:forEach var="task" items="${tasks}">
        <div class="d-flex text-muted pt-3">
            <svg class="bd-placeholder-img flex-shrink-0 me-2 rounded" width="32" height="32" xmlns="http://www.w3.org/2000/svg" role="img" aria-label="Placeholder: 32x32" preserveAspectRatio="xMidYMid slice" focusable="false"><title>Placeholder</title><rect width="100%" height="100%" fill="#007bff"/><text x="50%" y="50%" fill="#007bff" dy=".3em">32x32</text></svg>
                <div class="pb-3 mb-0 small lh-sm border-bottom w-100">
                    <div class="d-flex justify-content-between">
                        <strong class="text-gray-dark"><a href="/task/${task.id}">${task.name}</a></strong>

                    </div>
                    <span class="d-block">${task.description}</span>
                </div>
        </div>
        </c:forEach>
    </div>

</div>
</body>
</html>
