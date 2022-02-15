<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>Reservas</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    
    </head>
    <body>
        <nav class="navbar navbar-expand-lg bg-dark navbar-dark navbar-custom fixed-top">
            <div class="container px-5">
                <a class="navbar-brand" href="#">Perú Travel Express</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav ms-auto">
                        <li class="nav-item">
                            <a class="nav-link" href="../panel.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../../controllers/cerrar.jsp" >Cerrar Sesión</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#" >
                                <i class="bi bi-person-circle"></i>
                                <%
                                    String  u=null;
                                    HttpSession  elemento = request.getSession();
                                    //Validar si l avariable del objeto session tiene dato
                                    if (elemento.getAttribute("variable")==null)
                                            response.sendRedirect("login.jsp");
                                    else {
                                            u = (String) elemento.getAttribute("variable");
                                            out.print(u);
                                    }
                                %>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>
                            <div class="container" style="margin-top: 90px;">
                                <h1 class="text-center">PANEL DE LAS RESERVAS</h1>
                            </div>
        
        <%
            try { 
                    //cambiar en pst 
                    Connection conexion = ConexionBD.retornaConexion();
                    PreparedStatement  pst = conexion.prepareStatement("Select * from reserva");
                    ResultSet Tabla =pst.executeQuery();
                    out.print("<div class='container mt-5 mb-5'>");
                    out.print("<table  class='table table-hover text-center' >");
                    out.print("<tr class='table-dark text-center'>");
                    out.print("<th>ID  <th>ID TURISTA <th>ID PAQUETE <th>CANTIDAD DE PERSONAS <th colspan=2>ACCIONES");
                    while (Tabla.next()) {                          
                            out.print("<tr>");
                            out.print("<td>"+Tabla.getObject("id"));
                            out.print("<td>"+Tabla.getObject("idturista"));
                            out.print("<td>"+Tabla.getObject("idpaquete"));
                            out.print("<td>"+Tabla.getObject("cantidad"));
                            out.print("<td> <a href=\"./delete.jsp?id="+Tabla.getObject("id")+"\" class='btn btn-danger'> eliminar </a> ");
                     }
                    out.print("</table>");
                    out.print("</div>");
                } catch (Exception e) {
                    out.print(e);
                } 
        %>
    </body>
</html>
