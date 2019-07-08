/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conexiones;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author Alumno
 */
public class miConexion 
{
    private Connection conn;
    private PreparedStatement consulta;
    private ResultSet rs;
    
    String base, usuario, passw;

    public miConexion() 
    {
        this.base="bdyura";
        this.usuario="root";
        this.passw="";
    }
    
    public void conectar() throws SQLException
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            this.conn =DriverManager.getConnection("jdbc:mysql://localhost:3306/"+this.base, this.usuario, this.passw);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(miConexion.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public void desconectar() throws SQLException
    {
        this.conn.close();
    }
    
    public ResultSet mostrar_datos(String sint) throws SQLException
    {
        this.conectar();
        this.consulta=this.conn.prepareStatement("select * from medicamentos where sintomas='"+sint+"'");
        this.rs=this.consulta.executeQuery();
        return rs;
    }

    public ResultSet mostrar_todos() throws SQLException {
        this.conectar();
        this.consulta=this.conn.prepareStatement("select * from medicamentos");
        this.rs=this.consulta.executeQuery();
        return rs;
    }

    public boolean insertar2_BD(int iid, String nnom, String mmar, String ssint, int sstoc, String ddes, double  ppre) throws SQLException 
    {
        this.conectar();
        try
        {
            this.consulta=this.conn.prepareStatement("insert into medicamentos"
            +"(idmedic, nombre, marca, sintomas, stock, descripcion, precio)"+
                     "values('"+iid+"','"+nnom+"','"+mmar+"','"+ssint+"','"+sstoc+"','"+ddes+"','"+ppre+"')");
            boolean resultado=this.consulta.execute();
           return true;
        } 
        catch(SQLException ex)
        {
            out.println(ex.getMessage());
            return false;
        }
    }
    
    public ResultSet actualizar_obtener_datos(int id) throws SQLException 
    {
        this.conectar();        
        this.consulta=this.conn.prepareStatement("select * from medicamentos where idmedic='"+id+"'" );
        this.rs=this.consulta.executeQuery();
        return rs;   

    }
        //"select * from medicamentos where idmedic='"+id+"'"
    public  boolean actualizar_BD(int iid, String nnom, String mmar, String ssint,
            int sstoc, String ddes, double  ppre) throws SQLException
    {
         this.conectar();
         try 
         {
             this.consulta=this.conn.prepareStatement("update medicamentos set nombre='"
                     +nnom+"',marca='"+mmar+"', sintomas='"+ssint+"',stock='"+sstoc+"',descripcion='"+ddes
                     +"',precio='"+ppre+"' where idmedic='"+iid+"'");
             boolean resultado=this.consulta.execute();
             return  true;
         } catch (Exception e) {
             return false;
         }
     }
    
    public boolean eliminar_BD(int iid) throws SQLException 
    {
        this.conectar();
        try
        {
            this.consulta=this.conn.prepareStatement("delete from medicamentos where idmedic="+iid);
            
            boolean resultado= this.consulta.execute();
           return true;
        } 
        catch(SQLException ex)
        {
            out.println(ex.getMessage());
            return false;
        }
    }
}
