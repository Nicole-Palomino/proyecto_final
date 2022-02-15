<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>Reservar Paquete Turístico</title>
    
    </head>
    <body>
        <%
            try {
                Connection conexion = ConexionBD.retornaConexion();
                String sql="INSERT INTO reserva values(null,?,?,?)";
                PreparedStatement pst = conexion.prepareStatement(sql);
                
                pst.setString(1, request.getParameter("turista"));
                pst.setString(2, request.getParameter("paquete"));
                pst.setString(3, request.getParameter("cant"));
                
                pst.executeUpdate(); 
                response.sendRedirect("./completo.jsp");
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
