<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Turista</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        
    </head>
    <body>
        <div class="container">
            <div class="row vh-100 justify-content-center align-items-center">
                <div class="col-auto bg-dark p-5 w-50">
                    <form action="./registrar.jsp" method="POST">
                        <h1 class="text-center text-light">Registrar</h1>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" placeholder="NOMBRES" name="nom">
                        </div>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" placeholder="APELLIDO" name="ape">
                        </div>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" placeholder="DNI" name="dni">
                        </div>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" placeholder="TELEFONO" name="cel">
                        </div>
                        <div class="input-group p-2">
                            <input type="email" class="form-control" placeholder="CORREO ELECTRONICO" name="email">
                        </div>
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
                        <input type="submit" class="btn btn-success w-100" value="REGISTRAR">
                    </form>
                </div>
            </div>
            
        </div>
    </body>
</html>