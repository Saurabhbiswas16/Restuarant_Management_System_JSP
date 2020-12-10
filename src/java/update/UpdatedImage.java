/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package update;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;

/**
 *
 * @author utsav
 */
@WebServlet(name = "UpdatedImage", urlPatterns = {"/UpdatedImage"})
@MultipartConfig(maxFileSize = 16177216)
public class UpdatedImage extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession sess = request.getSession(false);
            if (sess != null) {
                ResultSet rs = null;
                String connectionURL = "jdbc:mysql://localhost:3306/rms";
                String user = "root";
                String pass = "";
                Connection con = null;
                int result = 0;
                Part part = request.getPart("myfile");
                if (part != null) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    con = DriverManager.getConnection(connectionURL, user, pass);
                    String sql="update fooditem_details set category_id=?,fooditem_name=?,fooditem_description=?,fooditem_price=?,fooditem_img=? where fooditem_id=?";
//                    Statement st = con.createStatement();
                    //rs = st.executeQuery(sql);
//                    result = st.executeUpdate("update employee_details set employee_name="+ request.getParameter("name") +",employee_address="+request.getParameter("address")+",employee_city="+request.getParameter("city")+",employee_state="+request.getParameter("state")+",employee_pincode="+request.getParameter("pincode")+",employee_mobileno="+request.getParameter("mobile")+",employee_emailid="+request.getParameter("email")+" where employee_id="+request.getParameter("id"));
                    PreparedStatement ps=con.prepareStatement(sql);
                    ps.setString(1,request.getParameter("category_id"));
                    ps.setString(2, request.getParameter("name"));
                ps.setString(3, request.getParameter("description"));
                ps.setString(4, request.getParameter("price"));
                InputStream is = part.getInputStream();
                ps.setBlob(5, is);
                ps.setString(6,request.getParameter("id"));
                result = ps.executeUpdate();
                }   catch (ClassNotFoundException | SQLException ex) {
                        Logger.getLogger(UpdatedImage.class.getName()).log(Level.SEVERE, null, ex);
                    }finally {
                    if (con != null) {
                        try {
                            con.close();
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                    }
                }
                }
                if (result > 0) {
                    response.sendRedirect("FoodItems.jsp");
                } else {
                    response.sendRedirect("Admin_view.jsp?message=Some+Error+Occurred");
                }
    } else {
                response.sendRedirect("Admin_login.jsp?msg=Please+Login+First!");
            }}

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
