<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: primi
  Date: 22.07.2021
  Time: 11:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Task_Name</title>
</head>
<body>
<div>
    <jsp:include page="header.jsp"/>
    <c:set value="${task}" var="task"/>

    <c:out value="${task.name}"/>
    <c:out value="${task.description}"/>

    <a href="change/${task.id}">change task</a>

    <%--    <a href="/task/delete/${task.id}" onclick="return confirm('Are you sure?')" >Delete</a>--%>
    <form:form method="post" action="/task/delete/${task.id}">
        <button type="submit">Delete</button>
    </form:form>
    <%--    <form:form method="post"--%>

    <h1>task name</h1>
    <p>description</p>
    <p>table with times(everyone time also has description)</p>
    <p>sum time</p>
    <%--    <button>start/stop</button>--%>

    <form:form method="post" action="/task/start/${task.id}">
        <button type="submit">Start</button>
    </form:form>
    <form:form method="post" action="/task/stop/${task.id}">
        <button type="submit">Stop</button>
    </form:form>

    <h1>Time spent</h1>

    <table>
        <thead>
        <tr>
            <th>Time spent</th>
            <th>Date</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${taskTimer}" var="time_spent">

            <tr>
                <td>${time_spent.time.hours}:${time_spent.time.minutes}:${time_spent.time.seconds}</td>
                <td>${time_spent.date}</td>
            </tr>

        </c:forEach>

        <tr>
            <th>Total time:</th>
            <c:set value="${totalTime}" var="totalTime"/>
            <th><c:out value="${totalTime.hours}"/>:<c:out value="${totalTime.minutes}"/>:<c:out value="${totalTime.seconds}"/></th>
        </tr>

        </tbody>
    </table>


</div>
</body>
</html>
