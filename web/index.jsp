<%-- 
    Document   : index
    Created on : 3 Feb, 2022, 2:41:05 PM
    Author     : ghosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Form Application</title>
    </head>
    <style>
        body{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            display:flex;
            flex-direction:column;
            align-items:center;
            height:100vh;
            justify-content:center;
        }
    </style>
    <body>
        <h1>JSP Demo 1</h1>
        <form action="display.jsp" method="post">
        <table border="0" width="1" cellspacing="2" cellpadding="1">
            <thead>
                <tr>
                    <th>Registration form</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <input class="form-control" placeholder="Enter name" name="name" type="text"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input type="form-control" placeholder="Email" name="email" type="email"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="form-control" placeholder="Password" type="password"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <input class="form-control" type="submit" value="Register" />
                    </td>
                </tr>
            </tbody>
        </table>
        </form>

    </body>
</html>
