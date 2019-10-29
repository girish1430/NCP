/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.*;
import javax.servlet.http.*;
/**
 *
 * @author Girish
 */
public class adminLogin extends HttpServlet {

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
        String email1 = request.getParameter("email");
        String password1 = request.getParameter("pass");
        Connection connection=null;
        PrintWriter out = response.getWriter();
        try{
            Class.forName("com.mysql.jdbc.Driver");
            connection=DriverManager.getConnection("jdbc:mysql://localhost/social","root","");
            Statement stmt=connection.createStatement();
            ResultSet rs=stmt.executeQuery("select email,password from admin");
            while(rs.next()){
                if(rs.getString(1).equals(email1) && rs.getString(2).equals(password1)){
                     HttpSession session=request.getSession();  
                    session.setAttribute("name",email1);
                    session.setMaxInactiveInterval(10*60);
                    response.setHeader("Refresh", "1; URL=/jdbc_check_mysql/aindex.jsp?a=1");
                }
                else{
                    response.setHeader("Refresh", "2; URL=/jdbc_check_mysql/login.jsp?pwd=f");
                }
            }
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