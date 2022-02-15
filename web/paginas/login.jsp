<!DOCTYPE html>
<html lang="es">
    <head>
        <title>Iniciar Sesión</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="../css/login.css"/>
    </head>
    <body>
        <div class="container">
            <div class="row vh-100 justify-content-center align-items-center">
                <div class="col-auto bg-dark p-5">
                    <form action="../controllers/ingresar.jsp" method="POST">
                        <h1 class="text-center text-light">Iniciar Sesión</h1>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" placeholder="USUARIO" name="user">
                        </div>
                        <div class="input-group p-2">
                            <input type="password" class="form-control" placeholder="CONTRASEÑA" name="pass">
                        </div>
                        <input type="submit" class="btn btn-success w-100" value="INGRESAR">
                    </form>
                </div>
            </div>
        </div>
        
    </body>
</html>
