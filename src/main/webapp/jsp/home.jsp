<%--
  Created by IntelliJ IDEA.
  User: 9
  Date: 29.05.2020
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Home</title>
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>
<span style="color: ${cookie.color.value}">
    Hello
</span>

<div class="form-style-2">
    <form method="post" action="home">
        <label for="color">
            <select name="color" id="color">
                <option value="red">Красный</option>
                <option value="green">Зеленый</option>
                <option value="blue">Голубой</option>
            </select>
        </label>

        <input type="submit" value="send color">
    </form>
</div>
</body>
</html>
