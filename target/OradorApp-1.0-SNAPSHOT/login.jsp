<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conferencia CodoACodo</title>
    <link rel="shortcut icon" href="img/codoacodo-min.png">
    <link href="css/index.css" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
</head>
<body>
    
    <jsp:include page="components/header.jsp"/>

    <main class="d-flex justify-content-center align-items-center">
		 <section class="mt-5 container" id="form-orador">
		        <div class="row justify-content-center">
		            <div class="col-lg-8 col-xl-7 mt-">
		                <h2 class="titulo-gral mb-3">LogIn</h2>
		                
		                <form action="<%=request.getContextPath()%>/LoginAdminController" method="POST">
		                    <div class="row justify-content-center">
		                        <div class="col-8 mb-3 mb-4">
		                            <input type="text" class="form-control" name="nombre" placeholder="Usuario" aria-label="Nombre" required>
		                            
		                        </div>
		                         <div class="col-8 mb-3 mb-4">
		                           <input type="password" class="form-control" name="password" placeholder="Contraseña" aria-label="Password" required>
		                         </div>
		                    </div>
		                    <div class="row justify-content-center">
		                        <div class="col-8 mb-3">
		                            <div class="d-grid">
		                                <button type="submit" class="btn btn-lg btn-form">LogIn</button>
		                            </div>
		                        </div>
		                    </div>
		                </form>
		            </div>
		        </div>
		    </section>
		
		</main>

    <jsp:include page="components/footer.jsp"/>
    
    <script src="index.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>