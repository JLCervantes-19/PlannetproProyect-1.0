<%-- 
    Document   : AlertPlannetpro
    Created on : 21 may 2024, 18:08:49
    Author     : macuser
--%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="utf-8">
	<meta name="author" content="Muhamad Nauval Azhar">
	<meta name="viewport" content="width=device-width,initial-scale=1">
	<meta name="description" content="This is a login page template based on Bootstrap 5">
        
    <link rel="apple-touch-icon" href="assets/img/apple-icon-removebg-preview.png">
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/apple-icon.ico">
    <link rel="icon" href="assets/img/apple-icon.ico" type="image/x-icon">
    
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

	<title>Login-PlannetPro</title>
	<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
</head>

<body>
	<section class="h-100">
		<div class="container h-100">
			<div class="row justify-content-sm-center h-100">
				<div class="col-xxl-4 col-xl-5 col-lg-5 col-md-7 col-sm-9">
					<div class="text-center my-5">
						<a href="index.html"><img src="assets/img/apple-icon.png" alt="logo" width="100"></a>
					</div>
					<div class="card shadow-lg">
						<div class="card-body p-5">
                                                    <center> <div class="alert alert-success alert-dismissible fade show" role="alert">
      <h4 class="alert-heading">¡Evento Creado Exitosamente!</h4>
      <p>El evento se ha creado exitosamente. Ahora puedes gestionar los detalles del evento desde tu panel de control</p>
      
     
    </div></center>

							<form action="index.jsp" method="post" class="needs-validation" novalidate="" autocomplete="off">
								<div class="mb-3">
								
								<div class="d-flex align-items-center">
									
									<button type="submit" class="btn btn-primary ms-auto" name="accion" value="ingresar">
										Aceptar
									</button>
								</div>
                                    

							</form>
                                                    
						</div>
					</div>
					
				</div>
			</div>
		</div>
                    
	</section>

	<script src="js/login.js"></script>
</body>
</html>