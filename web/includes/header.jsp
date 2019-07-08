<%
HttpSession ses = request.getSession();

String nombre = "--";
if (ses != null) {
    nombre = (String)ses.getAttribute("nom");
}
%>

<!--Header -->
        <nav id="header" class="navbar navbar-expand-lg navbar-light">
            <a class="navbar-brand font-weight-bolder" href="index.jsp">
                <img src="./img/logo.png" alt="HY logo">
                Hampi Yura! <% out.print(nombre); %>
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

                    <li class="nav-item">
                        <a class="nav-link font-weight-bolder text-hy" href="#" ><%= nombre %><span class="sr-only">(current)</span></a>
                    </li>

                    <a href="controlLogin?accion=Salir" class="dropdown-item">Salir</a>

                </ul>
            </div>
        </nav>
        <!--/Header -->