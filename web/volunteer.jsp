<%-- 
    Document   : accStmt
    Created on : 13 Oct, 2019, 9:32:20 PM
    Author     : Girish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>Volunteer List</title>
    </head>
<body>
<div class="alert alert-info" role="alert">
<h2 align="center">List of Volunteers</h2>
</div>
    <sql:setDataSource var = "acc" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost/social" user = "root"  password = "" />
    <sql:query dataSource = "${acc}" var = "result">SELECT * from volunteer; </sql:query>
    <% int i=1,j=0;
         if(request.getParameter("a")!=null)
            j=1;
         %>
      <table class="table table-hover table-striped">
         <tr>
            <th>#</th>
            <th>Name</th>
            <th>Email</th>
            <th>Event</th>  
           
            <%if(j==1) out.println("<th>Delete</th>");%>
         </tr>
          <c:choose>
        <c:when test="${result.rowCount == 0}">
            <tr>
            <td colspan="5" align="center" class="alert alert-danger">No records found..</td>
            </tr>
        </c:when>
        <c:otherwise>
         <c:forEach var = "row" items = "${result.rows}">
            <tr>
                <td><% out.print(i); i++; %></td>
               <td><c:out value = "${row.name}"/></td>
               <td><c:out value = "${row.email}"/></td>
               <td><c:out value = "${row.event}"/></td>
            
               <td><%if(j==1){%><a href="/jdbc_check_mysql/delVol?rows=${row.email}" class="btn btn-danger">Delete</a></td><%}%>
               <% // if(j==1){ out.print("<td>"); out.print("<input type='submit' class='btn btn-danger' value='Delete'> <input type='hidden' value='"+i+"' name='row'>"); out.print("</td>"); }%>
            </tr>
         </c:forEach>
        </c:otherwise>
          </c:choose>
      </table>
         <div align="center">
               <input type="submit" class="btn btn-primary" onclick="window.print()" value="Print List">
         <a class="btn btn-primary" href="aindex.jsp?a=1">Back</a>
         </div>
</body>
</html>