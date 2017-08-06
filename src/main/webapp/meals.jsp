<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Meals List</title>
</head>
<body>
    <table>
        <caption>"Список приемов пищи"</caption>
        <c:forEach var="meal" items="${mealsList}">
            <c:if test="${meal.exceed}">
                <c:set var="rowColor" value="red"/>
            </c:if>
            <tr  style="background-color: <c:out value="${rowColor}"/>">
                <td>${meal.description}</td>
                <td>${meal.calories}</td>
                <td>${meal.dateTime}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
