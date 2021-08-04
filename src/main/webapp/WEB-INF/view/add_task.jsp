<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fom" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: primi
  Date: 23.07.2021
  Time: 17:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Add task</title>
</head>
<body>
<jsp:include page="header.jsp"/>
<%--@elvariable id="newTask" type="scope"--%>
<form:form method="post" modelAttribute="newTask">

    <form:input path="name" type="text" placeholder="name"/>
    <form:input path="description" type="text" placeholder="description"/>

    <input type="submit">add</input>

</form:form>

<%--<input type="text" placeholder="name">--%>
<%--<input type="text" placeholder="description">--%>
<%--<input type="submit">add</input>--%>
</body>
</html>
