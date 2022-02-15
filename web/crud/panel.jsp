<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Administración</title>
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
                            <a class="nav-link" href="./panel.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="../controllers/cerrar.jsp" >Cerrar Sesión</a>
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
            <div class="row mt-5">
                <div class="col-md-4">
                    <div class="card-body">
                        <h5 class="card-title">
                            CLIENTES
                        </h5>
                        
                        <a href="./cliente/view.jsp" class="btn btn-primary">Ir a la sección</a>
                    </div>
                </div>                    
                                    
                <div class="col-md-4">
                    <div class="card-body">
                        <h5 class="card-title">
                            TURISTA
                        </h5>
                        
                        <a href="./turista/view.jsp" class="btn btn-primary">Ir a la sección</a>
                    </div>               
                </div>                    
                                    
                <div class="col-md-4">
                   <div class="card-body">
                        <h5 class="card-title">
                            PAQUETES
                        </h5>
                        
                       <a href="./paquete/view.jsp" class="btn btn-primary">Ir a la sección</a>
                    </div>                     
                </div>                    
            </div>          
            
            <div class="row mt-5">
                <div class="col-md-4">
                   <div class="card-body">
                        <h5 class="card-title">
                            RESERVAS
                        </h5>
                        
                       <a href="./reserva/view.jsp" class="btn btn-primary">Ir a la sección</a>
                    </div>                     
                </div> 
                
                <div class="col-md-4">
                   <div class="card-body">
                        <h5 class="card-title">
                            TRABAJADOR
                        </h5>
                        
                       <a href="./trabajador/view.jsp" class="btn btn-primary">Ir a la sección</a>
                    </div>                     
                </div>
            </div>
        </div>                    
    </body>
</html>
