<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width , initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="row">
                <h1>Productos!</h1>
            </div>
            <div class="row">
                  <div class="card-body">
        <table>
            <thead>
            <tr>
                <th>N ID</th>
                <th>Nombre</th>
                <th>Descripcion</th>
                <th>Unidades</th>
                <th>Valor</th>
                <th>Acciones</th>
            </tr>
            </thead>
            <tbody>
                <c:forEach var="objP" items="${lista_productos}">
                <tr>
                <td>${objP.getId_prod()}</td>
                <td>${objP.getNombre_prod()}</td>
                <td>${objP.getDescripcion_prod()}</td>
                <td>${objP.getUnd()}</td>
                <td>${objP.getValor()}</td>
                <td>Editar Borrar Ver</td>
                <td>
                    <a type="button" class="btn btn-outline-success">Ver</a>
                    <a type="button" class="btn btn-outline-warning">Editar</a>
                    <a href="ProductoCTO?accion=eliminar&id=${objP.getId_prod()}"type="button" class="btn btn-outline-danger">Eliminar</a>
                </td>
            </tr>
            </tbody>
        </table>
          </div>
                </div>
                </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
h