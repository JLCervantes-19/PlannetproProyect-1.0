<%-- 
    Document   : paqbasic
    Created on : 16 abr 2024, 7:26:03
    Author     : macuser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>PlannetPro-Paquete Max Info</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon-removebg-preview.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/apple-icon.ico">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">
    
</head>
<style>
    .dropdown-menu {
    right: 0; /* Alinear el panel emergente con el borde derecho */
    left: auto; /* Reiniciar el ajuste izquierdo */
    max-width: 400px; /* Opcional: establecer un ancho máximo */
    overflow: hidden; /* Opcional: ocultar el contenido que se desborde */
}
</style>
<body>
    <!-- Start Top Nav -->
     <nav class="navbar navbar-expand-lg navbar-light shadow">
       <div class="container d-flex justify-content-between align-items-center" style="width :100%">
            
            <div class="row flex-grow-1">
                <div class="col-12 col-lg-3">
                    <a class="navbar-brand text-success logo h1 align-self-center" href="index.jsp">
                    PlannetPro
                    </a> 
                </div>
                <div class="col-12 col-lg-8 mt-lg-3">
                    <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
                        <div class="flex-fill">
                            <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto ms-left">
                                <li class="nav-item ms-left">
                                    <a class="nav-link" href="index.jsp">Inicio</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="Paquetes.jsp">Paquetes</a>
                                </li>
                                        <li class="nav-item">
                                    <a class="nav-link" href="Galeria.jsp">Galeria</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="ProductosList.jsp">Productos</a>
                                </li>
                               <li class="nav-item">
                                    <a class="nav-link" href="ListaEventos.jsp">Mis Eventos</a>
                                </li> 
                              </ul>
                        </div>

                            <% String Correo = (String) request.getSession().getAttribute("Correo"); %>
                            
                        
                    </div>  
                </div>
                <div class="d-flex col-12 col-lg-1  justify-content-between">
                    
                    <button class=" navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    
                    <div class="mt-0 mt-lg-3">
                        <div class="dropdown">
                          <button class="btn btn-danger dropdown-toggle" type="button" id="navbarDropdown" aria-haspopup="true" aria-expanded="false" >
                            Cerrar Sesión
                          </button>

                          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#"><%= Correo %></a>
                            <a class="dropdown-item" href="#"></a>
                               <div class="dropdown-divider"></div>
                            <a class="dropdown-item" href="AlertCierre.jsp">Cerrar Sesion</a>
                          </div>
                        </div>
                    </div>
                    <script>
              document.addEventListener("DOMContentLoaded", function() {
                document.getElementById("navbarDropdown").addEventListener("click", function(event) {
                  if (event.target.classList.contains("dropdown-toggle")) {
                    var dropdownMenu = event.target.nextElementSibling;
                    dropdownMenu.classList.toggle("show");
                  }
                });

                // Cerrar la lista desplegable cuando se hace clic fuera de ella
                window.addEventListener("click", function(event) {
                  if (!event.target.matches(".dropdown-toggle")) {
                    var dropdowns = document.getElementsByClassName("dropdown-menu");
                    for (var i = 0; i < dropdowns.length; i++) {
                      var openDropdown = dropdowns[i];
                      if (openDropdown.classList.contains("show")) {
                        openDropdown.classList.remove("show");
                      }
                    }
                  }
                });
              });
            </script>
                </div>
                
                              
                
                
            
           
                
                               
            </div>
  
            
            
        </div>
    </nav>
    <!-- Close Header -->

    <!-- Modal -->
    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog modal-lg" role="document">
            <div class="w-100 pt-1 mb-5 text-right">
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="" method="get" class="modal-content modal-body border-0 p-0">
                <div class="input-group mb-2">
                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
                    <button type="submit" class="input-group-text bg-success text-light">
                        <i class="fa fa-fw fa-search text-white"></i>
                    </button>
                </div>
            </form>
        </div>
    </div>


    <!--  Container verde 
    <section class="bg-success py-5">
        <div class="container">
            <div class="row align-items-center py-5">
                <div class="col-md-8 text-white">
                    <h1>Escoge y Disfruta tu mejor paquete</h1>
                    <p>
                        En plannetPro estamos para servir aqui puedes tener acceso a el evento
                        que este de acuerdo a tus necesidades, cotiza tus necesidades e imformanos.
                    </p>
                </div>
                <div class="col-md-4">
                    <img src="assets/img/about-hero.svg" alt="About Hero">
                </div>
            </div>
        </div>
    </section>
        Container Verde -->
    <!-- Close Banner -->
    
    <!-- Start Section -->
        <section class="bg-light">        
        <div class="container py-5 mt-5">
                <!-- Por aquí está el error, podría ser de col o que no existe(consultar sobre cuantos container deben existir) -->
            <div class="row text-center py-5">
                <div class="col-12 col-md-12 col-lg-6 m-auto">
                    <a class="navbar-brand text-success logo h1 align-self-center" href="index.html">
                        ¡Paquetes Para ti!
                    </a>

                    <p>
                    <h5>¡Todo el mundo de la Organizacion de eventos en tus manos!</h5>

                </div>
            </div>

           <!-- Contenido-->

            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card">
                        <img class="card-img-top" src="./assets/img/3.png" alt="Card image cap">
                        <div class="card-body">
                            <p class="card-text"></p>
                        </div>
                    </div>
                </div>        
            </div>    

            <div class="row">
                <div class="card style">
                    <div class="card-body">
                        <h5 class="card-title">Lleva tu Experiencia al Siguiente Nivel con el Paquete Max</h5>
                        <p class="card-text">Nuestro Paquete Max es ideal para aquellos que buscan un equilibrio perfecto entre funcionalidad y costo. Incluye todas las ventajas del Paquete Basic, además de características adicionales que optimizarán tu experiencia. Con el Paquete Max, disfrutarás de mejoras significativas que te permitirán maximizar el valor de nuestros servicios.</p>
                        <h5 class="card-title">Incluye</h5>
                        <!--<a href="#" class="btn btn-primary">Incluye</a>-->
                    </div>
                </div>
                 
            </div>
            

            <div class="row text-center my-5 py-3 border" >
                <div class="col-12 col-md-12 col-lg-4 mb-4">
                    <div class="card d-inline-block" style="width: 18rem;">
                        <img src="./assets/img/NightSun_SPC089.png" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Luz  NightSun SPC089</h5>
                            <p class="card-text">Una luz dinámica y perfecta
Una luz para espacios como bares, discotecas y eventos en casa, dándole un toque especial en cada espacio que lo pongas.</p>
                            <!--<a href="#" class="btn btn-primary">Ir</a>-->
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-12 col-lg-4 mb-4">
                    <div class="card d-inline-block" style="width: 18rem;">
                        <img src="./assets/img/ddj-200-controladora.png" alt="...">
                        <div class="card-body">
                        <h5>Reloop Ready Controlador Dj</h5>
                        <p>Tan ligero como potente, tan compacto como versátil: el Reloop Ready equilibra la funcionalidad de primer nivel en un diseño práctico para que los DJs se desempeñen al más alto nivel mientras maximizan la portabilidad y minimizan el espacio.</p>
                            <!--<a href="#" class="btn btn-primary">Ir</a>-->
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-12 col-lg-4 mb-4">
                    <div class="card d-inline-block" style="width: 18rem;">
                        <img src="./assets/img/LED PAR SPC057I NigthSun.png" alt="...">
                        <div class="card-body">
                            <h5>Par LED NightSun SPC057i</h5>
                            <p>El SPC057i esta construido en una rígida carcasa de aluminio y ABS, lo que hace a esta luz ideal para ser usada por empresas de producción de eventos. El SPC057i es fabricado para ser una herramienta infaltable en tarimas y escenarios donde se quiera dar protagonismo a los efectos de luces.</p>
                            <!--<a href="#" class="btn btn-primary">Ir</a>-->
                        </div>
                    </div>
                </div>
            </div>
           
            <div class="sticky-top fixed-bottom d-flex justify-content-end">
                <div class="row text-center py-3">
                    <div class="col-12 col-lg-12 m-auto">
                        <form id="miFormulario" action="create_Evento.jsp" method="post">
                            <input type="hidden" id="seleccion" name="seleccion">
                            <button type="submit" onclick="enviarSeleccion()" class="btn btn-success" >SOLICITAR</button>
                        </form>
                    </div>
                </div>    
            </div>
            
        </div>
         <script>
    function enviarSeleccion() {
        // Aquí puedes obtener la selección del usuario, por ejemplo de un checkbox
        var seleccionUsuario = 2; // Esto es un ejemplo, debes obtener la selección del usuario según tu lógica
        
        // Asigna la selección al campo de entrada oculto
        document.getElementById("seleccion").value = seleccionUsuario;
        
        // Envía el formulario
        document.getElementById("miFormulario").submit();
    }
</script>   
    </section>
    <!-- End Section -->

    <!-- Start Brands
    <section class="bg-light py-5">
        <div class="container my-4">
            <div class="row text-center py-3">
                 
               
               
    </section>
    End Brands-->


    <!-- Start Footer -->
    <footer class="bg-dark" id="tempaltemo_footer">
        <div class="container">
            <div class="row">

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-success border-bottom pb-3 border-light logo">PlannetPro</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li>
                            <i class="fas fa-map-marker-alt fa-fw"></i>
                            
                        </li>
                        <li>
                            <i class="fa fa-phone fa-fw"></i>
                            <a class="text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                        </li>
                    </ul>
                </div>
               <!--  <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Products</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Luxury</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Wear</a></li>
                        <li><a class="text-decoration-none" href="#">Men's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Women's Shoes</a></li>
                        <li><a class="text-decoration-none" href="#">Popular Dress</a></li>
                        <li><a class="text-decoration-none" href="#">Gym Accessories</a></li>
                        <li><a class="text-decoration-none" href="#">Sport Shoes</a></li>
                    </ul>
                </div>

                <div class="col-md-4 pt-5">
                    <h2 class="h2 text-light border-bottom pb-3 border-light">Further Info</h2>
                    <ul class="list-unstyled text-light footer-link-list">
                        <li><a class="text-decoration-none" href="#">Home</a></li>
                        <li><a class="text-decoration-none" href="#">About Us</a></li>
                        <li><a class="text-decoration-none" href="#">Shop Locations</a></li>
                        <li><a class="text-decoration-none" href="#">FAQs</a></li>
                        <li><a class="text-decoration-none" href="#">Contact</a></li>
                    </ul>
                </div>

            </div> 
               

            <div class="row text-light mb-4">
                <div class="col-12 mb-3">
                    <div class="w-100 my-3 border-top border-light"></div>
                </div>
                <div class="col-auto me-auto">
                    <ul class="list-inline text-left footer-icons">
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a rel="nofollow" class="text-light text-decoration-none" target="_blank" href="http://fb.com/templatemo"><i class="fab fa-facebook-f fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.instagram.com/"><i class="fab fa-instagram fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://twitter.com/"><i class="fab fa-twitter fa-lg fa-fw"></i></a>
                        </li>
                        <li class="list-inline-item border border-light rounded-circle text-center">
                            <a class="text-light text-decoration-none" target="_blank" href="https://www.linkedin.com/"><i class="fab fa-linkedin fa-lg fa-fw"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-auto">
                    <label class="sr-only" for="subscribeEmail">Email address</label>
                    <div class="input-group mb-2">
                        <input type="text" class="form-control bg-dark border-light" id="subscribeEmail" placeholder="Email address">
                        <div class="input-group-text btn-success text-light">Subscribe</div>
                    </div>
                </div>
            </div>-->
        </div>

        <div class="w-100 bg-black py-3">
            <div class="container">
                <div class="row pt-2">
                    <div class="col-12">
                        <p class="text-left text-light">
                            Copyright &copy; 
                            | Designed by <a rel="sponsored" href="https://templatemo.com/page/1" target="_blank">PlannetPro</a>
                        </p>
                    </div>
                </div>
            </div>
        </div>

    </footer>
    <!-- End Footer -->

    <!-- Start Script -->
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    <!-- End Script -->
</body>

</html>

