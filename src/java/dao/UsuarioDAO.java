
package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import Modelo.*;

public class UsuarioDAO extends dao
{
    public void     registrar(Cliente valor_usuario) throws SQLException
    {
        try {
            this.conectar();
            PreparedStatement pst;
            pst = this.getCn().prepareStatement("INSERT INTO cliente (Nombre, Dir,Telefono, Edad, Correo, Contraseña) VALUES(?,?,?,?,?,?)");
            pst.setString(1, valor_usuario.getNombre());
            pst.setString(2, valor_usuario.getDir());
            pst.setString(3, valor_usuario.getTelefono());
            pst.setString(4, valor_usuario.getEdad());
            pst.setString(5, valor_usuario.getCorreo());
            pst.setString(6, valor_usuario.getContraseña());

            pst.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally
        {
            this.Cerrar();
        }
    }
    
    
   public int validar(login logeo) throws SQLException
    {
   String nom, cod;
            ResultSet rs;
        try {
            this.conectar();
            PreparedStatement pst = this.getCn().prepareStatement("SELECT Correo, Contraseña from cliente ");
     
            rs = pst.executeQuery();
            
            while(rs.next())
            {
                nom =rs.getString(1);
                cod=rs.getString(2);
                
                if(logeo.getUsuario().equals(nom) && logeo.getContra().equals(cod)){
                      return 1;
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        finally{
            this.Cerrar();
        }
        return 0;
    }

    
}
