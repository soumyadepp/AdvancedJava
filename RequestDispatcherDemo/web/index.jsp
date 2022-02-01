<%-- 
    Document   : index
    Created on : 1 Feb, 2022, 4:17:42 PM
    Author     : ghosh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Request Dispatcher Demo</title>
        <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@700&display=swap" rel="stylesheet">
<style>
    *{
        margin: 0;
        padding:0;
        box-sizing: border-box;
        font-family:Poppins,sans-serif;
    }
    body{
        height:100vh;
        display:flex;
        align-items: center;
        justify-content: center;
    }
    .container{
        height:70vmin;
        width:50vmin;
        background:#6be9e0;
        padding:20px;
        display:flex;
        align-items: center;
        filter:drop-shadow(2px 4px 2px #3f3f3f);
        justify-content: center;
        border-radius:10px;
    }
    .submission{
        padding:30px;
        display:flex;
        flex-direction: column;
        align-items:center;
        justify-content:center;
    }
    .form-control{
        margin-top: 8px;
        padding:10px;
        background:#efefef;
        font-size:3vmin;
    }
    .form-control-btn{
        margin-top: 10px;
        padding:10px;
        background:#114ea5;
        border:none;
        font-size: 3.5vmin;
        width:100%;
        outline:none;
        color:#f5f5f5;
    }
</style>
    </head>
    <body>
        <div class="container">
            <form class="submission" action="ServletOne">
                <input class="form-control" placeholder="Email" name="email"/>
                <input class="form-control" placeholder="Name" name="name"/>
                <input class="form-control" type="password" placeholder="Password" name="password"/>
                <input type="submit" class="form-control-btn" value="Register"/>
            </form >
        </div>
    </body>
</html>
