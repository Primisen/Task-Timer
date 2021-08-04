<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
    <jsp:include page="bootstrap.jsp"/>
</head>
<body>
<div class="container mb-5">

    <jsp:include page="header.jsp"/>

    <div class="position-relative start-50 top-50 translate-middle-x" style="max-width: 400px">
        <main class="form-signin mt-4 ">

        <form:form method="POST" modelAttribute="userForm" class="row mx-5 g-2">

            <h4 class="h4 mb-2 fw-normal">Registration</h4>

            <label>Login</label>
            <form:input type="text" path="username" autofocus="true" placeholder="Login"
                        cssClass="form-control"/>
            <form:errors path="username"/>
            ${usernameError}

            <label>Password</label>
            <form:input type="password" path="password" placeholder="Password" cssClass="form-control"/>

            <label>Confirm password</label>
            <form:input type="password" path="passwordConfirm"
                        placeholder="Confirm password" cssClass="form-control"/>
            <form:errors path="password"/>
            ${passwordError}

            <button type="submit" class="w-100 btn btn-lg btn-primary">Registration</button>
        </form:form>

        </main>
    </div>
</div>
<%--<jsp:include page="footer.jsp"/>--%>
</body>
</html>