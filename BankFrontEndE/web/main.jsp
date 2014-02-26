<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Bank main page</title>
  </head>
  <body>
    <h1>Bank main page ${message}</h1>
    <hr/>
    <ul>
      <!-- li><a href="ListAccounts">List accounts</a></li -->
      <li><a href="Controller?command=list-accounts">List accounts</a></li>
      <li><a href="Controller?command=list-customers">List customers</a></li>
    </ul>
    Content goes here...
  </body>
</html>
