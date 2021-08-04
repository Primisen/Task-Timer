<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>${task.name}</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<div class="container">
    <jsp:include page="header.jsp"/>
    <c:set value="${task}" var="task"/>

    <h3><c:out value="${task.name}"/></h3>
    <p><c:out value="${task.description}"/></p>

    <a href="change/${task.id}" role="button" class="btn btn-dark">Change task</a>

    <form:form method="post" action="/task/delete/${task.id}">
        <button type="submit" class="btn btn-dark">Delete</button>
    </form:form>

    <form:form method="post" action="/task/start/${task.id}">
        <button type="submit" class="btn btn-success">Start</button>
    </form:form>
    <form:form method="post" action="/task/stop/${task.id}">
        <button type="submit" class="btn btn-danger">Stop</button>
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
