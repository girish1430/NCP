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
</head>
<body>
<div class="alert alert-success" role="alert">
<h2 align="center">List of Events</h2>
</div>
    <sql:setDataSource var = "acc" driver = "com.mysql.jdbc.Driver" url = "jdbc:mysql://localhost/social" user = "root"  password = "" />
    <sql:query dataSource = "${acc}" var = "result">SELECT * from addevents; </sql:query>
    <% int i=1,j=0;
         if(request.getParameter("a")!=null)
            j=1;
         %>
      <table class="table table-hover table-striped">
         <tr>
            <th>#</th>
            <th>Event name</th>
            <th>Venue</th>
            <th>Date</th>
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
               <td><c:out value = "${row.Event}"/></td>
               <td><c:out value = "${row.Venue}"/></td>
               <td><c:out value = "${row.Date}"/></td>
               <td><%if(j==1){%><a href="/jdbc_check_mysql/del?rows=${row.Event}" class="btn btn-danger">Delete</a></td><%}%>
               <% // if(j==1){ out.print("<td>"); out.print("<input type='submit' class='btn btn-danger' value='Delete'> <input type='hidden' value='"+i+"' name='row'>"); out.print("</td>"); }%>
            </tr>
         </c:forEach>
        </c:otherwise>
          </c:choose>
      </table>
</body>
</html>