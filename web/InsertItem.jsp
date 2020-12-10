<%-- 
    Document   : InsertItem
    Created on : 1 Apr, 2020, 1:45:00 PM
    Author     : utsav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Item</title>
        <link rel="stylesheet" href="Admin.css">
    </head>
    <body>
        <%
            HttpSession sess=request.getSession(false);
            if(sess!=null){%>
                    <form action="uploadImage" method="POST" class="signup" enctype="multipart/form-data">
                        <div class="login">
                            <h1>Insert items</h1>
                            <p>Category Id<input type="text" name="id" placeholder="id" ></p>
                            <p>Name<input type="text" name="name" placeholder="name" ></p>
                            <p>Description<input type="text" name="description" placeholder="write description"></p>
                            <p>Price<input type="text" name="price" placeholder="price" ></p>
                            <p>Image
                                <!--<img src="" style="width:70px;height:70px">-->
                            </p>
                            <p> <input type="file" name="myfile" id="myfile"></p>
                            <p class="submit"><input type="submit" name="commit" value="Insert"></p>
                        </div>
                    </form>>
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
