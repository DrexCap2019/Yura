

<%@page import="java.sql.ResultSet"%>
<%@page import="conexiones.miConexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <link rel="stylesheet" href="./css/estilos.css">
        <title>Hampi Yura</title>
    </head>
    <body>

        <h2>Lista de Medicamentos</h2>
        <table border="1" width="100%">
            <thead>
                <tr>
                    <td> ID</td>
                    <td> Nombre</td>
                    <td> Marca</td>
                    <td> Sintomas</td>
                    <td>Stock</td>
                    <td>Descripcion</td>
                    <td>Precio</td>
                    <td colspan=2>ACCIONES</td>
                </tr>
            </thead>
            <tbody>
                <% miConexion consulta = new miConexion();
                    ResultSet rs;

                    rs = consulta.mostrar_todos();
                    while (rs.next()) {
                        out.println("<tr>"
                                + "<td>" + rs.getInt("idmedic") + "</td>"
                                + "<td>" + rs.getString("nombre") + "</td>"
                                + "<td>" + rs.getString("marca") + "</td>"
                                + "<td>" + rs.getString("sintomas") + "</td>"
                                + "<td>" + rs.getInt("stock") + "</td>"
                                + "<td>" + rs.getString("descripcion") + "</td>"
                                + "<td>" + rs.getDouble("precio") + "</td>"
                                + "<td>" + "<a href='editar2.jsp?id=" + rs.getInt("idmedic") + "'>Editar</a>" + "</td>"
                                + "<td>" + "<a href='eliminar?id=" + rs.getInt("idmedic") + "'>Eliminar</a>" + "</td>"
                                + "</tr>"
                                + "</tbody>");
                    }
                %>
        </table>
        <br><br>
        <input type="button" value="Volver" onclick="location.href = 'index.jsp'">


        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
    <body>

    </body>
</html>
