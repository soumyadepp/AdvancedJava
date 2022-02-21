<%-- 
    Document   : index
    Created on : 21 Feb, 2022, 12:19:09 PM
    Author     : ghosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="/WEB-INF/tlds/mytag.tld" prefix="test"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="style.css" type="text/css"/>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Custom Tag demo</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@600;700&family=Open+Sans:wght@500;600;700&family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    </head>
    <body>
        <header>
            <h3>Custom Tag Demo </h3>
            <span>By Soumyadepp</span>
        </header>
        <div class="container">
              <test:hello/>
        <br/>
        <test:datetime/>
        </div>
    </body>
</html>
