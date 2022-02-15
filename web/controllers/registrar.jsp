<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            try {
                Connection conexion = ConexionBD.retornaConexion();
                String sql="INSERT INTO cliente values(null,?,?)";
                PreparedStatement pst = conexion.prepareStatement(sql);
                
                pst.setString(1, request.getParameter("nom"));
                pst.setString(2, request.getParameter("pass"));
                
                pst.executeUpdate(); 
                response.sendRedirect("../paginas/login.jsp");
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
