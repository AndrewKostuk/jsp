<%--
  Created by IntelliJ IDEA.
  User: 9
  Date: 29.05.2020
  Time: 22:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Home</title>
</head>
<body>
<span style="color: ${cookie.color.value}">
    Hello
</span>
    <form method="post" action="home">
        <label for="color">
            <select name="color" id="color">
                <option value="red">Красный</option>
                <option value="green">Зеленый</option>
                <option value="blue">Голубой</option>
            </select>
        </label>

    <p><button type="submit" >send color</button></p>
    </form>
</body>
</html>
