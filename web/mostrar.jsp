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
        <!--Header -->
        <nav id="header" class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand font-weight-bolder" href="index.jsp">
                <img src="./img/logo.png" alt="HY logo">
                Hampi Yura!
            </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbar">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item">
                        <a class="nav-link"  ref="#nosotros">Nosotros <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="#historia">Historia de éxito <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item ">
                        <a class="nav-link" href="socios.jsp">Socios<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link font-weight-bolder text-hy" href="#" >Únete a la comunidad <span class="sr-only">(current)</span></a>
                    </li>                   
                </ul>                
            </div>
        </nav>
        <!--/Header -->
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
                                <div class="col-md-6 offset-md-6 text-center text-md-right">
                                    <h1>¿Cuál es tu síntoma?</h1>

                                    <form  action="mostrar" method="post">               
                                        <input type="submit" value="Bronquitis" name="sintomas">
                                        <input type="submit" value="Muscular" name="sintomas">
                                        <input type="submit" value="Vista Irritada" name="sintomas">
                                        <input type="submit" value="Ulceras Estomacales" name="sintomas">
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Main -->  
        <!-- Footer -->
        <footer id="footer" class="pb-4 pt-4">
            <div class="container">
                <div class="row text-center">
                    <div class="col-12 col-lg">
                        <a href="#">Preguntas frecuentes</a>
                    </div>
                    <div class="col-12 col-lg">
                        <a href="#">Contáctanos</a>
                    </div>
                    <div class="col-12 col-lg">
                        <a href="#">Prensa</a>
                    </div>
                    <div class="col-12 col-lg">
                        <a href="#">Términos y Condiciones</a>
                    </div>
                    <div class="col-12 col-lg">
                        <a href="#">Privacidad</a>
                    </div>
                </div>
            </div>
        </footer>
        <!-- /Footer -->

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

    </body>
</html>
