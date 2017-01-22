<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Список магазинов</title>
</head>
<body>

<h3>Все магазины:</h3>(<a href="addstore">добавить</a>)
<ol>
    <%--@elvariable id="stores" type="java.util.List"--%>
    <c:forEach items="${stores}" var="store">
        <li>
                ID: ${store.storeId} | Адрес: ${store.address}
            <a href="addstore?edit=${store.storeId}">(редактировать</a> | <a href="deletestore?id=${store.storeId}">удалить)</a>
        </li>
    </c:forEach>
</ol>

</body>
</html>