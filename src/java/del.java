/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Girish
 */
public class del extends HttpServlet {

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
        Connection connection=null;
        PrintWriter out = response.getWriter();
        try {
            /* TODO output your page here. You may use following sample code. */
           Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost/social","root","");
            Statement stmt=connection.createStatement();
            String row=request.getParameter("rows");
//            out.print(row);
//            ResultSet rs=stmt.executeQuery("Delete from addevents where Event='"+row+"'");
            int i=stmt.executeUpdate("Delete from addevents where Event='"+row+"'");
//            while(rs.next()){
//                out.println(rs.getString(1));
//            }
//            rs.close();
//            ResultSet rs1=stmt.executeQuery("Delete from volunteer where Event='"+row+"'");
            int b=stmt.executeUpdate("Delete from volunteer where Event='"+row+"'");
            int c=1;
//            while(rs1.next()){
//                out.println(rs1.getString(i));
//                c++;
//            }
//            rs1.close();
            response.setHeader("Refresh", "1; URL=/jdbc_check_mysql/eventJsp.jsp?a=1");
        }
        catch(Exception e){
            out.println(e);
        }
        finally {
        // Always close the database connection.
        try {
        if (connection != null) 
            connection.close();
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
