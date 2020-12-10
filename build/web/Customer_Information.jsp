<%-- 
    Document   : Customer_Information
    Created on : 1 Apr, 2020, 1:39:17 PM
    Author     : utsav
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Customer Information</title>
    </head>
    <body>
        <%
            String connectionURL = "jdbc:mysql://localhost:3306/rms";
            String user = "root";
            String pass = "";
            Connection con = null;
            ResultSet rs = null;
            try {
                Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection(connectionURL, user, pass);
                PreparedStatement ps = con.prepareStatement("insert into customer_information (customer_name,customer_address,customer_city,customer_state,customer_pincode,customer_mobileno,customer_emailid,customer_total) values (?,?,?,?,?,?,?,?)",Statement.RETURN_GENERATED_KEYS);
                ps.setString(1, request.getParameter("customer_name"));
                ps.setString(2, request.getParameter("customer_address"));
                ps.setString(3, request.getParameter("customer_city"));
                ps.setString(4, request.getParameter("customer_state"));
                ps.setString(5, request.getParameter("customer_pincode"));
                ps.setString(6, request.getParameter("customer_mobileno"));
                ps.setString(7, request.getParameter("customer_emailid"));
                ps.setString(8, request.getParameter("customer_total"));
                int result = ps.executeUpdate();
                rs = ps.getGeneratedKeys();
                if (result > 0) {
                    if (rs.next()) {
                        HttpSession sess = request.getSession();
                        sess.setAttribute("custid", rs.getInt(1));
                    }
                    response.sendRedirect("Menuitems.jsp");
                }
            } finally {
                if (con != null) {
                    try {
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }
        %>

    </body>
</html>
