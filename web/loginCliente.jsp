<%--
    Document   : mostrartodos1
    Created on : 24/09/2018, 07:22:37 PM
    Author     : LAB-USR-AQ265-A0805
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="resources/css_1/estilos_2.css"
    </head>
    <body>

        <div class="login-box">
            <img class="avatar" src="img/login.jpg" alt="Logo de yura"  >

            <h1>Login Cliente</h1>
            <form action="controLogin" method="POST">


                <label for="username">Username:</label>
                <input type="text" name="txtnom" placeholder="Ingrese Correo">

                <label for="password">Password:</label>
                <input type="password" name="txtcon" placeholder="Ingrese Contraseña">

                <input type="submit" name="accion" value="Ingresar" >

                <a href="#">Lost your password?</a>
                <br>
                <a href="ClienteRegistro.xhtml">Dont´t have an account?</a>


            </form>
        </div>
    </body>

</html>



