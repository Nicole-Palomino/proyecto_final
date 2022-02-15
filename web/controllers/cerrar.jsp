<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            //Para eliminar al Objeto session
            HttpSession elemento = request.getSession();
            elemento.invalidate();
            response.sendRedirect("../crud/login.html");
        %>  
    </body>
</html>
