<%-- 
    Document   : Admin_view
    Created on : 1 Apr, 2020, 12:57:01 PM
    Author     : utsav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Paradise</title>
        <link rel="stylesheet" href="NavBackend.css">
    </head>
    <body>
        <%
            HttpSession sess=request.getSession(false);
            if(sess!=null){
                
        %>
            <div class="w3-sidebar w3-bar-block w3-border-right" style="display:none" id="mySidebar">
                <button onclick="w3_close()" class="w3-bar-item w3-large">Close &times;</button>
                <a href="SignUp.jsp" class="w3-bar-item w3-button">New Admin User</a>
                <a href="Customer_info_view.jsp" class="w3-bar-item w3-button">Customer details</a>
                <a href="FoodItems.jsp" class="w3-bar-item w3-button">Food details</a>
                <a href="InsertItem.jsp" class="w3-bar-item w3-button">Insert Food Item</a>
                <a href="EmployeeDetails.jsp" class="w3-bar-item w3-button">Employee Details</a>
                <a href="InsertEmployee.jsp" class="w3-bar-item w3-button">Insert Employee Details</a>
                <a href="Logout.jsp" class="w3-bar-item w3-button">Log Out</a>
            </div>
            <div class="w3-teal">
                <button class="w3-button w3-teal w3-xlarge" onclick="w3_open()">☰</button>
                <div class="w3-container">
                    <h1>Welcome to paradise</h1>
                </div>
            </div>
            <script>
                function w3_open() {
                    document.getElementById("mySidebar").style.display = "block";
                }
                function w3_close() {
                    document.getElementById("mySidebar").style.display = "none";
                }
            </script>
        <% 
            String mess=request.getParameter("message");
                if(mess!=null){
                    out.println(mess);
                }
            }
            else{
                
                out.println("Please Login First!"); 
        %>
                <jsp:include page="Admin_login.jsp"/>
                
        <%}%>
    </body>
</html>
