<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@include file="Customer_view.jsp" %>
<html dir="ltr"><head>
        <title>Main Course</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0" enctype="multipart/form-data">
    </head>
<table border="1" width="100%" height="100%" >
 <thead>
     <%
         String url="jdbc:mysql://localhost:3306/rms";
         String user="root";
         String pass="";
         Connection con=null;
         try{
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection(url,user,pass);
             
             String sql="select * from fooditems_details where category_id=8";
             Statement stmt=con.createStatement();
             ResultSet rs=stmt.executeQuery(sql);
             session.setAttribute("catid",8);
         %>
           
              <tr>
                    <td valign="center" align="center">
                        <h2>Name</h2>
                    </td>
                    <td valign="center" align="center">
                        <h2>Description</h2>
                    </td>
                    <td valign="center" align="center">
                        <h2>Price</h2>
                    </td>
                    <td align="center">
                        <h2>Image</h2>
                    </td>
                    <td></td>
                </tr>
   </thead>              
                <%
                                
            while(rs.next()){
                 session.setAttribute("oid",rs.getInt("fooditem_id"));
                %>
                <tr>
                  <td align="center"><% out.println(rs.getString("fooditem_name"));%></td>
                        
                   <td>
                       <p><% out.println(rs.getString("fooditem_description"));%></p></td>
                      
                    <td align="center"><% out.println(rs.getString("fooditem_price"));%> </td>
                    
                    <td>
                        <img src="<% out.println(rs.getString("fooditem_img"));%>" alt=""  style="max-height:70%; max-width:100%">
                     </td>
                     
               
                
       <html>
   <head>   
      <script type = "text/javascript">
         <!--
            function getConfirmation() {
               var retVal = confirm("Do you want to place the order?");
               if( retVal == true ) {
                  window.open("http://localhost:8080/Jsp_RMS/Order.jsp");
                  return true;
               } 
               else {
                  window.open("http://localhost:8080/Jsp_RMS/Dal.jsp");
                  return false;
               }
            }
         //-->
      </script>     
   </head>
   
   <body>
          
      <form>
         <td><input type = "button" value = "Order" onclick = "getConfirmation();" /></td>
      </form>      
   </body>              
                 
   </html> 
             </tr>        
            <%}%>
            
             </tbody>
                    </table>
                        
           
            
             
   </html>
   <%
            
        }
        
        
                    
        
        catch(Exception ex)
        {
           out.println(ex);
        }
%>

   
