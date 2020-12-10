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
        int f_id=Integer.parseInt(request.getParameter("id"));
        ResultSet rs = null;
    String connectionURL = "jdbc:mysql://localhost:3306/rms";
    String user = "root";
    String pass = "";
    Connection con = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        con = DriverManager.getConnection(connectionURL, user, pass);
        String sql = "select * from fooditem_details where fooditem_id=?";
        PreparedStatement ps= con.prepareStatement(sql);
        ps.setInt(1,f_id);
        rs=ps.executeQuery();
        while(rs.next()){
            %>
            <form action="UpdatedImage?id=<%=rs.getString("fooditem_id")%>" method="POST" class="signup"  enctype="multipart/form-data">
                <div class="login">
            
                    <h1>Update Items</h1>
                    <p>Category Id<input type="text" name="category_id" value="<%=rs.getInt("category_id")%>" placeholder="id" ></p>
                            <p>Name<input type="text" name="name" value="<%=rs.getString("fooditem_name")%>" placeholder="name" ></p>
                            <p>Description<input type="text" name="description" value="<%=rs.getString("fooditem_description")%>" placeholder="write description"></p>
                            <p>Price<input type="text" name="price" value="<%=rs.getInt("fooditem_price")%>" placeholder="price" ></p>
                            <p>Image
                                <!--<img src="" style="width:70px;height:70px">-->
                            </p>
                            <p> <input type="file" name="myfile" id="myfile"></p>
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
