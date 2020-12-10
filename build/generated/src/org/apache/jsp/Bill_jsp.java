package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;

public final class Bill_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      out.write('\n');


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
             
      out.write("\n");
      out.write("<html dir=\"ltr\"><head>\n");
      out.write("        <title>Main Course</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form action=\"Clogout.jsp\" method=\"POST\" class=\"container\">\n");
      out.write("<table border=\"1\" width=\"100%\" height=\"100%\" >\n");
      out.write(" <thead>\n");
      out.write("              <tr>\n");
      out.write("                    <td valign=\"center\" align=\"center\">\n");
      out.write("                        <h1>Name</h1>\n");
      out.write("                    </td>\n");
      out.write("                    <td valign=\"center\" align=\"center\">\n");
      out.write("                        <h1>Price</h1>\n");
      out.write("                    </td>\n");
      out.write("              </tr>\n");
      out.write(" <style>\n");
      out.write(".button {\n");
      out.write("  background-color: #4CAF50; /* Green */\n");
      out.write("  border: none;\n");
      out.write("  color: white;\n");
      out.write("  padding: 15px 32px;\n");
      out.write("  text-align: center;\n");
      out.write("  text-decoration: none;\n");
      out.write("  display: inline-block;\n");
      out.write("  font-size: 20px;\n");
      out.write("  margin: 4px 2px;\n");
      out.write("  cursor: pointer;\n");
      out.write("  width: 50%;\n");
      out.write("}\n");
      out.write(".td {\n");
      out.write("    font-size: 200px;\n");
      out.write("}\n");
      out.write("</style>\n");
      out.write("              \n");
      out.write("   </thead> \n");

             int sum=0;
              while(rs.next()){
                  
      out.write("\n");
      out.write("                  <tr>\n");
      out.write("                   <td align=\"center\">");
 out.println(rs.getString("f_name"));
      out.write("</td>\n");
      out.write("                   <td align=\"center\">");
 out.println(rs.getInt("f_price"));
      out.write("</td>\n");
      out.write("                   </tr>\n");
      out.write("                 ");
     
                   
                  sum=sum+rs.getInt("f_price");
              }

      out.write("\n");
      out.write("              <tr>\n");
      out.write("                   <h3><td align=\"center\">Total Bill</td></h3>\n");
      out.write("                    <td align=\"center\">\"+sum+\" </td>  \n");
      out.write("                   </tr>\n");
      out.write("                    <h1><tr>\n");
      out.write("                      <td colspan=2 align=\"center\">\n");
      out.write("                      <button class=\"button\">Pay</button>\n");
      out.write("                      </td>\n");
      out.write("                      </tr></h1>\n");
      out.write("              \n");
      out.write("          ");
    
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

      out.write('\n');
      out.write('\n');
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
