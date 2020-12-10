<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%

         String url="jdbc:mysql://localhost:3306/rms";
         String user="root";
         String pass="";
         Connection con=null;
         try{
             Class.forName("com.mysql.jdbc.Driver");
             con=DriverManager.getConnection(url,user,pass);	
            String sql1="select * from order_details where c_id="+session.getAttribute("custid")+"";
            Statement stmt=con.createStatement();
             ResultSet rs=stmt.executeQuery(sql1);
             %>
<html dir="ltr"><head>
        <title>Main Course</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <form action="Clogout.jsp" method="POST" class="container">
<table border="1" width="100%" height="100%" >
 <thead>
              <tr>
                    <td valign="center" align="center">
                        <h1>Name</h1>
                    </td>
                    <td valign="center" align="center">
                        <h1>Price</h1>
                    </td>
              </tr>
 <style>
.button {
  background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 20px;
  margin: 4px 2px;
  cursor: pointer;
  width: 50%;
}
.td {
    font-size: 200px;
}
</style>
              
   </thead> 
<%
             int sum=0;
              while(rs.next()){
                  %>
                  <tr>
                   <td align="center"><% out.println(rs.getString("f_name"));%></td>
                   <td align="center"><% out.println(rs.getInt("f_price"));%></td>
                   </tr>
                 <%     
                   
                  sum=sum+rs.getInt("f_price");
              }
%>
              <tr>
                   <h3><td align="center">Total Bill</td></h3>
                    <td align="center">"+sum+" </td>  
                   </tr>
                    <h1><tr>
                      <td colspan=2 align="center">
                      <button class="button">Pay</button>
                      </td>
                      </tr></h1>
              
          <%    
             }
            
         finally {
                if (con != null) {
                    try {
                        con.close();
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
            }        
    }
%>

