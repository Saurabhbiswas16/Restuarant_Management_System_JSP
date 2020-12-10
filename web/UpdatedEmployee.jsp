<%-- 
    Document   : UpdatedEmployee
    Created on : 1 Apr, 2020, 1:49:23 PM
    Author     : utsav
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession sess = request.getSession(false);
            if (sess != null) {
                ResultSet rs = null;
                String connectionURL = "jdbc:mysql://localhost:3306/rms";
                String user = "root";
                String pass = "";
                Connection con = null;
                int result = 0;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
                    String sql="update employee_details set employee_name=?,employee_address=?,employee_city=?,employee_state=?,employee_pincode=?,employee_mobileno=?,employee_emailid=? where employee_id=?";
//                    Statement st = con.createStatement();
                    //rs = st.executeQuery(sql);
//                    result = st.executeUpdate("update employee_details set employee_name="+ request.getParameter("name") +",employee_address="+request.getParameter("address")+",employee_city="+request.getParameter("city")+",employee_state="+request.getParameter("state")+",employee_pincode="+request.getParameter("pincode")+",employee_mobileno="+request.getParameter("mobile")+",employee_emailid="+request.getParameter("email")+" where employee_id="+request.getParameter("id"));
                    PreparedStatement ps=con.prepareStatement(sql);
                    ps.setString(1,request.getParameter("name"));
                    ps.setString(2, request.getParameter("address"));
                ps.setString(3, request.getParameter("city"));
                ps.setString(4, request.getParameter("state"));
                ps.setString(5, request.getParameter("pincode"));
                ps.setString(6, request.getParameter("mobile"));
                ps.setString(7, request.getParameter("email"));
                ps.setString(8,request.getParameter("id"));
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
