<%-- 
    Document   : display.jsp
    Created on : 3 Feb, 2022, 2:48:27 PM
    Author     : ghosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String name = request.getParameter("name");
            String email = request.getParameter("email");
        %>
        <table>
            <tbody>
            <th>Data from form</th>
            <tr>
                <td>Name : </td>
                <td><%=name%></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><%=email%></td>
            </tr>
            </tbody>
        </table>
    </body>
</html>
