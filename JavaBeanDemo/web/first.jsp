<%-- 
    Document   : first
    Created on : 25 Jan, 2022, 3:08:11 PM
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
        <jsp:useBean id="stud" scope="request" class="beans.StudentBean"/>
        <jsp:setProperty name="stud" property="*"/>
        <jsp:forward page="display.jsp"/>
    </body>
</html>
