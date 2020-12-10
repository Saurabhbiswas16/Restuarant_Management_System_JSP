<%-- 
    Document   : Logout
    Created on : 1 Apr, 2020, 1:20:55 PM
    Author     : utsav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" >
        <title>Logout</title>
    </head>
    <body>
        <%
            HttpSession sess=request.getSession(false);
            if(sess!=null){
                sess.invalidate();
                out.println("<center><b>You have Successfully LoggedOut.</b></center>");
                %>
                <jsp:include page="Admin_login.jsp"/>
                <%}
            else{
                
                out.println("<center><b>Please Login First!</b></center>"); 
        %>
                <jsp:include page="Admin_login.jsp"/>
                
                <% 
        }
                %>
    </body>
</html>
