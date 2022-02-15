<%@page session="true" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Perú Travel Express</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        <link rel="stylesheet" href="../css/panel.css"/>
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
                            
        <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2" aria-label="Slide 3"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="3" aria-label="Slide 4"></button>
                <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="4" aria-label="Slide 5"></button>
            </div>
            <div class="carousel-inner" >
                <div class="carousel-item active" data-bs-interval="10000">
                    <img src="../img/Caral.jpg" class="d-block w-100 images" alt="Caral">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Ciudad Sagrada de Caral</h5>
                    </div>
                </div>
                <div class="carousel-item" data-bs-interval="2000">
                    <img src="../img/Ica.jpg" class="d-block w-100 images" alt="Ica">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Departamento de Ica</h5>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../img/Islas Balelstas.jpg" class="d-block w-100 images" alt="Islas Ballestas">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Islas Ballestas</h5>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../img/LNazca.jpg" class="d-block w-100 images" alt="Lineas de Nazca">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Líneas de Nazca</h5>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="../img/Parapente Paracas.jpg" class="d-block w-100 images" alt="Paracas">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Paracas</h5>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        
        <section class="pt-5 pb-5">
            <div class="container mb-3">
                <h3 class="text-center fw-bold">Tours en Perú, Full Day desde Lima, Paquetes Turísticos, Turismo de Aventura</h3>
                <p class="text-center">¡Nosotros nos encargamos de organizar tus próximas vacaciones!</p>
            </div>
            <div class="container mt-5">
                <div class="row mt-5">
                    <h2 class="fw-bold" style="color: #ee583e;">
                        <i class="bi bi-tags-fill"></i> Paquetes Turísticos
                    </h2>
                </div>
                <div class="row">
                    <div class="col-md-4">
                        <img src="https://turismoi.pe/uploads/photo/photo_file/25998/optimized_2195_06.JPG" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title">
                                Aventuras en el desierto con carros areneros y realizar sandboarding
                            </h5>
                            <p class="card-text fw-bold fs-4" style="color: #1a5683;">
                                S/ 199.90 <span style="color: #ee583e;">soles</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <img src="https://c1.staticflickr.com/4/3931/33302454452_75a08ee734_h.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">
                                Tour maritimo por las islas Ballestas y paseo libre por la Bahia de Paracas
                            </h5>
                            <p class="card-text fw-bold fs-4" style="color: #1a5683;">
                                S/ 310.90 <span style="color: #ee583e;">soles</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <img src="https://th.bing.com/th/id/OIP.oD0RQ_c28nI_6XABPUrqHwHaFj?pid=ImgDet&rs=1" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">
                                Visita a los centros arqueologicos de Caral y Bandurria, con paradas en restaurantes
                            </h5>
                            <p class="card-text fw-bold fs-4" style="color: #1a5683;">
                                S/ 410.00 <span style="color: #ee583e;">soles</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="container mt-5">
                <div class="row">
                    <div class="col-md-4">
                        <img src="https://media.tacdn.com/media/attractions-splice-spp-360x240/07/8a/79/a8.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">
                                Sobrevolar las lineas de Nazca
                            </h5>
                            <p class="card-text fw-bold fs-4" style="color: #1a5683;">
                                S/ 345.90 <span style="color: #ee583e;">soles</span>
                            </p>
                        </div>
                    </div>
                    <div class="col-md-4">
                        <img src="https://th.bing.com/th/id/R.420ddb0283be088bc3e803944407ebf6?rik=EZaZQx%2b2djvGHg&riu=http%3a%2f%2fwww.cuscotraveltour.com%2fwp-content%2fuploads%2f2019%2f02%2fparacas-ica-nazca-3.jpg&ehk=XLzPfHt5FDhjNu9cI50KDtJ%2bLFaKyi%2fFN6x%2fe76cITI%3d&risl=&pid=ImgRaw&r=0" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">
                                Recorrido de 3 dias en Paracas y Nazca
                            </h5>
                            <p class="card-text fw-bold fs-4" style="color: #1a5683;">
                                S/ 719.90 <span style="color: #ee583e;">soles</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
            
            <div class="container mt-5">
                <div class="row mt-5">
                    <h2 class="fw-bold p" style="color: #ee583e;">
                        <i class="bi bi-geo-alt-fill"></i> Nuestros Destinos
                    </h2>
                </div>
                <div class="row">
                    <div class="col-lg-3 col-md-6">
                        <img src="https://peru.viajandox.com/uploads/Ica_1.jpg" class="card-img-top">
                        <div class="card-body">
                            <h5 class="card-title fw-bold">Ica/Paracas</h5>
                            <p class="card-text">
                                Vive una experiencia de pura adrenalina con el tour de buggies y sandboard 
                                sobre las dunas de La Laguna de Huacachina. En Paracas conoce las maravillosas 
                                playas de la Reserva Nacional.  
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <img src="https://th.bing.com/th/id/OIP.uB3A3tNWZBhP7jmA7_gEmAHaD_?pid=ImgDet&rs=1" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title fw-bold">Arequipa</h5>
                            <p class="card-text">
                                En la "Ciudad Blanca" puedes apreciar el majestuoso Cañón del Colca, 
                                un atractivo turístico muy concurrido que tiene una profundidad de 4160mts 
                                ¿Qué esperas? ¡Ven y diviértete con nosotros!
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <img src="https://th.bing.com/th?id=OIF.YEsXqRqsX%2fe9NK82fNFBbg&pid=ImgDet&rs=1" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title fw-bold">Lima</h5>
                            <p class="card-text">
                                ¡Descubre lo que Lima tiene para ofrecerte! conoce La Plaza Mayor, 
                                la Catedral, el Centro histórico. Su gastronomía tan variada y exquisita 
                                hacen que sea la capital gastronómica.
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-6">
                        <img src="https://th.bing.com/th?id=OIF.IRG8uKPRnY%2fwfLgzCJZKNw&pid=ImgDet&rs=1" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title fw-bold">Cusco</h5>
                            <p class="card-text">
                                Conoce Machuppichu una de las maravillas del mundo y llénate de mucha energía. 
                                Descubre el Valle sagrado, Sacsayhuamán, Montaña de 7 Colores, Laguna 
                                Humantay, Maras Moray y mucho más!
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </section> 
        
        <footer class="bg-dark text-center text-lg-start">
            <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                <span class="text-light"> © 2022 Copyright:</span>
                <a class="text-light a" href="./principal.jsp">
                    Perú Travel Express
                </a>
            </div>
        </footer>            
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
    </body>
</html>
