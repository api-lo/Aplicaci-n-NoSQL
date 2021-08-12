<%-- 
    Document   : Registrar
    Created on : 11-ago-2021, 0:41:03
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
    </head>   
    <body>
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#">Doctores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Crear una cuenta</a>
                    </li>                   
                </ul>
            </div>
        </nav>
        
         <div class="container">
            <div style="width:  100%; height: 90vh; display: flex; justify-content: center;align-items: center ">
                <div style=" width:600px;height: auto;background: #fff; border-radius: 10px; ">
                    <form action="http://localhost:4000/addAgregarUsuario" method="POST">
                        <div class="alert-light" style="width: 100%; height: auto; text-align: center">                        
                        <h4>FORMULARIO DE REGISTRO</h4>
                        </div>                        
                        <div class="form-group">
                            <label for="exampleInputEmail1">Nombre</label>
                            <input type="text" class="form-control form-control-sm" name="name" id="name"  placeholder="Nombre">                            
                        </div>
                         <div class="form-group">
                            <label for="exampleInputEmail1">Email</label>
                            <input type="email" class="form-control form-control-sm" name="email"  id="email"  placeholder="Email">                            
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Cedula</label>
                            <input type="number" class="form-control form-control-sm" name="cedula"  id="date"  placeholder="Cedula">                            
                        </div>
                         <div class="form-group">
                            <label for="exampleInputEmail1">Fecha de nacimiento</label>
                            <input type="date" class="form-control form-control-sm" name="date"  id="date"  placeholder="Email">                            
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Contraseña</label>
                            <input type="password" class="form-control form-control-sm"  name="password" id="password" placeholder="Contraseña">
                        </div>
                         <div class="form-group">
                            <label for="exampleInputPassword1">Confirmación de contraseña</label>
                            <input type="password" class="form-control form-control-sm" name="passwordconfir" id="passwordconfir" placeholder="Confirme contraseña">
                        </div> 
                        <div class="row">
                            <div class="col-12">
                                <button type="submit" class="btn btn-dark btn-inf" value="Registrarme">Crearme cuenta</button> 
                            </div>                                                          
                        </div> 
                    </form>   
                </div>
            </div>
        </div>
    </body>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
