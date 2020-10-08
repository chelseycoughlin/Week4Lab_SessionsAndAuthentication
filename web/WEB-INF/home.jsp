<%-- 
    Document   : home
    Created on : Oct 8, 2020, 1:53:30 PM
    Author     : Chels
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Home</title>
    </head>
    <body>
        <h1>Welcome!</h1>
        <br>
        <form method="post" action="note">
        <label>Hello ${username}: </label>
        <br>
        <br>
        <a href="session?logout" value="logout" name="logout">Logout</a>
        </form>
    </body>
</html>
