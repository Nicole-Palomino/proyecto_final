<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrar Paquete Turístico</title>
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
                            <input type="text" class="form-control" placeholder="RECORRIDO" name="recorrido">
                        </div>
                        <div class="input-group p-2">
                            <input type="time" class="form-control" placeholder="HORA DE SALIDA" name="hs">
                        </div>
                        <div class="input-group p-2">
                            <input type="time" class="form-control" placeholder="HORA DE LLEGADA" name="hll">
                        </div>
                        <div class="input-group p-2">
                            <input type="date" class="form-control" placeholder="DIA" name="dia">
                        </div>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" placeholder="PRECIO" name="precio">
                        </div>
                        <input type="submit" class="btn btn-success w-100" value="REGISTRAR">
                    </form>
                </div>
            </div>
            
        </div>
    </body>
</html>