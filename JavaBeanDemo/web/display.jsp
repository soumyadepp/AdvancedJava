<%-- 
    Document   : display
    Created on : 25 Jan, 2022, 3:10:51 PM
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
        USN : <jsp:getProperty name="stud" property="usn"/>
        Name : <jsp:getProperty name="stud" property="name"/>
        Course: <jsp:getProperty name="stud" property="course"/>
    </body>
</html>
