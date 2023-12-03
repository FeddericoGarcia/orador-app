<%@page import="com.integradorcac.oradorapp.entity.Orador"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Listado de Oradores - CodoACodo</title>
        <link rel="shortcut icon" href="img/codoacodo-min.png">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
        <link href="css/index.css" rel="stylesheet">
    </head>
    <body>

        <jsp:include page="components/header.jsp"/>

        <main>
            <section class="container mt-5 mb-4" id="restoOradores">
                <h2 class="titulo-gral mt-4">Conoce todos los oradores que se presentan</h2>
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
                        <% List<Orador> listado = (List<Orador>)request.getAttribute("lista"); %>
                        <% System.out.println(listado); %>
                        <tbody>
                            <% if (listado != null) { %>
                                <% for(Orador  orador : listado) { %>
                                <tr>
                                    <th scope="row"><%=orador.getId()%></th>
                                    <td><%=orador.getNombre() %></td>
                                    <td><%=orador.getApellido() %></td>
                                    <td><%=orador.getTema() %></td>
                                </tr>
                                <% } %>
                            <% } else { %>
                                <tr>
                                    <td colspan="2">No hay datos disponibles</td>
                                </tr>
                            <% } %>
                        </tbody>
                    </table>
                </div>
            </section>
        </main>

        <jsp:include page="components/footer.jsp"/>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>

    </body>
</html>
