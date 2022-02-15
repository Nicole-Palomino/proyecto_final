
package utilitarios;

import java.sql.*;
public class ConexionBD {
    public static Connection retornaConexion(){
        //variables
        String user = "admin";
        String pass = "";
        Connection cn = null;
        
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            //CAMBIAR LOS DATOS DE LA BASE DE DATOS 
            cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/proyecto",user,pass);
            System.out.println("Conexion satisfactoria");
        } catch (Exception e) {
            System.out.println(e);
        }
        return cn;
    }
}
