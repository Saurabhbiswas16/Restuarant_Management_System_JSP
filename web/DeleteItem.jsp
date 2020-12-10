<%-- 
    Document   : DeleteEmployee
    Created on : 1 Apr, 2020, 1:41:54 PM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%
            HttpSession sess = request.getSession(false);
            if (sess != null) {
                String connectionURL = "jdbc:mysql://localhost:3306/rms";
                String user = "root";
                String pass = "";
                int result=0;
                int f_id=Integer.parseInt(request.getParameter("id"));
                out.println(f_id);
                Connection con = null;
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
                    PreparedStatement ps=con.prepareStatement("delete from fooditem_details where fooditem_id=?");
                    ps.setInt(1,f_id);
                    result=ps.executeUpdate();
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
                    response.sendRedirect("FoodItems.jsp");
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
