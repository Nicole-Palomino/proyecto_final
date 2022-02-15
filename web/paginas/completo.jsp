<%@page session="true" %>
<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Perú Travel Express</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        
    </head>
    <body>
        <div class="container mt-5">
            <div class="container mt-5">
                <h3 class="text-center">SU RESERVA SE REALIZO CON EXITO!</h3>
                <h3 class="text-center">
                    GRACIAS POR SU PREFERENCIA 
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
                </h3>
                <div class="container-fluid mt-5 h-100 justify-content-center">
                    <div class="row w-100 align-items-center">
                        <div class="col text-center">
                            <a class="btn btn-success" href="./principal.jsp">Ir al inicio</a>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </body>
</html>
