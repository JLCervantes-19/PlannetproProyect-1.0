<%-- 
    Document   : index
    Created on : 6 abr 2024, 1:16:11
    Author     : macuser
--%>
<%@page import="com.mycompany.Controller.UsuarioPlannetPro"%>
<%@page import="com.mycompany.Controller.Usuario"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <title>PlannetPro</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="assets/img/apple-icon-removebg-preview.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/apple-icon.ico">
    <link rel="icon" href="assets/img/apple-icon.ico" type="image/x-icon">

    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/templatemo.css">
    <link rel="stylesheet" href="assets/css/custom.css">


    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="assets/css/fontawesome.min.css">

</head>
<style>
    .dropdown-menu {
    right: 0; /* Alinear el panel emergente con el borde derecho */
    left: auto; /* Reiniciar el ajuste izquierdo */
    max-width: 400px; /* Opcional: establecer un ancho m�ximo */
    overflow: hidden; /* Opcional: ocultar el contenido que se desborde */
}
</style>
<body>
    <!-- Start Top Nav -->
    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
        <div class="container text-light">
            <div class="w-100 d-flex justify-content-between">
                <div>
                    <i class="fa fa-envelope mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">info@company.com</a>
                    <i class="fa fa-phone mx-2"></i>
                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">010-020-0340</a>
                </div>
                <div>
                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
                </div>
            </div>
        </div>
    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
    <nav class="navbar navbar-expand-lg navbar-light shadow me-auto">
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
                            <p></p> 
                        </div>

                            <% String Correo = (String) request.getSession().getAttribute("Correo"); %>
                            <% String idString = (String) request.getSession().getAttribute("ID"); %>
                        
                    </div>  
                </div>
                <div class="d-flex col-12 col-lg-1  justify-content-between">
                    
                    <button class=" navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    
                    <div class="mt-0 mt-lg-3">
                        <div class="dropdown">
                          <button class="btn btn-danger dropdown-toggle" type="button" id="navbarDropdown" aria-haspopup="true" aria-expanded="false" >
                            Cerrar Sesi�n
                          </button>

                          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="#"><%= Correo %></a>
                            <a class="dropdown-item" href="#"></a>
                               <div class="dropdown-divider"></div>
                            <a id="logout-btn" class="dropdown-item" href="AlertCierre.jsp">Cerrar Sesi�n</a>

                          </div>
                        </div>
                    </div>
                            <script>
            document.getElementById('logout-btn').addEventListener('click', function(event) {
        // Prevenir comportamiento por defecto del enlace
            event.preventDefault();

    // Borrar datos de sesi�n (puede variar seg�n tu implementaci�n)
            sessionStorage.clear();
            localStorage.clear();

        // Redirigir a la p�gina de inicio de sesi�n
    window.location.href = 'AlertCierre.jsp';
});

// Deshabilitar el almacenamiento en cach� para evitar que se pueda regresar a la p�gina anterior
window.addEventListener('load', function() {
    // No almacenar en cach�
    if ('serviceWorker' in navigator) {
        navigator.serviceWorker.getRegistrations().then(function(registrations) {
            for(let registration of registrations) {
                registration.unregister();
            }
        });
    }
    window.history.pushState(null, null, window.location.href);
    window.onpopstate = function() {
        window.history.go(0);
    };
});

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



    <!-- Start Banner Hero -->
    <div id="template-mo-zay-hero-carousel" class="carousel slide" data-bs-ride="carousel">
        <ol class="carousel-indicators align-items-end">
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="0" class="active"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="1"></li>
            <li data-bs-target="#template-mo-zay-hero-carousel" data-bs-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
            <div class="carousel-item active">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                               <img class="img-fluid" src="./assets/img/apple-icon.png" alt=""> <!-- Imagen 1 logo -->
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left align-self-center">
                                <br>
                               
                                <h1 class="h1 text-success"><b>Bienvenidos a</b> PlannetPro <a>${NombreUsu}</a></h1>
                                <h3 class="h2">�Que te ofrecemos en nuestra plataforma?</h3>
                                <p>
                                    Somos una plataforma innovadora que se especializa en la creaci�n y ejecuci�n de montajes para eventos musicales de todos los tama�os y estilos. Nuestro objetivo es hacer que la organizaci�n de tu concierto sea una experiencia sin complicaciones y llena de creatividad.
En PlannetPro, nos enorgullece ofrecer una amplia gama de servicios que incluyen la planificaci�n y coordinaci�n de eventos, la selecci�n de artistas y bandas, la producci�n de escenarios y luces, el suministro de equipos de sonido y video, y mucho m�s.</span>
<!-- <a rel="sponsored" class="text-success" href="https://stories.freepik.com/" target="_blank">Freepik Stories</a>,
                                    <a rel="sponsored" class="text-success" href="https://unsplash.com/" target="_blank">Unsplash</a> and
                                    <a rel="sponsored" class="text-success" href="https://icons8.com/" target="_blank">Icons 8</a>. -->  
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/imagen-montaje-removebg-preview.png" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">�Que Ofrecemos?</h1>
                                <h3 class="h2">MONTAJES DE ESCENARIOS</h3>
                                <p>
                                    El escenario es el centro de atenci�n de cualquier evento, y su dise�o y decoraci�n pueden influir en la experiencia del p�blico. 
                                    Un escenario bien dise�ado puede mejorar la atm�sfera y la est�tica del evento, mientras que una mala disposici�n puede afectar negativamente la experiencia del p�blico.
                                </p>
                                <p>
                                    En PlannetPro, entendemos que cada evento es �nico. Por eso, nos enfocamos en la personalizaci�n y la flexibilidad para adaptarnos a las necesidades y deseos espec�ficos de nuestros clientes. 
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="carousel-item">
                <div class="container">
                    <div class="row p-5">
                        <div class="mx-auto col-md-8 col-lg-6 order-lg-last">
                            <img class="img-fluid" src="./assets/img/WhatsApp Image 2024-05-20 at 18.47.25.jpeg" alt="">
                        </div>
                        <div class="col-lg-6 mb-0 d-flex align-items-center">
                            <div class="text-align-left">
                                <h1 class="h1">ARTISTAS, BANDAS Y <center> MAS...</center></h1>
                               
                                <p>
                                 PlannetPro se enorgullece de ser una plataforma que ofrece una excelente vitrina para una amplia gama de artistas emergentes y establecidos. 
                                 Nuestra misi�n es proporcionar un escenario de calidad y profesionalismo para que los artistas puedan presentar su m�sica de una manera �nica y memorable.    
                                 </p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <a class="carousel-control-prev text-decoration-none w-auto ps-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="prev">
            <i class="fas fa-chevron-left"></i>
        </a>
        <a class="carousel-control-next text-decoration-none w-auto pe-3" href="#template-mo-zay-hero-carousel" role="button" data-bs-slide="next">
            <i class="fas fa-chevron-right"></i>
        </a>
    </div>
    <!-- End Banner Hero -->


    <!-- Start Categories of The Month -->
    <section class="container py-5">
        <div class="row text-center pt-3">
            <div class="col-lg-6 m-auto">
                <h1 class="h1">�Descubre el escenario perfecto para tu m�sica con PlannetPro!</h1>
               <!-- <p>
                    Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia
                    deserunt mollit anim id est laborum.
                </p> --> 
            </div>
            
        </div>

        <!-- Aqui van los planes a contratar -->
        <div class="row">
            

        <!-- Aqui van los planes a contratar -->
        <div class="row">

            <!-- Primera1 -->
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="paqbasic.jsp"><img src="./assets/img/2.png" class="rounded-circle img-fluid border"></a>
                <h5 class="text-center mt-3 mb-3">BASIC</h5>
<!--                <p class="text-center"><a class="btn btn-success">Explorar</a></p>-->
            </div>
            <!-- Primera1 -->
            <!-- Segunda -->
            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="paqmax.jsp"><img src="./assets/img/3.png" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">MAX</h2>
<!--                <p class="text-center"><a class="btn btn-success">Explorar</a></p>-->
            </div>
            <!-- Segunda -->
            <!-- Tercera -->

            <div class="col-12 col-md-4 p-5 mt-3">
                <a href="paqgold.jsp"><img src="./assets/img/Plannet_packca.png" class="rounded-circle img-fluid border"></a>
                <h2 class="h5 text-center mt-3 mb-3">GOLD</h2>
<!--                <p class="text-center"><a class="btn btn-success">Explorar</a></p>-->
            </div>
            <!-- Tercera -->
        </div>
    </section>
    <!-- End Categories of The Month -->


    <!-- Start Featured Product -->
    <section class="bg-light">
        <div class="container py-5">
            <div class="row text-center py-3">
                <div class="col-lg-6 m-auto">
                    <h1 class="h1">Plannets Contacts</h1>
                    <p>
                        �Esta es nuestra peque�a exposicion de artistas con ganas de mostrarse al mundo!
                        Estos hacen parte de la familia PlannetPro
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        <!-- Links -->
                         
                            <img src="./assets/img/Djs.png" class="card-img-top" alt="...">
                        
                        <div class="card-body">
                            <!-- commetn
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$00.000</li>
                            </ul>
                            -->
                            <!-- Links -->
                            <a href="" class="h2 text-decoration-none text-dark">DJ's</a>
                            <p class="card-text">
Mi nombre es DJx y estoy emocionado de estar aqu� hoy para compartir mi pasi�n por la m�sica con ustedes. Como DJ, mi objetivo es crear experiencias inolvidables a trav�s de la m�sica, llevando a la audiencia en un viaje sonoro que los haga bailar, cantar y disfrutar al m�ximo.                            </p>
                            <!--<p class="text-muted">Reviews (24)</p>-->
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        
                            <img src="./assets/img/Bandas.png" class="card-img-top" alt="...">
                        
                        <div class="card-body">
                            <!--
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                    <i class="text-muted fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$000.00</li>
                            </ul>
                            -->
                            <a href="" class="h2 text-decoration-none text-dark">Orquestas</a>
                            <p class="card-text">
Es un honor estar aqu� esta noche representando a OrquestaX. Somos un grupo de m�sicos apasionados y dedicados que nos esforzamos por llevar la belleza y la emoci�n de la m�sica cl�sica a audiencias de todas las edades y or�genes.                            </p>
                            <!--<p class="text-muted">Reviews (48)</p>-->
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-4 mb-4">
                    <div class="card h-100">
                        
                            <img src="./assets/img/Entreteni.png" class="card-img-top" alt="...">
                        
                        <div class="card-body">
                            <!--
                            <ul class="list-unstyled d-flex justify-content-between">
                                <li>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                    <i class="text-warning fa fa-star"></i>
                                </li>
                                <li class="text-muted text-right">$00.00</li>
                            </ul>
                            -->
                            <a href="" class="h2 text-decoration-none text-dark">Entretenimiento</a>
                            <p class="card-text">
                                un equipo de bailarines apasionados y dedicados que amamos compartir nuestra pasi�n por el baile con el mundo. 
                            </p>
                            <!--<p class="text-muted">Reviews (74)</p>-->
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- End Featured Product -->


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
                        </li>
                        <li>
                            <i class="fa fa-envelope fa-fw"></i>
                            <a class="text-decoration-none" href="plannetproproyect@gmail.com">plannetproproyect@gmail.com</a>
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
                            | Designed by <a rel="sponsored" href="https://templatemo.com/page/1" target="_blank">PlannetProTeam</a>
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
