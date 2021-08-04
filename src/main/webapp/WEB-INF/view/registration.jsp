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
    <title>Регистрация медицинского работника</title>
<%--    <jsp:include page="bootstrap.jsp"/>--%>
</head>
<body>

<%--<jsp:include page="header.jsp"/>--%>
<div class=" position-relative mt-5 mb-5 start-50 translate-middle-x" style="max-width: 500px">

    <div class="row g-3">
        <form:form method="POST" modelAttribute="userForm">
            <h2>Регистрация</h2>

            <label class="form-label">Логин</label>
            <form:input type="text" path="username" placeholder="Логин"
                        cssClass="form-control mb-3"/>
            <form:errors path="username"/>
            ${usernameError}

            <label class="form-label">Пароль</label>
            <form:input type="password" path="password" placeholder="Пароль" cssClass="form-control mb-3"/>

            <label class="form-label">Повторите пароль</label>
            <form:input type="password" path="passwordConfirm"
                        placeholder="Повторите пароль" cssClass="form-control mb-3"/>
            <form:errors path="password"/>
            ${passwordError}

            <button type="submit" class="btn btn-primary mb-3">Зарегистрироваться</button>
        </form:form>
    </div>
</div>
<%--<jsp:include page="footer.jsp"/>--%>
</body>
</html>