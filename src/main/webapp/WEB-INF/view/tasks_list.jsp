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
</head>
<body>
<div>
    <jsp:include page="header.jsp"/>
    <h2>Tasks</h2>

    <c:forEach var="task" items="${tasks}">

        <a href="task/${task.id}">${task.name} ${task.description}</a>

        <br>

    </c:forEach>

    <br>
    <a href="add">Add task</a>

</div>
</body>
</html>
