
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="modal-dialog text-cemter">
            <div class="col-lg-8">
                <div class="modal-content">
                    <div class="col-12">
                    <img src="img/user.jpg" alt="avatar" height="128" width="128">
                    </div>
                    <form action="MiSesionCTO?action=validar" method="POST" class="col-12">
                        <div class="form-group text-center">
                            <p>Bienvenido al sistema de acceso</p>
                        </div>
                        <div class="form-group">
                             <label>Usuario: </label>
                            <input type="text" name="txtUsuario" placeholder="user@correo.com" class="form-control" required>
                        </div>
                        <div class="form-group">
                             <label>Clave de acceso: </label>
                            <input type="password" name="txtPss" placeholder="password" class="form-control" required>
                        </div>
                        <input type="submit" name="btnIngresar" value="Ingresar" class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div>
        <a href="ProductoCTO?action=listar_datos">Lista productos</a>
         <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    </body>
</html>
