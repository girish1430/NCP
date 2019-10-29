/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Girish
 */
public class feed extends HttpServlet {

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
//        if(request.getParameter("event1")==null) out.print("Here1");
//        if(request.getParameter("feed1")==null) out.print("Here2");
//        if(session.getAttribute("name")==null) out.print("Here3");
            String event1 = request.getParameter("event1");
             String feed1 = request.getParameter("feed1");
            String email = request.getParameter("email1");
        try {
            /* TODO output your page here. You may use following sample code. */
            
            Class.forName("com.mysql.jdbc.Driver");  
            connection=DriverManager.getConnection("jdbc:mysql://localhost/social","root","");
            String sql = "insert into feedback(Event,Feedback,email) values (?,?,?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, event1);
            pst.setString(2, feed1);
            pst.setString(3, email);
            int numRowsChanged = pst.executeUpdate();
            out.println("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n" +"");
            out.println("<h3 class='alert alert-success'>Sending feedback</h3>");
            out.println("<h3 class='alert alert-success'>Loading...</h3>");
            response.setHeader("Refresh", "1; URL=/jdbc_check_mysql/sindex.jsp?s=1");
        }
        catch(Exception e){
            out.println(e);
        }
        finally {
        // Always close the database connection.
        try {
        if (connection != null) connection.close();
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
