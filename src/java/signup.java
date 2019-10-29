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
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
/**
 *
 * @author Girish
 */
public class signup extends HttpServlet {

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
        String name1 = request.getParameter("name");
        String phone1 = request.getParameter("phone");
        String email1 = request.getParameter("email");
        String password1 = request.getParameter("password");
//        int phone=Integer.valueOf(ph);
//        String town = request.getParameter("town");
//        String county = request.getParameter("country");
//        String zipcode = request.getParameter("zipcode");
        Connection connection=null;
        PrintWriter out = response.getWriter();
        try{
            Class.forName("com.mysql.jdbc.Driver");  
            connection=DriverManager.getConnection("jdbc:mysql://localhost/social","root","");
//            
            String spon = "select email from sponsor";
            Statement st=connection.createStatement();
            ResultSet rs=st.executeQuery(spon);
             out.println("<link rel=\"stylesheet\" href=\"https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css\" integrity=\"sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T\" crossorigin=\"anonymous\">\n" +
"");
            while(rs.next()){
                if(email1.equals(rs.getString(1))){
                    out.println("<h3 class='alert alert-danger'>User Already Exist...</h3>");
                    response.setHeader("Refresh", "1; URL=/jdbc_check_mysql/index.jsp");
                }
            }
            String sql = "insert into sponsor(email,name,password,phone) values (?,?,?,?)";
            PreparedStatement pst = connection.prepareStatement(sql);
            pst.setString(1, email1);
            pst.setString(2, name1);
            pst.setString(3, password1);
            pst.setString(4, phone1);
            int numRowsChanged = pst.executeUpdate();
                       
            out.println("<h3 class='alert alert-success'>Loading...</h3>");
//            out.println(name1+email1+" Bye..");
            response.setHeader("Refresh", "2; URL=/jdbc_check_mysql/index.jsp");
            pst.close();
//            for(int i=0;i<50000000;i++);
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