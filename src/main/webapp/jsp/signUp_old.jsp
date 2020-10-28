<%@ page import="java.util.ArrayList" %>
<%@ page import="by.bsuir.Andrei.models.User" %><%--
  Created by IntelliJ IDEA.
  User: 9
  Date: 28.05.2020
  Time: 1:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    ArrayList<User> users = (ArrayList) request.getAttribute("usersFromServer");
%>
<table>
    <tr>
        <th>User Name</th>
        <th>password</th>
        <th>Birth Date</th>
    </tr>
    <%
        for (User u : users) {
    %>
    <tr>
        <td><%=u.getName()%>
        </td>
        <td><%=u.getPassword()%>
        </td>
        <td><%=u.getBirthDate()%>
        </td>
    </tr>
    <%}%>
</table>

</body>
</html>
