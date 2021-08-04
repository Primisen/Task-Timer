<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="fom" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Add task</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<div class="container">
    <jsp:include page="header.jsp"/>
    <form:form method="post" modelAttribute="newTask">

        <div class="position-relative start-50 top-50 translate-middle-x" style="max-width: 800px">
        <div class="input-group">
            <span class="input-group-text">Task name and description</span>
        <form:input path="name" type="text" placeholder="Task name" class="form-control"/>
        <form:input path="description" type="text" placeholder="Description" class="form-control"/>
        </div>

            <br>
        <button type="submit" class="btn btn-warning">Add</button>
        </div>

    </form:form>

</div>
</body>
</html>
