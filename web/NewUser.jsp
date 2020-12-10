<%-- 
    Document   : NewUser
    Created on : 1 Apr, 2020, 2:06:14 PM
    Author     : utsav
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.io.PrintWriter"%>
<%@page contentType="text/html" pageEncoding="UTF-8" session="false" import="javax.servlet.http.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>New User</title>
    </head>
    <body>
        <%
            HttpSession sess=request.getSession(false);
            if(sess!=null){
                String name = request.getParameter("username");
                String mail = request.getParameter("email");
                Class.forName("com.mysql.jdbc.Driver");
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/rms", "root", "");
                PreparedStatement pstmt = conn.prepareStatement("select username from admin where username=? or email=?");
                pstmt.setString(1, name);
                pstmt.setString(2, mail );
                ResultSet rs = pstmt.executeQuery();
                while (rs.next()) {
//                    out.println("<center><b>Sorry, User already exists!</b></center>");
                    response.sendRedirect("SignUp.jsp?msg='Sorry, User already exists!'");
                }
                String pass = request.getParameter("password");
                String repass = request.getParameter("repassword");
                if(pass.equals(repass)){
                    PreparedStatement ps = conn.prepareStatement("insert into admin (first_name,last_name,username,password,email,mobile_no) values (?,?,?,?,?,?)");
                    ps.setString(1,request.getParameter("firstname"));
                    ps.setString(2,request.getParameter("lastname"));
                    ps.setString(3, name );
                    ps.setString(4,pass);
                    ps.setString(5,mail);
                    ps.setString(6,request.getParameter("ph_no"));
                    ps.execute();
                    response.sendRedirect("Admin_login.jsp");
                }
                else{
                    out.println("<center><b>Password didn't match...</b></center>");
                    %>
                    <jsp:include page="SignUp.jsp"/>
        <%
                }
            }
            else{
                
                out.println("Please Login First!"); 
        %>
                <jsp:include page="Admin_login.jsp"/>
                
                <% 
        }
                %>
    </body>
</html>
