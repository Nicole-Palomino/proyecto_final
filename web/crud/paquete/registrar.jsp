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
                String sql="INSERT INTO paquete values(null,?,?,?,?,?)";
                PreparedStatement pst = conexion.prepareStatement(sql);
                
                pst.setString(1, request.getParameter("recorrido"));
                pst.setString(2, request.getParameter("hs"));
                pst.setString(3, request.getParameter("hll"));
                pst.setString(4, request.getParameter("dia"));
                pst.setString(5, request.getParameter("precio"));
                
                pst.executeUpdate(); 
                response.sendRedirect("./view.jsp");
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
