<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<% int codigo=0; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        try {
            //1. Recuperar el codigo de l a URL
            codigo = Integer.parseInt(request.getParameter("id"));
            out.print(codigo);
            //2. Conexion a la BD
            Connection conexion = ConexionBD.retornaConexion();
            //3. Crear consulta sql
            String  consulta ="update  paquete  set  recorrido=?, hsalida=?, hllegada=?, dia=?, precio=? where id=?";
            //4. Preparar la consulta
            PreparedStatement pst = conexion.prepareStatement(consulta);
                    //con sus parametros o valores de envio
                   
                   pst.setString(1, request.getParameter("recorrido"));
                   pst.setString(2, request.getParameter("hs"));
                   pst.setString(3, request.getParameter("hll"));
                   pst.setString(4, request.getParameter("dia"));
                   pst.setString(5, request.getParameter("precio"));
                   pst.setInt(6, codigo);   
             //5. Ejecutar la consulta preparada

             pst.executeUpdate();
             response.sendRedirect("./view.jsp");
        } catch (Exception e) {
            out.print(e);
        }
        %>
    </body>
</html>

