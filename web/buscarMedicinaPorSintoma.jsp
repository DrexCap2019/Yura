<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="includes/head.jsp" %>
    <body>
        <%@include file="includes/header.jsp" %>
        <!-- Main -->
        <section id="main">
            <div id="carousel" class="carousel slide carousel-fade" data-ride="carousel" data-pause="false">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="./img/background.jpg" class="d-block w-100" alt="Yura 1">
                    </div>
                    <div class="carousel-item">
                        <img src="./img/background2.jpg" class="d-block w-100" alt="Yura 2">
                    </div>
                    <div class="carousel-item">
                        <img src="./img/background3.jpg" class="d-block w-100" alt="Yura 2">
                    </div>
                    <div class="carousel-item">
                        <img src="./img/background4.jpg" class="d-block w-100" alt="Yura 2">
                    </div>                  
                    <div class="overlay">
                        <div class="container">
                            <div class="row align-items-center">
                                <div class="col-md-12 text-md-right">
                                    <h1>¿Cuál es tu síntoma?</h1>

                                    <form  action="mostrarPorSintoma" method="post">               
                                        <input class="btn btn-hy" type="submit" value="Bronquitis" name="sintomas">
                                        <input class="btn btn-hy" type="submit" value="Muscular" name="sintomas">
                                        <input class="btn btn-hy" type="submit" value="Vista Irritada" name="sintomas">
                                        <input class="btn btn-hy" type="submit" value="Ulceras Estomacales" name="sintomas">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Main -->  
        
        <%@include file="includes/footer.jsp" %>
        <%@include file="includes/js_libs.jsp" %>
        

    </body>
</html>
