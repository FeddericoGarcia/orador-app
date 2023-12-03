<%@page import="com.integradorcac.oradorapp.entity.Orador"%>
<%@page import="java.util.List"%>

<!doctype html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Editar Oradores - CodoACodo</title>
        <link rel="shortcut icon" href="img/codoacodo-min.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/index.css" rel="stylesheet">
        <style>
            body{
                height:100vh;
                display: grid;
                grid-template-rows: 10% 75% 15%;
                grid-template-areas: "header"
                                     "main"
                                     "footer";  
            }
            header{
                grid-area: header;
            }
            main{
                grid-area: main;
                overflow: auto;
            }
            footer{
                grid-area: footer;
            }
        </style>
    </head>
    <body>

        <jsp:include page="components/header.jsp"/>

        <main class="mb-5">
            <section class="container mt-5" id="form-orador">
                <div class="row justify-content-center">
                    <div class="col-lg-8 col-xl-7">
                        <h2 class="titulo-gral">Modificar datos del Orador</h2>
                        
                        <% Orador orador = (Orador)request.getAttribute("orador"); %>
                        <% System.out.println("orador desde editar.jsp " + orador); %>
                        
                        <form action="<%=request.getContextPath()%>/UpdateOradorController" method="POST">
                            <div class="row gx-2">
                                <div class="col-md mb-3">
                                    <input type="hidden" name="id" value="<%=orador.getId()%>">
                                    <input type="text" class="form-control" name="nombre" placeholder="Nombre" aria-label="Nombre" id="validationCustom02" 
                                    value="<%=orador.getNombre()%>" required>
                                </div>
                                <div class="col-md mb-3">
                                    <input type="text" class="form-control" name="apellido" placeholder="Apellido" aria-label="Apellido"
                                    value="<%=orador.getApellido()%>" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mb-3">
                                    <input type="email" class="form-control" name="email" placeholder="Email" aria-label="Email"
                                    value="<%=orador.getMail()%>" required>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col mb-3">
                                    <textarea class="form-control" name="tema" id="exampleFormControlTextarea1" rows="4" placeholder="<%=orador.getTema()%>"  required > <%=orador.getTema()%> </textarea>
                                    <div id="emailHelp" class="form-text mb-3">Recuerda incluir un título para tu charla.</div>
                                    <div class="d-grid">
                                        <button type="submit" class="btn btn-lg btn-success ms-2">Modificar</button>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </section>
        </main>

        <jsp:include page="components/footer.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>