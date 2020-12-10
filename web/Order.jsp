<%-- 
    Document   : Order
    Created on : 21 Apr, 2020, 9:48:56 PM
    Author     : saurabh biswas
--%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@include file="Customer_view.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
         String url="jdbc:mysql://localhost:3306/rms";
         String user="root";
         String pass="";
         Connection con=null;
         try{
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection(url,user,pass);
             PreparedStatement ps = con.prepareStatement("select * from fooditems_details where fooditem_id=?");
             Integer oid=(Integer)session.getAttribute("oid");
             ps.setInt(1,oid);
             ResultSet rs=ps.executeQuery();
             if(rs.next())
             {
                  
            String name=(String)rs.getString("fooditem_name");
            int price=(int)rs.getInt("fooditem_price");
            PreparedStatement psa = con.prepareStatement("INSERT INTO order_details (c_id, f_id, f_name,f_price) VALUES (?,?,?,?)");
             Integer cid=(Integer)session.getAttribute("custid");
             psa.setInt(1,cid);
              psa.setInt(2,oid);
              psa.setString(3, name);
               psa.setInt(4,price);
             int result = psa.executeUpdate();
             }
            
      
            
            
             
              Integer catid=(Integer)session.getAttribute("catid");
              
             
              if(catid==1)
             {
                  response.sendRedirect("Beverage.jsp");
              }
              else if(catid==2)
              {
                  response.sendRedirect("Soup.jsp");
              }
              else if(catid==3)
           {
                  response.sendRedirect("Starter.jsp");
             }
              else if(catid==4)
             {
                 response.sendRedirect("Punjabi.jsp");
              }
            else if(catid==5)
              {
                  response.sendRedirect("Veg.jsp");
              }
              else if(catid==6)
              {
                  response.sendRedirect("Roti.jsp");
              }
              else if(catid==7)
              {
                  response.sendRedirect("Rice.jsp");
              }
              else if(catid==8)
              {
                  response.sendRedirect("Dal.jsp");
              }
              else
             {
                  response.sendRedirect("Desert.jsp");
             }
        }
        catch(Exception ex)
        {
           out.println(ex);
        }
%>

    </body>
</html>
