<%-- 
    Document   : InsertedEmployee
    Created on : 1 Apr, 2020, 1:46:17 PM
    Author     : utsav
--%>

<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <%
            HttpSession sess = request.getSession(false);
            if (sess != null) {
                String connectionURL = "jdbc:mysql://localhost:3306/rms";
                String user = "root";
                String pass = "";
                
                int result = 0;
                Connection con = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);

                    PreparedStatement ps = con.prepareStatement("insert into employee_details (employee_name,employee_address,employee_city,employee_state,employee_pincode,employee_mobileno,employee_emailid) values (?,?,?,?,?,?,?)");
                ps.setString(1, request.getParameter("employee_name"));
                ps.setString(2, request.getParameter("address"));
                ps.setString(3, request.getParameter("city"));
                ps.setString(4, request.getParameter("state"));
                ps.setString(5, request.getParameter("pincode"));
                ps.setString(6, request.getParameter("mobile"));
                ps.setString(7, request.getParameter("email"));
                
                    result = ps.executeUpdate();
                } finally {
                    if (con != null) {
                        try {
                            con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                if (result > 0) {
                    response.sendRedirect("EmployeeDetails.jsp");
                } else {
                    response.sendRedirect("Admin_view.jsp?message=Some+Error+Occurred");
                }
            } else {

                out.println("<center><b>Please Login First!</b></center>");
        %>
        <jsp:include page="Admin_login.jsp"/>

        <%
            }
        %>
    </body>
</html>
