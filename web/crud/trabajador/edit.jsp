<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<% int codigo=0; %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta charset="UTF-8">
        <title>Actualizar Datos</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    
    </head>
    <body>
        <div class="container">
            <div class="row vh-100 justify-content-center align-items-center">
                <div class="col-auto bg-dark p-5 w-50">
                    <%
                        try {
                                codigo = Integer.parseInt( request.getParameter("id") );
                                //1. Conexion a la BD
                                Connection  conexion = ConexionBD.retornaConexion();
                                //2. Preparar la consulta  SQL
                                PreparedStatement pst = conexion.prepareStatement("select * from trabajador where id=?");
                                pst.setInt(1, codigo);
                                //3. Ejecutar la consulta
                                ResultSet  Tabla = pst.executeQuery();
                                //4. Leer los datos
                                Tabla.next();
                    %>
                    <form action="./update.jsp" method="GET">
                        <h1 class="text-center text-light">Registrar</h1>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" name="id" value="<% out .print(Tabla.getString(1)); %>">
                        </div>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" name="nom" value="<% out .print(Tabla.getString(2)); %>">
                        </div>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" name="ape" value="<% out .print(Tabla.getString(3)); %>">
                        </div>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" name="dni" value="<% out .print(Tabla.getString(4)); %>">
                        </div>
                        <div class="input-group p-2">
                            <input type="text" class="form-control" name="user" value="<% out .print(Tabla.getString(5)); %>">
                        </div>
                        <div class="input-group p-2">
                            <input type="password" class="form-control" name="pass" value="<% out .print(Tabla.getString(6)); %>">
                        </div>
                        <input type="submit" class="btn btn-success w-100" value="ACTUALIZAR">
                    </form>
                    <%                                
                            } catch (Exception e) {//Atrapar el Error
                                out.print(e);
                            }        
                    %> 
                </div>
            </div>
            
        </div>
    </body>
</html>
