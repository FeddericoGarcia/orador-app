<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
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
    <body>
        
        <jsp:include page="components/header.jsp"/>
        
        <main>

            <div id="myCarousel" class="carousel slide mb-6" data-bs-ride="carousel">
              <div class="carousel-indicators">
                <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class="active" aria-current="true"></button>
                <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
              </div>
              <div class="carousel-inner">
                <div class="carousel-item img-carousel1">
                  <svg class="bd-placeholder-img2" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#000"></rect></svg>
                  <div class="container">
                    <div class="carousel-caption text-end">
                      <div class="row">
                        <div class="col-sm-7 col-xl-6 offset-sm-6 pb-4">
                          <h2>Conferencia</h2>
                          <h2>Buenos Aires</h2>
                          <p>Bs. As. llega por primera vez a la Argentina. 
                            Un evento para compartir con nuestra comunidad el conocimiento y la 
                            experiencia de los expertos que están creando el futuro de internet. 
                            Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo 
                            y a los oradores de primer nivel que tenemos para ti. Te esperamos!
                          </p>
                          <div class="d-flex justify-content-end">
                            <p><a class="btn btn-lg btn-outline-light" href="#form">Quiero ser orador</a></p>
                            <p><a class="btn btn-lg btn-success ms-2" href="adquirir-tickets.jsp">Comprar tickets</a></p>  
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="carousel-item img-carousel2 active">
                  <svg class="bd-placeholder-img2" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#000"></rect></svg>
                  <div class="container">
                    <div class="carousel-caption text-end">
                      <div class="row">
                        <div class="col-sm-7 col-xl-6 offset-sm-6 pb-4">
                          <h2>Conferencia</h2>
                          <h2>Buenos Aires</h2>
                          <p>Bs. As. llega por primera vez a la Argentina. 
                            Un evento para compartir con nuestra comunidad el conocimiento y la 
                            experiencia de los expertos que están creando el futuro de internet. 
                            Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo 
                            y a los oradores de primer nivel que tenemos para ti. Te esperamos!
                          </p>
                          <div class="d-flex justify-content-end">
                            <p><a class="btn btn-lg btn-outline-light" href="#form">Quiero ser orador</a></p>
                            <p><a class="btn btn-lg btn-success ms-2" href="adquirir-tickets.jsp">Comprar tickets</a></p>  
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="carousel-item img-carousel3">
                  <svg class="bd-placeholder-img3" width="100%" height="100%" xmlns="http://www.w3.org/2000/svg" aria-hidden="true" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#000"></rect></svg>
                  <div class="container">
                    <div class="carousel-caption text-end">
                      <div class="row justify-content-between">
                        <div class="col-sm-7 col-xl-6 offset-sm-6 pb-4">
                          <h2>Conferencia</h2>
                          <h2>Buenos Aires</h2>
                          <p>Bs. As. llega por primera vez a la Argentina. 
                            Un evento para compartir con nuestra comunidad el conocimiento y la 
                            experiencia de los expertos que están creando el futuro de internet. 
                            Ven a conocer a miembros del evento, a otros estudiantes de Codo a Codo 
                            y a los oradores de primer nivel que tenemos para ti. Te esperamos!
                          </p>
                          <div class="d-flex justify-content-end">
                            <p><a class="btn btn-lg btn-outline-light" href="#form">Quiero ser orador</a></p>
                            <p><a class="btn btn-lg btn-success ms-2" href="adquirir-tickets.jsp">Comprar tickets</a></p>  
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
              </button>
              <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
              </button>
            </div>

            <section id="oradores" class="m-4">

                <div class="div-title">
                    <h3>CONOCÉ A LOS <span>ORADORES</span></h3>
                </div>

                <div class="cards d-flex flex-row justify-content-center">
                    <div class="row">
                        <div class="col d-flex flex-row justify-content-center g-4">
                            <div class="card shadow" style="width: 16rem;">
                                <img src="img/steve-min.jpg" class="card-img-top img-max-height" alt="Steve Jobs presentando iPhone" style="height: 15.8rem;">
                                <div class="card-body">
                                    <span class="badge text-bg-warning">JavaScript</span>
                                    <span class="badge text-bg-info">React</span>
                                    <h5 class="card-title pt-2">Steve Jobs</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Et aspernatur, sit dolorem officiis dolor, nobis sed labore non culpa dignissimos amet excepturi odit quis quos temporibus ut asperiores possimus. Veniam!</p>
                                </div>
                            </div>
                        </div>
                        <div class="col d-flex flex-row justify-content-center g-4">
                            <div class="card shadow" style="width: 16rem;">
                                <img src="img/bill-min.jpg" class="card-img-top img-max-height" alt="Bill Gates en conferencia">
                                <div class="card-body">
                                    <span class="badge text-bg-warning">JavaScript</span>
                                    <span class="badge text-bg-info">React</span>
                                    <h5 class="card-title pt-2">Bill Gates</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet consectetur, adipisicing elit. Molestias, nostrum saepe et quaerat illo possimus provident laboriosam totam sunt magni recusandae eligendi optio earum quas ab omnis fuga molestiae corrupti.</p>
                                </div>
                            </div>
                        </div>
                        <div class="col d-flex flex-row justify-content-center g-4">
                            <div class="card shadow" style="width: 16rem;">
                                <img src="img/ada-min.jpeg" class="card-img-top img-max-height" alt="Retrato de Ada Lovelace en blanco y negro">
                                <div class="card-body">
                                    <span class="badge text-bg-secondary">Negocios</span>
                                    <span class="badge text-bg-danger">Startups</span>
                                    <h5 class="card-title pt-2">Ada Lovelace</h5>
                                    <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. Dolores, veniam eius excepturi sapiente eligendi quaerat soluta nihil iste vero sequi cum nam quibusdam quam voluptas consequuntur natus! Optio, perspiciatis velit.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            
                <div class="container mb-4 mt-4 text-center" id="listado">
                    <a class="btn btn-outline-success shadow" href="<%=request.getContextPath()%>/FindAllOradorController">Conoce al resto de los ORADORES</a>
                </div>

            </section>

            <section id="site-confe">
              <div class="cards card-divisor">
                <div class="card mb-3">
                  <div class="row g-0">
                    <div class="col-md-6">
                      <img src="img/honolulu-min.jpg" class="img-fluid" alt="Foto de la Playa en Honolulu">
                    </div>
                    <div class="col-md-6 card-d p-4">
                      <div class="card-body">
                        <h3 class="card-title">Conferencia Bs As - Octubre / 2023</h3>
                        <p class="card-text">Lorem ipsum dolor sit amet consectetur adipisicing elit. At placeat molestias vitae unde facere voluptatem minus voluptates commodi corrupti tenetur! Pariatur qui enim animi sapiente sed error similique molestiae ipsum! Lorem, ipsum dolor sit amet consectetur adipisicing elit. Perspiciatis, excepturi deleniti harum facilis id, a illo assumenda officiis illum praesentium eos. Qui laborum ratione in hic ducimus debitis voluptatum aperiam.</p>
                        <p><a class="btn btn-lg btn btn-outline-light" href="#">Conocé más</a></p> 
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </section>

            <section class="container-fluid"  id="form">
              <div class="row justify-content-center p-5">
                <div class="col-lg-8 col-xl-7">
                  <div class="div-title">
                    <h3>CONVIÉRTETE EN UN <span>ORADOR</span></h3>
                  </div>
                  <form class="needs-validation" novalidate="" action="<%=request.getContextPath()%>/CreateOradorController" method="POST">
                    <div class="row g-3">
                      <div class="col-md-6">
                        <label for="firstName" class="form-label">Nombre</label>
                        <input type="text" class="form-control" name="nombre" id="firstName" placeholder="Pepe, Rosalia ..." value="" required="">
                        <div class="invalid-feedback">
                          No te olvides de completar los campos.
                        </div>
                      </div>

                      <div class="col-md-6">
                        <label for="lastName" class="form-label">Apellido</label>
                        <input type="text" class="form-control" name="apellido" id="lastName" placeholder="Gomez, Lopez ..." value="" required="">
                        <div class="invalid-feedback">
                          No te olvides de completar los campos.
                        </div>
                      </div>

                      <div class="col-12">
                        <label for="email" class="form-label">Correo</label>
                        <input type="email" class="form-control" name="email" id="email" placeholder="ejemplo@gmail.com">
                        <div class="invalid-feedback">
                          No te olvides de completar los campos.
                        </div>
                      </div>

                      <div class="col-12">
                        <label for="address" class="form-label">Cuéntanos de qué quieres hablar</label>
                        <textarea class="form-control" name="tema" id="address" placeholder="#Titulo
                        Hola, que tal..." required="" style="height: 100px"></textarea>
                        <div class="invalid-feedback">
                          No te olvides de completar los campos.
                        </div>
                      </div>

                      <p><small># Recuerda incluir un título para tu charla.</small></p>
                      <div class="btn-group col-12">
                        <button class="w-100 btn btn-success btn-lg" type="submit">Enviar</button>
                      </div>                
                  </form>
                </div>
              </div>
            </section>

        </main>
        
        <jsp:include page="components/footer.jsp"/>
        
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
        <script src="js/index.js"></script>
    </body>
</html>
