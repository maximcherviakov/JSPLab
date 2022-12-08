<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <link href="styles/style.css" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300&display=swap" rel="stylesheet">
</head>
<body>
<div id="page">
    <h1>Hello World!</h1>
    <form>
        <table>
            <tbody>
            <tr>
                <td><label for="name">Name</label></td>
                <td><input id="name" type="text" name="name"></td>
            </tr>
            <tr>
                <td><label for="surname">Surname</label></td>
                <td><input id="surname" type="text" name="surname"></td>
            </tr>
            <tr>
                <td><label for="email">Email</label></td>
                <td><input id="email" type="text" name="email"></td>
            </tr>
            </tbody>
        </table>
        <input type="submit" name="send" value="Send">
    </form>
    <c:if test="${not empty param.send}">
        <c:set var="id" value="${id+1}" scope="application"/>

        <c:if test="${not empty param.name}">
            <c:set var="name" value="${param.name}" scope="session"/>
            <p>
                Name: ${param.name}
            </p>
        </c:if>
        <c:if test="${not empty param.surname}">
            <c:set var="surname" value="${param.surname}" scope="session"/>
            <p>
                Surname: ${param.surname}
            </p>
        </c:if>
        <c:if test="${not empty param.email}">
            <c:set var="email" value="${param.email}" scope="session"/>
            <p>
                Email: ${param.email}
            </p>
        </c:if>
    </c:if>
</div>
</body>
</html>