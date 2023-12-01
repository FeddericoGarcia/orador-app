<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Conferencia CodoACodo</title>
    <link rel="shortcut icon" href="img/codoacodo-min.png">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
    <link href="css/index.css" rel="stylesheet">
    <link href="css/input-form.css" rel="stylesheet">
    </head>
    <style>
        footer {
            width: 100%;
            position:fixed;
            bottom:0px;
        }
    </style>
<body>
    
    <jsp:include page="components/header.jsp"/>

    <main class="d-flex justify-content-center align-items-center">
		 <section class="mt-5 container" id="form-orador">
		        <div class="row justify-content-center">
		            <div class="col-lg-8 col-xl-7 login">
		                <div class="div-title">
                                    <h3>Ingresá al sistema de<span>ORADORES</span></h3>
                                </div>
		                
		                <form action="<%=request.getContextPath()%>/LoginAdminController" method="POST">
		                    <div class="form-floating mb-3">
                                        <input type="email" class="form-control" id="floatingInput" name="nombre" placeholder="nombre@ejemplo.com" required>
                                        <label for="floatingInput">Correo electronico</label>
                                    </div>
                                    <div class="form-floating">
                                        <input type="password" class="form-control" id="floatingPassword" name="password" placeholder="contraseña" required>
                                        <label for="floatingPassword">Contrase&ntildea</label>
                                    </div>
		                    <div class="row justify-content-center">
		                        <div class="col-8 mt-3">
		                            <div class="d-grid">
		                                <button type="submit" class="btn btn-lg btn-success ms-2">Ingresar</button>
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