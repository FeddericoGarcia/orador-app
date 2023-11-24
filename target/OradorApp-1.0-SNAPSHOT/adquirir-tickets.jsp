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
    </head>
    <body>

        <jsp:include page="components/header.jsp"/>

        <main>

          <section class="container-fluid pt-5 d-flex justify-content-center" id="comprar-tkt">

            <div class="row mt-5 g-4 col-lg-8 col-xl-7">

              <div class="cards d-flex justify-content-center">

                <div class="col">
                  <div class="card bg-danger border-danger mb-3 shadow m-2">
                    <div class="card-header text-white h4 p-3">Estudiante</div>
                    <div class="card-body rounded-bottom">
                      <p>Tienes un descuento del</p>
                      <h3 class="card-title">80%</h3>
                      <small>
                        <p class="card-text text-muted">* Presentar documentación</p>
                      </small>
                    </div>
                  </div>
                </div>

                <div class="col">
                  <div class="card bg-warning border-warning mb-3 shadow m-2">
                    <div class="card-header text-white h4 p-3">Trainee</div>
                    <div class="card-body rounded-bottom">
                      <p>Tienes un descuento del</p>
                      <h3 class="card-title">50%</h3>
                      <small>
                        <p class="card-text text-muted">* Presentar documentación</p>
                      </small>
                    </div>
                  </div>
                </div>

                <div class="col">
                  <div class="card bg-primary border-primary mb-3 shadow m-2">
                    <div class="card-header text-white h4 p-3">Junior</div>
                    <div class="card-body rounded-bottom">
                      <p>Tienes un descuento del</p>
                      <h3 class="card-title">15%</h3>
                      <small>
                        <p class="card-text text-muted">* Presentar documentación</p>
                      </small>
                    </div>
                  </div>
                </div>
              </div>

            </div>

          </section>

          <section class="container-fluid"  id="form-tkt">
            <div class="row justify-content-center p-5">
              <div class="col-lg-8 col-xl-7">
                <div class="div-title">
                  <h3>VENTA <span> VALOR DE TICKET $200</span></h3>
                </div>
                <form class="needs-validation" novalidate="">
                  <div class="row g-3 form-group">
                    <div class="col-md-6">
                      <label for="firstName" class="form-label">Nombre</label>
                      <input type="text" class="form-control" id="firstName" placeholder="Pepe, Rosalia ..." required="">
                      <div class="invalid-feedback">
                        No te olvides de completar los campos.
                      </div>
                    </div>

                    <div class="col-md-6">
                      <label for="lastName" class="form-label">Apellido</label>
                      <input type="text" class="form-control" id="lastName" placeholder="Gomez, Lopez ..." required="">
                      <div class="invalid-feedback">
                        No te olvides de completar los campos.
                      </div>
                    </div>

                    <div class="col-12">
                      <label for="email" class="form-label">Correo</label>
                      <input type="email" class="form-control" id="email" pattern="[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*@[a-zA-Z0-9_]+([.][a-zA-Z0-9_]+)*[.][a-zA-Z]{1,5}" placeholder="ejemplo@gmail.com">
                      <div class="invalid-feedback">
                        No te olvides de completar los campos.
                      </div>
                    </div>

                    <div class="col-md-6">
                      <label for="cantTicket" class="form-label">Cantidad</label>
                      <input type="number" class="form-control" id="cantTicket" placeholder="0" required="">
                      <div class="invalid-feedback">
                        No te olvides de completar los campos.
                      </div>
                    </div>

                    <div class="col-md-6">
                      <label for="categTicket" class="form-label">Categoría</label>
                      <select class="form-control" id="categTicket">
                        <option value="" selected>Seleccioná una opción</option>
                        <option value="1">Estudiante</option>
                        <option value="2">Trainee</option>
                        <option value="3">Junior</option>
                        <option value="4">Sin categoría</option>
                      </select>
                      <div class="invalid-feedback">
                        No te olvides de completar los campos.
                      </div>
                    </div>

                    <div class="col-12">
                      <div class="alert alert-primary" role="alert">
                        <div class="d-flex flex-row">
                          Total a pagar: $ <span id="pagarTotal"></span>
                        </div>
                      </div>
                    </div>

                    <div class="col-12 btn-group">
                      <div class="col-md-6">
                        <button class="w-100 btn btn-success btn-lg" type="reset"
                        id="btn_delete">Borrar</button>
                      </div>
                      <div class="col-md-6">
                        <button class="w-100 btn btn-success btn-lg" type="button" 
                        id="btn_resm">Resumen</button>  
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