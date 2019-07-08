/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Date;

/**
 *
 * @author LUIS ANDRE
 */
public class Cliente {

    private int Id_Cli;
    private String Nombre;
    private String Dir;
    private String Telefono;
    private String Edad;
    private String Correo;
    private String Contraseña;

    public int getId_Cli() {
        return Id_Cli;
    }

    public void setId_Cli(int Id_Cli) {
        this.Id_Cli = Id_Cli;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDir() {
        return Dir;
    }

    public void setDir(String Dir) {
        this.Dir = Dir;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefonno) {
        this.Telefono = Telefonno;
    }

    public String getEdad() {
        return Edad;
    }

    public void setEdad(String Edad) {
        this.Edad = Edad;
    }

    public String getCorreo() {
        return Correo;
    }

    public void setCorreo(String Correo) {
        this.Correo = Correo;
    }

    public String getContraseña() {
        return Contraseña;
    }

    public void setContraseña(String Contraseña) {
        this.Contraseña = Contraseña;
    }
    
    
    
}
