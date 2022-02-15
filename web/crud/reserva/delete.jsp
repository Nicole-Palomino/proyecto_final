<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
          try {//Analizar el código
              //1. Recuperar el código del libro, URL
              int clave= Integer.parseInt(request.getParameter("id"));
              //2. Conexion a la base de datos
              Connection conexion = ConexionBD.retornaConexion();
              //3. Preparar instrucción SQL
              PreparedStatement  pst = conexion.prepareStatement("delete from reserva where id=?");
              //Agregar un parametro a la instruccion
              pst.setInt(1, clave);
              //4. Ejecutar la instruccion
              pst.executeUpdate();
              //5. Volver a la página inicial
              response.sendRedirect("./view.jsp");
              } catch (Exception e) {
                  out.print(e);
              }
      %>
    </body>
</html>