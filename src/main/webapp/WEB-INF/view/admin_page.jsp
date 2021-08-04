<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isELIgnored="false" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Admin control</title>
</head>
<body>

    <c:out value="${deleteOperationStatusMessage}"/>
    <table>
        <thead>
        <tr>
            <th>user login</th>
        </tr>
        </thead>
        <c:forEach items="${users}" var="user">
            <tbody>
                <td>${user.username}</td>
                <td><form:form method="post" action="/users/delete/${user.id}"><button type="submit">Delete</button></form:form></td>
            </tbody>
        </c:forEach>
    </table>

</body>
</html>
