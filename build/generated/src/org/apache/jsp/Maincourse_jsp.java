package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;

public final class Maincourse_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Customer_view.jsp");
  }

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
      out.write("<!DOCTYPE html>\n");
      out.write("<!--\n");
      out.write("To change this license header, choose License Headers in Project Properties.\n");
      out.write("To change this template file, choose Tools | Templates\n");
      out.write("and open the template in the editor.\n");
      out.write("-->\n");
      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"NavBackend.css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("            \n");
      out.write("                    <div class=\"w3-sidebar w3-bar-block w3-border-right\" style=\"display:none\" id=\"mySidebar\"> \n");
      out.write("                         <button onclick=\"w3_close()\" class=\"w3-bar-item w3-large\">Close &times;</button>\n");
      out.write("                    <a href=\"Beverage.jsp\" class=\"w3-bar-item w3-button\">Beverage</a>\n");
      out.write("                    <a href=\"Soup.jsp\" class=\"w3-bar-item w3-button\">Soup</a>\n");
      out.write("                    <a href=\"Starter.jsp\" class=\"w3-bar-item w3-button\">Starter</a>\n");
      out.write("                            <a href=\"Maincourse.jsp\" class=\"w3-bar-item w3-button\">Main course</a>\n");
      out.write("                             <a href=\"Desert.jsp\" class=\"w3-bar-item w3-button\">Desert</a>\n");
      out.write("                            \n");
      out.write("                            <a href=\"Bill.jsp\" class=\"w3-bar-item w3-button\">Bill</a>\n");
      out.write("                  </div>\n");
      out.write("                   <div class=\"w3-teal\">\n");
      out.write("                    <button class=\"w3-button w3-teal w3-xlarge\" onclick=\"w3_open()\">=</button>\n");
      out.write("                    <div class=\"w3-container\">\n");
      out.write("                      <h1>Welcome to paradise</h1>\n");
      out.write("                    </div></div>\n");
      out.write("                    <script>\n");
      out.write("                            function w3_open() {\n");
      out.write("                              document.getElementById(\"mySidebar\").style.display = \"block\";\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("                            function w3_close() {\n");
      out.write("                              document.getElementById(\"mySidebar\").style.display = \"none\";\n");
      out.write("                            }\n");
      out.write("                            </script>\n");
      out.write("                          \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("    ");

        try{
           
           
      out.write("\n");
      out.write("<link rel=\"stylesheet\" href=\"Bootstrap.css\">\n");
      out.write("<link rel=\"stylesheet\" href=\"Bootstrap1.js\">\n");
      out.write("<link rel=\"stylesheet\" href=\"Bootstrap2.js\">\n");
      out.write("<link rel=\"stylesheet\" href=\"Bootstrap3.js\">\n");
      out.write("<div class=\"row\" >\n");
      out.write("    \n");
      out.write("     <div class=\"col-sm-4\">\n");
      out.write("  <div class=\"card\" >\n");
      out.write("      <img src=\"images/Static/Punjabi.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("  <div class=\"card-body\">\n");
      out.write("    <h5 class=\"card-title\">Punjabi</h5>\n");
      out.write("    <p class=\"card-text\">Distinctively Punjabi cuisine is known for its rich, buttery flavours along with the extensive vegetarian and meat dishes. </p>\n");
      out.write("    <a href=\"Punjabi.jsp\" class=\"btn btn-primary\">Order Punjabi</a>\n");
      out.write(" </div>\n");
      out.write("</div>\n");
      out.write("     </div>\n");
      out.write("         <div class=\"col-sm-4\">\n");
      out.write("    <div class=\"card\" >\n");
      out.write("        <img src=\"images/Static/Veg.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("  <div class=\"card-body\">\n");
      out.write("    <h5 class=\"card-title\">Veg</h5>\n");
      out.write("    <p class=\"card-text\">Indian cuisine is favored by vegetarians due to the many varied and tasty options, from a chickpea curry to garlic-tinged lentils to paneer cheese in a rich sauce. </p>\n");
      out.write("    <a href=\"Veg.jsp\" class=\"btn btn-primary\">Order Veg</a>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("          <div class=\"col-sm-4\">\n");
      out.write("    <div class=\"card\" >\n");
      out.write("        <img src=\"images/Static/RIce.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("  <div class=\"card-body\">\n");
      out.write("    <h5 class=\"card-title\">Rice</h5>\n");
      out.write("    <p class=\"card-text\">Rice consists of white or brown grains taken from a cereal plant. You cook rice and usually eat it with meat or vegetables.</p>\n");
      out.write("    <a href=\"Rice.jsp\" class=\"btn btn-primary\">Order Rice</a>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("    <br>\n");
      out.write("          <div class=\"col-sm-4\">\n");
      out.write("    <div class=\"card\" >\n");
      out.write("        <img src=\"images/Static/Roti.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("  <div class=\"card-body\">\n");
      out.write("    <h5 class=\"card-title\">Roti</h5>\n");
      out.write("    <p class=\"card-text\">Roti (also known as chapati) is a round flatbread native to the Indian subcontinent made from stoneground wholemeal flour, traditionally known as atta, and water that is combined into a dough.</p>\n");
      out.write("    <a href=\"Roti.jsp\" class=\"btn btn-primary\">Order Roti</a>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("          <div class=\"col-sm-4\">\n");
      out.write("    <div class=\"card\" >\n");
      out.write("        <img src=\"images/Static/Dal.jpg\" class=\"card-img-top\" alt=\"...\">\n");
      out.write("  <div class=\"card-body\">\n");
      out.write("    <h5 class=\"card-title\">Dal</h5>\n");
      out.write("    <p class=\"card-text\">dal is one of the staple dishes in Indian cuisine. Different types of lentils are used in Indian cooking.</p>\n");
      out.write("    <a href=\"Dal.jsp\" class=\"btn btn-primary\">Order Dal</a>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("  </div>\n");
      out.write("     </div>\n");
      out.write("\n");
      out.write("    ");

        

        } catch (Exception ex) {
            out.println(ex);
        }
        
    
 
    
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
