<%@page import="java.sql.*" %>
<%@page import="utilitarios.ConexionBD" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<% int codigo=0; %>
<!DOCTYPE html>
<html>
    <head>
        <title>Reservaciones</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
        
    </head>
    <body>
        
        <%
            
                Connection conexion = ConexionBD.retornaConexion();
                String sql="INSERT INTO turista values(null,?,?,?,?,?,?)";
                PreparedStatement pst = conexion.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
                
                
                pst.setString(1, request.getParameter("nom"));
                pst.setString(2, request.getParameter("ape"));
                pst.setString(3, request.getParameter("dni"));
                pst.setString(4, request.getParameter("cel"));
                pst.setString(5, request.getParameter("email"));
                pst.setString(6, request.getParameter("nacion"));
                
                pst.executeUpdate(); 
                
                ResultSet rs = pst.getGeneratedKeys();
                
                if (!rs.next()) throw new RuntimeException("no devolvió el ID");
                int id = rs.getInt(1);
                
                
        %>
        
        <div class="container" style="margin-top: 90px;">
            <div class="container mt-5">
                <h2 class="text-center">Reservaciones</h2>
                <h4 class="text-center">Elija su paquete</h4>
            </div>
            <form action="../paginas/paquete.jsp" method="post">
                <div class="row mt-5">
                    <div class="col-6 mt-5">
                        <div class="input-group p-2">
                            <input type="text" class="form-control" name="turista" value="<%=(id)%>">
                        </div>
                    </div>
                    <div class="col-6 mt-5">
                        <div class="input-group p-2">
                            <select class="form-select" aria-label="Default select example" name="paquete">

                    <%
                        try {
                            Connection conexiones = ConexionBD.retornaConexion();
                            PreparedStatement  ps = conexiones.prepareStatement("Select * from paquete");
                            ResultSet Tabla =ps.executeQuery();
                            while (Tabla.next()) { 
                                out.print("<option value='"+Tabla.getObject("id")+"'>");
                                out.print(Tabla.getObject(2));
                            }
                            out.print("<option>");
                    %>
                    
                            </select>
                        </div>
                    </div> 
                    <%
                      
                        } catch (Exception e) {
                        }
                    %>
                       
                </div>
                
                    <div class="row mt-5">
                        <div class="col-6">
                            <div class="input-group p-2">
                                <input type="number" class="form-control" name="cant" placeholder="CANTIDAD DE PERSONAS" min="1" max="20">
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="input-group p-2">
                                <input type="submit" class="form-control btn-success" value="Continuar">
                            </div>
                        </div>
                    </div>
            </form>    
        </div>
        
    </body>
</html>
