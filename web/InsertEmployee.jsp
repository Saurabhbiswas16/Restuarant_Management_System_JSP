<%-- 
    Document   : InsertEmployee
    Created on : 1 Apr, 2020, 1:45:57 PM
    Author     : utsav
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<%@include file="Admin_view.jsp" %>

<link rel="stylesheet" href="Admin.css">

<form action="InsertedEmployee.jsp" method="POST" class="signup">
    <div class="login">
       <h1>Insert Employee Details</h1>
       <p>Name<input type="text" name="employee_name" value="" placeholder="name" ></p>
       <p>Address<input type="text" name="address" placeholder="Address" ></p>
       <p>City<input type="text" name="city" placeholder="City"></p>
       <p>State<input type="text" name="state" placeholder="State" ></p>
       <p>Pincode<input type="text" name="pincode" placeholder="Pincode"></p>
       <p>Mobile Number<input type="text" name="mobile" placeholder="Mobile NUmber"></p>
       <p>Email id<input type="text" name="email" placeholder="Email Id" ></p>
       <p class="submit"><input type="submit" name="commit" value="Insert"></p>
    </div>
</form>