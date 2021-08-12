<%-- 
    Document   : misconsultas
    Created on : 11-ago-2021, 15:46:08
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
                        <a class="nav-link" href="#">Ver doctores</a>
                    </li>    
                    <li class="nav-item active">
                        <a class="nav-link" href="index.jsp">Cerrar Sesión</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row">
                <div class="col-6">
                    <div style="left: 20%; position: relative">
                        <img style="object-fit: contain" width="300" height="300" src="https://res.cloudinary.com/durxpegdm/image/upload/v1628735395/pale-doctor-1_orwplt.png">
                    </div>                                            
                </div>
                <div class="col-6 mt-5">
                    <h2>Bienvenido!</h2>
                    <div class="alert alert-warning">
                        <p>Agregar cualquier contenido</p>
                    </div>
                </div>
            </div>
            <div class="row">
              <div class="col-12">
                    <div class="input-group mb-3">
                        <input id="myCedula" type="text" class="form-control" placeholder="Busca por cedula"  >
                        <div class="input-group-append">
                            <button onclick="misconsultas()" class="btn btn-outline-secondary" type="button">Buscar</button>
                        </div>
                    </div>
                </div> 
            </div>
            <div class="row">
                <table class="table">
                    <thead>
                        <tr>
                            <th scope="col">#</th>
                            <th scope="col">Doctor</th>
                            <th scope="col">Especialidad</th>
                            <th scope="col">Fecha de consulta</th>
                            <th scope="col">Fecha de creación</th>
                            <th scope="col">Fecha de modifición</th>
                            <th scope="col">Estado</th>
                        </tr>
                    </thead>
                    <tbody id="cuempoConsultas">
                                                                    
                    </tbody>
                </table>
            </div>
        </div>
    </body>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>    
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script> 
    <script src="ajaxConsultas.js" type="text/javascript"></script>                  
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
