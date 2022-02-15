<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String u = request.getParameter("user");
            String p = request.getParameter("pass");
            
            Connection conexion = ConexionBD.retornaConexion();
            Statement st = conexion.createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM trabajador WHERE contrasena='"+p+"' and usuario='"+u+"'");
            System.out.println(rs);
            
            if (rs.next()) {
                HttpSession  elemento = request.getSession();
                elemento.setAttribute("variable", u);
                response.sendRedirect("../crud/panel.jsp");
            } else{
                response.sendRedirect("../crud/login.html");
            }
        %>
    </body>
</html>
