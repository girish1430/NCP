<%-- 
    Document   : accStmt
    Created on : 13 Oct, 2019, 9:32:20 PM
    Author     : Girish
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*, java.io.*, java.util.*, javax.servlet.*, javax.servlet.http.* "%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>

<!DOCTYPE html>
<html>
    <head><link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<div class="alert alert-warning" role="alert">
<h2 align="center">Account Statement</h2>
</div>
    <sql:setDataSource var = "acc" driver = "com.mysql.jdbc.Driver"
         url = "jdbc:mysql://localhost/social"
         user = "root"  password = ""/>
    <sql:query dataSource = "${acc}" var = "result">SELECT * from account; </sql:query>
    
      <table class="table table-hover table-striped">
         <tr>
            <th>#</th>
            <th>Email</th>
            <th>Event</th>
            <th>Amount</th>
            <!--<th>Date</th>-->
         </tr>
          <c:choose>
        <c:when test="${result.rowCount == 0}">
            <tr>
            <td colspan="4" align="center" class="alert alert-danger">No records found..</td>
            </tr>
        </c:when>
        <c:otherwise>
         <%int i=1;%>
         <c:forEach var = "row" items = "${result.rows}">
             <tr>
                <td><c:out value = "<%=i++%>"/></td>
               <td><c:out value = "${row.email}"/></td>
               <td><c:out value = "${row.event}"/></td>
               <td><c:out value = "${row.amount}"/></td>
               <!--<td<c:out value = "${row.date}"/></td>-->
            </tr>
         </c:forEach>
        </c:otherwise>
          </c:choose>
      </table>
    <div align="center">
               <input type="submit" class="btn btn-primary" onclick="window.print()" value="Print Account Statement">
    
         </div>

</body>
</html>
