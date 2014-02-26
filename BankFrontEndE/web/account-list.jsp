<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Account list</title>
  </head>
  <body>
    <h1>Account list</h1>
    <hr/>
    ${message} for ${customer.cpr} ${accounts.size()}
    <c:forEach var="account" items="${accounts}">
      <br/>${account.number} ${account.type}
    </c:forEach>
    <hr/> 
    <!-- a href="Back">Back to main page</a -->
    <a href="Controller?command=back">Back to main page</a>
    
</html>
