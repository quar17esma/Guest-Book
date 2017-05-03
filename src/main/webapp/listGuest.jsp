<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        table {
            font-family: arial, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }

        td, th {
            border: 1px solid #dddddd;
            text-align: left;
            padding: 8px;
        }

        tr:nth-child(even) {
            background-color: #dddddd;
        }
    </style>
    <title>Show All Guests</title>
</head>
<body>

<table>

    <thead>
    <tr>
        <th>Ім'я</th>
        <th>Прізвище</th>
        <th>Дата народження</th>
        <th>Телефон</th>
        <th>Електронна пошта</th>
        <th>Країна</th>
        <th>Місто(область)</th>
    </tr>
    </thead>

    <tbody>
    <c:forEach items="${guests}" var="guest">
        <tr>
            <td><c:out value="${guest.firstName}"/></td>
            <td><c:out value="${guest.lastName}"/></td>
            <td><c:out value="${guest.birthday}"/></td>
            <td><c:out value="${guest.phoneNumber}"/></td>
            <td><c:out value="${guest.email}"/></td>
            <td><c:out value="${guest.country}"/></td>
            <td><c:out value="${guest.city}"/></td>
        </tr>
    </c:forEach>
    </tbody>

</table>

<form action="${pageContext.request.contextPath}/addGuest.jsp">
    <br>
    <button type="submit">Повернутись</button>
</form>
</body>
</html>
