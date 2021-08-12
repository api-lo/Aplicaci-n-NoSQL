<%-- 
    Document   : index.jsp
    Created on : 10-ago-2021, 20:11:39
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Login</title>
    </head>
    <body style="background: #447BFA" > 
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
                <div style="padding:0px 40px 10px; width:600px;height: auto;background: #fff; border-radius: 10px; ">
                    <form  action="http://localhost:4000/validarAdmin" method="POST" autocomplete="nope" >
                        <div class="alert-light" style="width: 100%; height: auto; text-align: center">
                        <h1>Bienvenidos</h1>
                        <h2>Clinica Te salvamos la vida</h2>
                        <h3>Administrador</h3>
                        </div>
                        <div class="alert alert-danger" style="text-align: justify" >
                            <p>No compartir sus credenciales con niguna persona no autorisada, solo los medicos y el personal de la clinica tiene una cuenta para ingresar como administrador</p>
                        </div>
                        <div class="form-group">
                            <label for="exampleInputEmail1">Dirección de Email</label>
                            <input  name="email" type="text" class="form-control form-control-sm" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="email">                            
                        </div>
                        <div class="form-group">
                            <label for="exampleInputPassword1">Contraseña</label>
                            <input name="password" type="password" class="form-control form-control-sm" id="exampleInputPassword1" placeholder="Contraseña">
                        </div>                                                
                        <div class="row">                            
                            <div class="col-12">
                                <button type="submit" class="btn btn-primary btn-block">Ingresar</button>
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
