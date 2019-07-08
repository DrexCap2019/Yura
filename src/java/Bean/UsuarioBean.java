package Bean;

import dao.UsuarioDAO;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.faces.bean.ManagedBean;
import javax.faces.bean.RequestScoped;
import javax.faces.bean.ViewScoped;
import  java.io. *;  
import  javax.servlet. *;  
import  javax.servlet.http. *;  

//import javax.annotation.ManagedBean;
//import javax.faces.bean.RequestScoped;


import Modelo.*;
import javax.faces.application.FacesMessage;
import javax.faces.context.FacesContext;


//añadiendo anotaciones JSF
@ManagedBean
@ViewScoped


public class UsuarioBean 
{
    private Cliente  cliente = new Cliente();

    private login logeo = new login();
    
   public login getLogeo() {
        return logeo;
    }

    public void setLogeo(login logeo) {
        this.logeo = logeo;
    }
    
  public Cliente getCliente() {
        return cliente;
    }

    public void setCliente(Cliente cliente) {
        this.cliente = cliente;
    }
    
    
    public void registrar()
    {
         UsuarioDAO dao =  new UsuarioDAO();
        try {  
            dao.registrar(cliente);
        } catch (SQLException ex) {
            Logger.getLogger(UsuarioBean.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

      
    private List<medicina> lstUsuarios;

    public List<medicina> getLstUsuarios() {
        return lstUsuarios;
    }

    public void setLstUsuarios(List<medicina> lstUsuarios) {
        this.lstUsuarios = lstUsuarios;
    }

    
    
    
  
    
    
 

    
}
