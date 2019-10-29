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
import javax.servlet.*;
import javax.servlet.http.*;
/**
 *
 * @author Girish
 */
public class jdbc extends HttpServlet {

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
//        String uId = request.getParameter("userId");
        String fname = request.getParameter("firstname");
        String sname = request.getParameter("surname");
        String address1 = request.getParameter("address1");
//        String address2 = request.getParameter("address2");
//        String town = request.getParameter("town");
//        String county = request.getParameter("country");
//        String zipcode = request.getParameter("zipcode");
        try(PrintWriter out = response.getWriter()){
            Class.forName("com.mysql.jdbc.Driver");  
            Connection connection=DriverManager.getConnection(
            "jdbc:mysql://localhost/social","root","");  
            //here sonoo is database name, root is username and password  
//            Statement stmt=connection.createStatement();
            String sql = "insert into sponsor values (?,?,?)";
            PreparedStatement pst = connection.prepareStatement(sql);
//            pst.setString(1, uId);
            pst.setString(1, fname);
            pst.setString(2, sname);
            pst.setString(3, address1);
//            pst.setString(5, address2);
//            pst.setString(6, town);
//            pst.setString(7, county);
//            pst.setString(8, zipcode);
            int numRowsChanged = pst.executeUpdate();
            // show that the new account has been created
            out.println(" Hello : ");
            out.println(" '"+fname+"'");
            out.println(" '"+sname+"'"+" "+numRowsChanged);
            pst.close();
        }
        catch(Exception e){
            System.out.println("fff");
        }
//        try {
//        if (connection != null) connection.close();
//        }
//        catch (SQLException ignored){
//        out.println(ignored);
//        }
//        finally {
  // Always close the database connection.
        //here
        
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
//try (PrintWriter out = response.getWriter()) {
//            /* TODO output your page here. You may use following sample code. */
//            out.println("<!DOCTYPE html>");
//            out.println("<html>");
//            out.println("<head>");
//            out.println("<title>Servlet jdbc</title>");            
//            out.println("</head>");
//            out.println("<body>");
////            out.println("<h1>Servlet jdbc at " + request.getContextPath() + "</h1>");
//            out.println("<h1>Above my head</h1>");
//            out.println("</body>");
//            out.println("</html>");
//        }