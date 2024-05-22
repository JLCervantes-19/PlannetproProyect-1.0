<%-- 
    Document   : ProductosList
    Created on : 15 may 2024, 20:21:36
    Author     : macuser
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
 <title>PlannetPro-Paquetes Info</title>
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
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Formulario de Selección Múltiple</title>
        <link rel="stylesheet" href="styles.css">
</head>
<style>
    .dropdown-menu {
    right: 0; /* Alinear el panel emergente con el borde derecho */
    left: auto; /* Reiniciar el ajuste izquierdo */
    max-width: 400px; /* Opcional: establecer un ancho máximo */
    overflow: hidden; /* Opcional: ocultar el contenido que se desborde */
}
</style>
<style>
    /* styles.css */
body {
    font-family: Arial, sans-serif;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 100vh;
    margin: 0;
    background-color: #f0f0f0;
}

.container {
    width: 80%;
    max-width: 1000px;
    margin: auto;
}

form {
    display: flex;
    flex-wrap: wrap;
    gap: 20px;
    justify-content: center;
}

.card {
    background: white;
    border: 1px solid #ddd;
    border-radius: 8px;
    box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
    width: calc(33.333% - 20px);
    cursor: pointer;
    transition: transform 0.3s, border 0.3s;
    position: relative;
    padding-top: 10px;
}

.card:hover {
    transform: scale(1.05);
    border: 2px solid #007BFF;
}

.card-content {
    padding: 20px;
    text-align: center;
}

.card img {
    max-width: 100%;
    height: auto;
    border-radius: 8px 8px 0 0;
}

input[type="checkbox"] {
    position: absolute;
    top: 10px;
    left: 10px;
    width: 20px;
    height: 20px;
    cursor: pointer;
    opacity: 0;
}

input[type="checkbox"] + label {
    display: block;
    position: relative;
    cursor: pointer;
}

input[type="checkbox"]:checked + label .card-content {
    border: 2px solid #007BFF;
}

input[type="checkbox"]:checked + label .card {
    border: 2px solid #007BFF;
}

button {
    width: auto;
    padding: 10px 20px;
    background-color: #007BFF;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
    margin-top: 20px;
}

button:hover {
    background-color: #0056b3;
}

/* Estilos para la ventana emergente (modal) */
.modal {
    display: none; 
    position: fixed; 
    z-index: 1; 
    left: 0;
    top: 0;
    width: 100%; 
    height: 100%; 
    overflow: auto; 
    background-color: rgb(0,0,0); 
    background-color: rgba(0,0,0,0.4); 
}

.modal-content {
    background-color: #fefefe;
    margin: 15% auto; 
    padding: 20px;
    border: 1px solid #888;
    width: 80%; 
    max-width: 600px;
    text-align: center;
    border-radius: 8px;
    position: relative;
}

.close {
    color: #aaa;
    float: right;
    font-size: 28px;
    font-weight: bold;
    position: absolute;
    top: 10px;
    right: 20px;
    cursor: pointer;
}

.close:hover,
.close:focus {
    color: black;
    text-decoration: none;
    cursor: pointer;
}

#confirmButton, #cancelButton {
    padding: 10px 20px;
    margin: 10px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
    font-size: 16px;
}

#confirmButton {
    background-color: #007BFF;
    color: white;
}

#confirmButton:hover {
    background-color: #0056b3;
}

#cancelButton {
    background-color: #ddd;
}

#cancelButton:hover {
    background-color: #bbb;
}

</style>
<body>
     <!-- Start Top Nav -->
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
    <nav class="navbar navbar-expand-lg navbar-light shadow ">
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
                            <p>
                                
                            </p>
                        </div>

                            <% String Correo = (String) request.getSession().getAttribute("Correo"); %>
                            <% String idString = (String) request.getSession().getAttribute("ID"); %>
                        
                    </div>  
                </div>
                <div class="d-flex col-12 col-lg-1  justify-content-between">
                    
                    <button class=" navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    
                    <div>
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
    


    <br>
    <br>
    <div class="container">
        
        <form id="productForm" style="margin-top: 100px;">
        <div class="row ">  
            <center>
            <h1>¡Organiza la Fiesta!</h1>
            <h3>Escoge tus productos y Personaliza tu Evento</h3>
        </center>
            <p>
            </p>
            <div class="col-12 col-lg-4 mb-4">
                <div class="card d-inline-block" style="width: 18rem;">
                <input type="checkbox" id="product1" name="products" value="Mini Par LED UV NightSun SPC094">
                <label for="product1">
                    <div class="card-content">
                        <img src="./assets/img/miniled uv.png"  alt="Producto 1">
                        <h3>Mini Par LED UV NightSun SPC094</h3>
                        <p>El SPC094 es par LED de formato pequeño dotado de 12 LED UV de 1W, es ideal para hacer efectos con la luz EV que emite.Este par LED es comprado con frecuencia para iluminar tarimas, pistas de baile de discotecas y para ambientar bares.</p>
                    </div>
                </label>
            </div>
            </div>
            <div class="col-12 col-lg-4 mb-4">
                <div class="card d-inline-block" style="width: 18rem;">
                <input type="checkbox" id="product2" name="products" value="Luz  NightSun SPC089">
                <label for="product2">
                    <div class="card-content">
                        <img src="./assets/img/NightSun_SPC089.png" alt="Producto 2">
                        <h3>Luz  NightSun SPC089</h3>
                        <p>Una luz dinámica y perfecta
Una luz para espacios como bares, discotecas y eventos en casa, dándole un toque especial en cada espacio que lo pongas.</p>
                    </div>
                </label>
            </div>
            </div>
            <div class="col-12 col-lg-4 mb-4">
                <div class="card d-inline-block" style="width: 18rem;">
                    <input type="checkbox" id="product3" name="products" value="Par LED NightSun SPC057i">
                    <label for="product3">
                        <div class="card-content">
                            <img src="./assets/img/LED PAR SPC057I NigthSun.png" alt="Producto 3">
                            <h3>Par LED NightSun SPC057i</h3>
                            <p>El SPC057i esta construido en una rígida carcasa de aluminio y ABS, lo que hace a esta luz ideal para ser usada por empresas de producción de eventos. </p>
                        </div>
                    </label>
                </div>  
            </div>
            
            <div class="col-12 col-lg-4 mb-4">
                <div class="card d-inline-block" style="width: 18rem;">
                <input type="checkbox" id="product4" name="products" value="Cabeza Móvil 100w NightSun SPB423">
                <label for="product4">
                    <div class="card-content">
                        <img src="./assets/img/Cabeza movil NightSunspb423.png" alt="Producto 4">
                        <h3>Cabeza Móvil 100w NightSun SPB423</h3>
                        <p>Cabeza móvil de formato pequeño
La cabeza móvil SPB423 cuenta con 6 LED de 15W RGBW 4 en 1, esta característica permite proyectar una gama casi infinita de colores, lo que es ideal para crear escenas luminosas con altos estándares.</p>
                    </div>
                </label>
            </div>
            </div>
            
            <div class="col-12 col-lg-4 mb-4">
                <div class="card d-inline-block" style="width: 18rem;">
                <input type="checkbox" id="product5" name="products" value="Reloop Buddy Controlador DJ">
                <label for="product5">
                    <div class="card-content">
                        <img src="./assets/img/Reloop_controladora.png" alt="Producto 5">
                        <h3>Reloop Buddy Controlador DJ</h3>
                        <p>Tanto si eres un principiante como si eres un DJ experimentado, Reloop Buddy te ofrece un control total sobre tus mezclas gracias a sus potentes funciones, incluida la sección de pad intuitiva que consta de 8 modos de actuación </p>
                    </div>
                </label>
            </div>
            </div>
            
            <div class="col-12 col-lg-4 mb-4">
                <div class="card d-inline-block" style="width: 18rem;">
                <input type="checkbox" id="product6" name="products" value="Controladora Dj DDJ-200">
                <label for="product6">
                    <div class="card-content">
                        <img src="./assets/img/ddj-200-controladora.png" alt="Producto 6">
                        <h3>Controladora Dj DDJ-200</h3>
                        <p>Iníciate como DJ con el DDJ-200, nuestro controlador DJ inteligente de fácil uso. Ligero y compacto con un diseño de estilo profesional, te ayudará a aprender a mezclar </p>
                    </div>
                </label>
            </div>
            </div>
            
            <div class="col-12 col-lg-4 mb-4">
                <div class="card d-inline-block" style="width: 18rem;">
                <input type="checkbox" id="product7" name="products" value="Reloop Ready Controlador Dj">
                <label for="product7">
                    <div class="card-content">
                        <img src="./assets/img/Reloop-Ready-Controlador-Dj.png" alt="Producto 7">
                        <h3>Reloop Ready Controlador Dj</h3>
                        <p>Tan ligero como potente, tan compacto como versátil: el Reloop Ready equilibra la funcionalidad de primer nivel en un diseño práctico para que los DJs se desempeñen al más alto nivel mientras maximizan la portabilidad y minimizan el espacio.</p>
                    </div>
                </label>
            </div>
            </div>  
            
            <div class="col-12 col-lg-4 mb-4">
                <div class="card d-inline-block" style="width: 18rem;">
                <input type="checkbox" id="product8" name="products" value="BETA THREE VX12a CABINA">
                <label for="product8">
                    <div class="card-content">
                        <img src="./assets/img/BETA-THREE-Cabina.jpg" alt="Producto 8">
                        <h3>BETA THREE VX12a CABINA</h3>
                        <p>VX12a es un altavoz activo de rango completo de dos vías compuesto por un woofer LF de 12″ y un controlador de compresión HF de 1″ con diafragma de titanio. Sus características incluyen gran dinámica, alta sensibilidad, claro MF y HF con potente LF.</p>
                    </div>
                </label>
            </div>
            </div>    
                                
            <div class="col-12 col-lg-4 mb-4">
                <div class="card d-inline-block" style="width: 18rem;">
                <input type="checkbox" id="product9" name="products" value="Base Luces CHAUVET CH-01">
                <label for="product9">
                    <div class="card-content">
                        <img src="./assets/img/base-luces-chauvet-ch-01.jpg" alt="Producto 9">
                        <h3>Base Luces CHAUVET CH-01</h3>
                        <p>Base para luces de trabajo.</p>
                    </div>
                </label>
            </div>
            </div>  
                
            <button class="btn btn-danger"  type="submit">CREAR EVENTO</button>
            <p>
                
            </p>
             <p>
                
            </p>
             
        </div>    
        </form>
    </div>

    <!-- Modal de confirmación -->
    <div id="confirmationModal" class="modal">
        <div class="modal-content">
            <span class="close">&times;</span>
            <h2>Confirmación</h2>
            <p id="selectedProductsList"></p>
            <button id="confirmButton" onclick="enviarFormulario()">Confirmar</button>
            <button id="cancelButton">Cancelar</button>
        </div>
    </div>
       <script>
    function enviarFormulario() {
        const form = document.getElementById('productForm');
        const checkboxes = form.querySelectorAll('input[type="checkbox"]:checked');
        const seleccion = [];

        checkboxes.forEach((checkbox) => {
            seleccion.push(checkbox.value);
        });

        // Crear un formulario oculto para enviar los productos seleccionados directamente a create_Evento.jsp
        const hiddenForm = document.createElement('form');
        hiddenForm.action = 'create_Evento.jsp'; // El formulario de destino
        hiddenForm.method = 'post';

        // Añadir el parámetro de selección como un input oculto al formulario
        const input = document.createElement('input');
        input.type = 'hidden';
        input.name = 'productosSeleccionados';
        input.value = seleccion.join(',');

        // Agregar el input al formulario
        hiddenForm.appendChild(input);

        // Agregar el formulario oculto al DOM y enviarlo
        document.body.appendChild(hiddenForm);
        hiddenForm.submit();
    }
</script>
<script>
        // script.js
document.addEventListener('DOMContentLoaded', () => {
    const form = document.getElementById('productForm');
    const modal = document.getElementById('confirmationModal');
    const closeModal = document.querySelector('.close');
    const confirmButton = document.getElementById('confirmButton');
    const cancelButton = document.getElementById('cancelButton');
    const selectedProductsList = document.getElementById('selectedProductsList');

    form.addEventListener('submit', (e) => {
        e.preventDefault();
        const selectedProducts = [];
        const checkboxes = form.querySelectorAll('input[type="checkbox"]:checked');

        checkboxes.forEach((checkbox) => {
            selectedProducts.push(checkbox.value);
        });

        if (selectedProducts.length > 0) {
            const productList = selectedProducts.map(product => `<li>${product}</li>`).join('');
            selectedProductsList.innerHTML = `<ul>${productList}</ul>`;
            modal.style.display = "block";
        } else {
            alert('No has seleccionado ningún producto.');
        }
    });

    closeModal.addEventListener('click', () => {
        modal.style.display = "none";
    });

    cancelButton.addEventListener('click', () => {
        modal.style.display = "none";
    });

    confirmButton.addEventListener('click', () => {
        modal.style.display = "none";
        alert('Formulario enviado!');
        // Aquí puedes añadir la lógica para enviar el formulario si es necesario.
    });

    window.addEventListener('click', (e) => {
        if (e.target = modal) {
            modal.style.display = "none";
        }
    });

    const cards = document.querySelectorAll('.card');
    cards.forEach((card) => {
        card.addEventListener('click', () => {
            const checkbox = card.querySelector('input[type="checkbox"]');
            checkbox.checked = !checkbox.checked;
            card.classList.toggle('selected');
        });
    });
});

    </script>
    <script src="script.js"></script>

    
    <script src="assets/js/jquery-1.11.0.min.js"></script>
    <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/templatemo.js"></script>
    <script src="assets/js/custom.js"></script>
    
</body>
</html>

