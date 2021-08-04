<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>Войти</title>
<%--    <jsp:include page="/WEB-INF/view/bootstrap.jsp"/>--%>

    <svg xmlns="http://www.w3.org/2000/svg" style="display: none;">

        <symbol id="exclamation-triangle-fill" fill="currentColor" viewBox="0 0 16 16">
            <path d="M8.982 1.566a1.13 1.13 0 0 0-1.96 0L.165 13.233c-.457.778.091 1.767.98 1.767h13.713c.889 0 1.438-.99.98-1.767L8.982 1.566zM8 5c.535 0 .954.462.9.995l-.35 3.507a.552.552 0 0 1-1.1 0L7.1 5.995A.905.905 0 0 1 8 5zm.002 6a1 1 0 1 1 0 2 1 1 0 0 1 0-2z"/>
        </symbol>
    </svg>
</head>
<body>

<%--<jsp:include page="/WEB-INF/view/header.jsp"/>--%>

<sec:authorize access="isAuthenticated()">
    <% response.sendRedirect("/home"); %>
</sec:authorize>

<div class="container mb-5">
    <div class=" position-relative start-50 top-50 translate-middle-x" style="max-width: 400px">

        <main class="form-signin mt-4 ">

            <form:form class="row mx-5 g-2" method="post" action="/login">

                <c:if test="${param.error !=null}">
                    <div class="alert alert-danger d-flex align-items-center" role="alert">
                        <svg class="bi flex-shrink-0 me-2" width="24" height="24">
                            <use xlink:href="#exclamation-triangle-fill"/>
                        </svg>
                        <div>
                            Неправильный логин или пароль.
                        </div>
                    </div>
                </c:if>

                <h4 class="h4 mb-2 fw-normal">Пожалуйста войдите</h4>

                <label for="floatingInput">Логин</label>
                <input name="username" type="text" class="form-control" autofocus="true" id="floatingInput"
                       placeholder="Логин">

                <label for="floatingPassword">Пароль</label>
                <input name="password" type="password" class="form-control" id="floatingPassword" placeholder="Пароль">

                <p>remember me</p>
                <input type="checkbox" name="remember-me" />

                <button class="w-100 btn btn-lg btn-primary" type="submit">Войти</button>

                <a href="/registration" align="center">Зарегистрироваться</a>

            </form:form>

        </main>
    </div>
</div>
<%--<jsp:include page="footer.jsp"/>--%>
</body>
</html>
