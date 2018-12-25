
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title></title>
  </head>
  <body>
    <%
      session.invalidate();
    %>
    <script>
      location.href = 'main.jsp';
    </script>
  </body>
</html>
