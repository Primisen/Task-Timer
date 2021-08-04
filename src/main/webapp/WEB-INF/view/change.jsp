<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: primi
  Date: 28.07.2021
  Time: 15:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Change task</title>
</head>
<body>

<c:set value="${task}" var="task"/>

<form:form method="post" modelAttribute="taskForChange">

<form:input path="name" type="text" value="${task.name}"/>
    <form:input path="description" type="text" value="${task.description}"/>

    <button type="submit">ok</button>
</form:form>

</body>
</html>
