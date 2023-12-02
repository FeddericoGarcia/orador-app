<%@page import="com.integradorcac.oradorapp.entity.Orador"%>
<%@page import="java.util.List"%>
<%@page import="java.lang.Iterable"%>

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
        <section class="container mt-5 mb-4" id="restoOradores">
            <h2 class="titulo-gral">Conoce todos los oradores que se presentan</h2>

            <div class="row">
                <table class="table">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nombre</th>
                        <th scope="col">Apellido</th>
                        <th scope="col">Tema</th>
                      </tr>
                    </thead>
                    <tbody>
                        <% List<Orador> oradores = (List<Orador>)request.getAttribute("orador"); %>
                        <% System.out.println("Oradores en dashboard.JSP: " + oradores); %>
                        <% for( Orador  unOrador : oradores) { %>
                        <tr>
                            <th scope="row"><%=unOrador.getId()%></th>
                            <td><%=unOrador.getNombre() %></td>
                            <td><%=unOrador.getApellido() %></td>
                            <td><%=unOrador.getTema() %></td>
                            <td>
                                <a class="btn btn-info m-2" role="button" href="<%=request.getContextPath()%>/UpdateOradorController?id_orador=<%=unOrador.getId()%>"> Editar </a>
                                <button type="button m-2" class="btn btn-danger" data-bs-toggle="modal" data-bs-target="#exampleModal" onclick="setOradorId(<%=unOrador.getId()%>)"> Eliminar </button>
                            </td>
                        </tr>
                       <% } %>
                    </tbody>
                  </table>
            </div>
    </section>


    </main>
    <!-- Modal -->
    <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog">
        <div class="modal-content">
            <form action="<%=request.getContextPath()%>/DeleteOradorController">
              <input type="hidden" name="idOrador" id="idOrador">
                  <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Dar de baja Orador</h5>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                  </div>
                  <div class="modal-body">
                    ¿Confirma que desea eliminar? 
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
                    <button type="submit" class="btn btn-danger">Eliminar</button>
                  </div>
            </form>
        </div>
      </div>
    </div>

    <jsp:include page="components/footer.jsp"/>
    
    <script src="index.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
</body>
</html>