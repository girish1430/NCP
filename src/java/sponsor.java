/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
/**
 *
 * @author Girish
 */
public class sponsor extends HttpServlet {

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
        response.setContentType("text/html;charset=UTF-8");
        Connection conn=null;
        PrintWriter out = response.getWriter();
        String email1 = request.getParameter("email1");
        String event1 = request.getParameter("event1");
        int amount=Integer.parseInt(request.getParameter("amount"));
        try {
            /* TODO output your page here. You may use following sample code. */
            Class.forName("com.mysql.jdbc.Driver");  
            conn=DriverManager.getConnection("jdbc:mysql://localhost/social","root","");
            String sql = "insert into account(email,event,amount) values (?,?,?)";
            PreparedStatement pst = conn.prepareStatement(sql);
            pst.setString(1, email1);
            pst.setString(2, event1);
            pst.setInt(3, amount);
            int numRowsChanged = pst.executeUpdate();
           
            response.setHeader("Refresh", "2;  URL=/jdbc_check_mysql/sindex.jsp");
             response.sendRedirect("https://www.payumoney.com/paybypayumoney/#/4936220EEFC67F0F387CA156AA568A69");
            
        }
       // URL=https://www.payumoney.com/paybypayumoney/#/4936220EEFC67F0F387CA156AA568A69 
        catch(Exception e){
            out.println(e);
        }
        finally {
        // Always close the database connection.
        try {
        if (conn != null) conn.close();
        }
        catch (SQLException ignored){
        out.println(ignored);
        }
        }
    }

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
