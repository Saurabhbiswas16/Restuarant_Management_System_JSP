<%-- 
    Document   : SignUp
    Created on : 1 Apr, 2020, 2:05:48 PM
    Author     : utsav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign Up</title>
        <link rel="stylesheet" href="Admin.css">
    </head>
    <body>
        <%
            HttpSession sess=request.getSession(false);
            if(sess!=null){
                if(request.getParameter("msg")!=null){
                    out.println("<center><b>"+request.getParameter("msg")+"</b></center>");
                }%>
                <form action="NewUser.jsp" method="POST" class="signup">
                    <div class="login">
                        <h1>Sign Up</h1>
                        <p> <input type="text" name="firstname" class="field firstname" id="firstname" placeholder="*Firstname" required></p>
                        <p> <input type="text" name="lastname" class="field lastname" id="lastname" placeholder="*Lastname" required></p>
                        <p>  <input type="text" name="username" class="field username" id="username" placeholder="*Username" required></p>
                        <p><input type="email" name="email" class="field email" id="email" placeholder="*abc@xyz.com" required></p>
                        <p>  <input type="tel" name="ph_no" class="field ph-no" id="ph-no" placeholder="*Mobile No." required pattern=".{10}" title="Please provide valid number"></p>
                        <p><input type="password" name="password" class="field password" id="password" placeholder="*Password" required></p>
                        <i class="fas fa-eye hidden" data-name="eye" data-index="0" title="Hide Password"></i>
                        <i class="fas fa-eye-slash show" data-name="eye-slash" data-index="0" title="Show Password"></i>
                        <p>  <input type="password" name="repassword" class="field repassword password" id="repassword" placeholder="*Re-Enter Password" required></p>
                        <i class="fas fa-eye hidden" data-name="eye" data-index="1" title="Hide Password"></i>
                        <i class="fas fa-eye-slash show" data-name="eye-slash" data-index="1" title="Show Password"></i>
                        <p class="submit"><input type="submit" name="commit" value="Sign Up"></p>
                    </div>
                </form>
                <%}
            else{
                
                out.println("<center><b>Please Login First!</center></b>"); 
        %>
                <jsp:include page="Admin_login.jsp"/>
                
                <% 
        }
                %>
    </body>
</html>
