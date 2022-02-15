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
                String sql="INSERT INTO turista values(null,?,?,?,?,?,?)";
                PreparedStatement pst = conexion.prepareStatement(sql);
                
                pst.setString(1, request.getParameter("nom"));
                pst.setString(2, request.getParameter("ape"));
                pst.setString(3, request.getParameter("dni"));
                pst.setString(4, request.getParameter("cel"));
                pst.setString(5, request.getParameter("email"));
                pst.setString(6, request.getParameter("nacion"));
                
                pst.executeUpdate(); 
                response.sendRedirect("./view.jsp");
            } catch (Exception e) {
                out.print(e);
            }
        %>
    </body>
</html>
