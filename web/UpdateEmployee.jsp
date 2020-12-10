<%-- 
    Document   : UpdateEmployee
    Created on : 1 Apr, 2020, 1:48:56 PM
    Author     : utsav
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@include file="Admin_view.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<link rel="stylesheet" href="Admin.css">

<%
    HttpSession ses = request.getSession(false);
    if (ses != null) {
        int emp_id=Integer.parseInt(request.getParameter("id"));
        ResultSet rs = null;
    String connectionURL = "jdbc:mysql://localhost:3306/rms";
    String user = "root";
    String pass = "";
    Connection con = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(connectionURL, user, pass);
        String sql = "select * from employee_details where employee_id=?";
        PreparedStatement ps= con.prepareStatement(sql);
        ps.setInt(1,emp_id);
        rs=ps.executeQuery();
        while(rs.next()){
            %>
            <form action="UpdatedEmployee.jsp?id=<%=rs.getString("employee_id")%>" method="POST" class="signup">
                <div class="login">
            
                    <h1>Update items</h1>
                    <p>Name<input type="text" name="name" value='<%=rs.getString("employee_name")%>' ></p>
                    <p>Address<input type="text" name="address" value='<%=rs.getString("employee_address")%>' ></p>
                    <p>City<input type="text" name="city" value='<%=rs.getString("employee_city")%>'></p>
                    <p>State<input type="text" name="state" value='<%=rs.getString("employee_state")%>' ></p>
                    <p>Pincode<input type="text" name="pincode" value='<%=rs.getString("employee_pincode")%>'></p>
                    <p>Mobile Number<input type="text" name="mobile" value='<%=rs.getString("employee_mobileno")%>' ></p>
                    <p>Email id<input type="text" name="email" value='<%=rs.getString("employee_emailid")%>' ></p>
                    <p class="submit"><input type="submit" name="commit" value="update"></p>
               
</div>
            </form>
                    <%
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
 
<%
    } else {

        //out.println("<center><b>Please Login First!</b></center>");
        response.sendRedirect("Admin_login.jsp?msg=Please+Login+First!");
    }
%>
