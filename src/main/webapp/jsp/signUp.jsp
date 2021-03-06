<%@ page import="java.util.ArrayList" %>
<%@ page import="by.bsuir.Andrei.models.User" %><%--
  Created by IntelliJ IDEA.
  User: 9
  Date: 28.05.2020
  Time: 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
    <link href="${pageContext.request.contextPath}/css/styles.css" rel="stylesheet" type="text/css">
</head>
<body>

<div class="form-style-2">
    <div class="form-style-2-heading">
        Please sign up!
    </div>
    <form method="post" action="signUp">
        <label for="name">User name
            <input class="input-field" type="text" id="name" name="name">
        </label>
        <label for="birthDate">Birth date
            <input class="input-field" type="text" id="birthDate" name="birthDate">
        </label>
        <label for="password">Password
            <input class="input-field" type="password" id="password" name="password">
        </label>
        <input type="submit" value="Sign Up">
    </form>
</div>

<div class="form-style-2">
    <div class="form-style-2-heading">
        Already registered!
    </div>
    <table>
        <tr>
            <th>User Name</th>
            <th>password</th>
            <th>Birth Date</th>
        </tr>
        <c:forEach items="${usersFromServer}" var="user">
            <tr>
                <td>
                        ${user.name}
                </td>
                <td>
                        ${user.password}
                </td>
                <td>
                        ${user.birthDate}
                </td>
            </tr>
        </c:forEach>

    </table>
</div>

</body>
</html>
