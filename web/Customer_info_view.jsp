<%-- 
    Document   : Customer_info_view
    Created on : 1 Apr, 2020, 1:39:57 PM
    Author     : utsav
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="Admin_view.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<%
    HttpSession ses = request.getSession(false);
    if (ses != null) {
%>
<% ResultSet rs = null;%>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.12.1/css/all.min.css"/>

<div class="container">
    <div class="col-md-10 offset-md-1 mt-5">
        <div class="jumbotron jumbotron-fluid">
            <div class="container">
                <h1 class="display-4">Customer Details</h1>
                <p class="lead font-italic">Customer details who visited Restaurant.</p>
                <hr class="my-4">
                <table class="table table-borderless">
                    <thead class="border-bottom font-weight-bold">
                        <tr>
                            <td><b>ID</b></td>
                            <td><b>NAME</b></td>
                            <td><b>ADDRESS</b></td>
                            <td><b>CITY</b></td>
                            <td><b>STATE</b></td>
                            <td><b>PINCODE</b></td>
                            <td><b>MOBILE NO</b></td>
                            <td><b>EMAIL ID</b></td>
                            <td><b>Persons</b></td>
                        </tr>
                    </thead>
                    <%
                        String connectionURL = "jdbc:mysql://localhost:3306/rms";
                        String user = "root";
                        String pass = "";
                        Connection con = null;
                        try {
                            Class.forName("com.mysql.jdbc.Driver");
                            con = DriverManager.getConnection(connectionURL, user, pass);
                            String sql = "select * from customer_information";
                            Statement stmt = con.createStatement();
                            rs = stmt.executeQuery(sql);


                    %>
                    <tbody>
                        <% while (rs.next()) { %>
                        <tr>
                            <td> <% out.println(rs.getInt("customer_id")); %> </td>
                            <td> <% out.println(rs.getString("customer_name")); %> </td>
                            <td> <% out.println(rs.getString("customer_address")); %> </td>
                            <td> <% out.println(rs.getString("customer_city")); %> </td>
                            <td> <% out.println(rs.getString("customer_state")); %> </td>
                            <td> <% out.println(rs.getString("customer_pincode")); %> </td>
                            <td> <% out.println(rs.getString("customer_mobileno")); %> </td>
                            <td> <% out.println(rs.getString("customer_emailid")); %> </td>
                            <td> <% out.println(rs.getString("customer_total")); %> </td>
                        </tr>
                        <% }%>
                    </tbody>
                    <%
                        } finally {
                            if (con != null) {
                                try {
                                    con.close();
                                } catch (Exception e) {
                                    e.printStackTrace();
                                }
                            }
                        }%>
                </table>
            </div>
        </div>
    </div>
</div>

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity='sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n' crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<%
    } else {

        out.println("<center><b>Please Login First!</b></center>");
        response.sendRedirect("Admin_login.jsp?msg=Please+Login+First!");
    }
%>