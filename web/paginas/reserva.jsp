<%@page import="java.sql.*" %>
<%@page session="true" %>
<%@page import="utilitarios.ConexionBD" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Perú Travel Express - Reservaciones</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                            <a class="nav-link" href="./principal.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="./reserva.jsp">Reservar</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../controllers/sesion.jsp" >Cerrar Sesión</a>
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
            <div class="container mt-5">
                <h2 class="text-center">Datos personales</h2>
                <h3 class="text-center">Complete el formulario por favor</h3>
            </div>
            <div class="container">
                <form action="../controllers/turista.jsp" method="POST">
                    <div class="row mt-5">
                        <div class="col-6">
                            <div class="input-group p-2">
                                <input type="text" class="form-control" placeholder="NOMBRE" name="nom">
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="input-group p-2">
                                <input type="text" class="form-control" placeholder="APELLIDO" name="ape">
                            </div>
                        </div>
                    </div>
                    <div class="row mt-5">
                        <div class="col-6">
                            <div class="input-group p-2">
                                <input type="text" class="form-control" placeholder="DNI" name="dni">
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="input-group p-2">
                                <input type="text" class="form-control" placeholder="TELEFONO" name="cel">
                            </div>
                        </div>
                    </div>
                    <div class="row mt-5">
                        <div class="col-6">
                            <div class="input-group p-2">
                                <input type="email" class="form-control" placeholder="CORREO ELETRÓNICO" name="email">
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="input-group p-2">
                                <select name="nacion" class="form-select" aria-label="Default select example">
                                    <option selected>NACIONALIDAD</option>
                                    <option value="Colombia">Colombia</option>
                                    <option value="Perú">Peru</option>
                                    <option value="Argentina">Argentina</option>
                                    <option value="Mexico">Mexico</option>
                                    <option value="Estados Unidos">Estados Unidos</option>
                                    <option value="Bolivia">Bolivia</option>
                                    <option value="Brasil">Brasil</option>
                                    <option value="Chile">Chile</option>
                                    <option value="Venezuela">Venezuela</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="row mt-5">
                        <div class="col-6">
                            <div class="input-group p-2">
                                <input type="submit" class="btn btn-success" value="CONTINUAR">
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </body>
</html>
