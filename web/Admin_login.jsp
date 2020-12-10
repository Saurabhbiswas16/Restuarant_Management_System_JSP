<%-- 
    Document   : Admin_login
    Created on : 1 Apr, 2020, 11:10:25 AM
    Author     : utsav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="Admin.css">
        <title>Login</title>
    </head>
    <body>
        <%
            if(request.getParameter("msg")!=null){
                out.println("<center><b>"+request.getParameter("msg")+"</b></center>");
            }
        %>
        <div class="login">
            <h1>Login </h1>
            <form method="post" action="LoginVerifierServlet">
                <p><input type="text" name="username" value="" placeholder="Username "></p>
                <p><input type="password" name="password" value="" placeholder="Password"></p>

                <p class="remember_me">
                    <label>
                        <input type="checkbox" name="remember_me" id="remember_me">
                        Remember me on this computer
                    </label>
                </p>

                <p class="submit"><input type="submit" name="commit" value="Login"></p>
            </form>
        </div>

        <div class="login-help">
            <p>Forgot your password? <a href="#">Click here to reset it</a>.</p>
        </div>

    </body>
</html>
