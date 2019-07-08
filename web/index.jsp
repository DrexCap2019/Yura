<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta http-equiv="Content-Type" content="text/html;  charset=utf-8">
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
               <!--/     
                   <li class="nav-item">
                        <a class="nav-link font-weight-bolder text-hy" href="#" >${nom}<span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link font-weight-bolder text-hy" href="#" >${contraseña}<span class="sr-only">(current)</span></a>
                    </li>
                    <a href="controlLogin?accion=Salir" class="dropdown-item">Salir</a>-->
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
                                    <h1>Hampi Yura</h1>
                                    <p class="d-none d-md-block">Brindamos todo para tu bienestar. Puedes adquirirlos fácilmente 
                                        en nuestro buscador por síntomas. Solicita el tipo de envío que desees y recíbelos en poco tiempo.
                                    </p>
                                    <a href="#productos" class="btn btn-hy">Productos</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Main -->
        <!-- Productos -->
        <section id="productos">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-12 col-lg-6 pl-0 pr-0">
                        <img src="./img/productos.jpg" alt="medicamentos">
                    </div>
                    <div class="col-12 col-lg-6 pt-4 pb-4">
                        <h2>¿Qué deseas tratar?</h2>
                        <p>
                            Elije un síntoma y te daremos nuestras alternativas.
                        </p>
                        <a href="loginCliente.jsp" class="btn btn-hy">Buscar por síntoma</a>
                    </div>
                </div>
            </div>
        </section>
        <!-- /Productos -->
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
    
