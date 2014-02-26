<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Customer list</title>
  </head>
  <body>
    <h1>Customer list</h1>
    <hr/>
    ${message} for ${customer.cpr} ${customers.size()}
    <c:forEach var="customer" items="${customers}">
      <br/>${customer.name} ${account.type}
    </c:forEach>
    <hr/> 
    <!-- a href="Back">Back to main page</a -->
    <a href="Controller?command=back">Back to main page</a>
    
</html>
