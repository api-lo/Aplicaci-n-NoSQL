<%-- 
    Document   : frmDoctores
    Created on : 10-ago-2021, 17:14:37
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
    <body style="background: #447BFA"  >
        <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Clinica Online</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="">Lista de usuarios</a>
                    </li>                    
                    <li class="nav-item">
                        <a class="nav-link" href="registrarConsultas.jsp">Consultas doctores</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp">Cerrar</a>
                    </li>
                </ul>
            </div>
        </nav>
        <div class="container">
            <div class="row pt-4">
                <div class="col-4"  style="background: #fff; border-radius: 10px; padding:10px" >                 
                    <form id="frmDoctores" name="frmDoctores" > 
                        <img id="perfirImg" style="object-fit: cover; width: 150px; height: 160px; border-radius:50px; margin:10px;  position: relative; left: 25%"
                             src="https://res.cloudinary.com/durxpegdm/image/upload/v1627940101/3d-flame-279_xt18fx.png" />
                        <div class="form-group">    
                            <div class="input-group mb-3">
                                <input name="urlImg" hidden id="urlImg" type="text" class="form-control form-control-sm" placeholder="Ingrese una imagen">                              
                            </div> 
                            <button type="button" class="btn btn-danger btn-block btn-sm" id="btn_subir_fotos"> Buscar foto</button>
                        </div>
                        <div class="form-group">                            
                            <input name="nombre" type="text" class="form-control form-control-sm" id="nombre"  placeholder="Nombre">                    
                        </div> 
                        <div class="form-row">
                            <div class="col">
                            <div class="form-group"><input name="fechaNacimiento" type="date" class="form-control form-control-sm" id="fechaNacimiento" placeholder="Fecha de nacimiento"></div>
                            </div>
                            <div class="col">
                                <div class="form-group">      
                                    <select  class="form-control form-control-sm"  name="especialidad" id="espcialidad">
                                        <option>Familiar</option>
                                        <option>Otorrinolaringolo</option>
                                        <option>Cirujano</option>
                                        <option>Anestesiología</option>
                                        <option>Pediátrica</option>
                                        <option>Intensivos Pediátricos</option>
                                        <option>Imagenología</option>
                                        <option>Ortopedia y Traumatología</option>
                                        <option>Ortopedia y Traumatología</option>
                                        <option>Médica en Neonatología</option>
                                        <option>Neurocirugía</option>
                                    </select>                                                                       
                                </div>
                            </div>
                        </div>
                        <div class="form-group"><textarea name="horario" type="text" class="form-control form-control-sm" id="horario" aria-describedby="emailHelp" placeholder="Horarios"></textarea></div>
                        <div class="form-group"><input name="areaTrabajo" type="text" class="form-control form-control-sm" id="areaTrabajo" placeholder="Área de trabajo" ></div>
                        <div class="form-group"><input name="servicios" type="text" class="form-control form-control-sm" id="servicios"  placeholder="Servicios"></div>                       
                        <button  type="button" id="addDoctor" class="btn btn-primary btn-block btn-sm">Registrar Doctor</button>
                        <button  type="button" id="modificarDoctor" onclick="modificar()" class="btn btn-warning btn-block btn-sm">Modificar</button>
                    </form>                     
                </div>   
                <div class="col-8" >
                    <table class="table table-dark" style="font-size: 12px">
                        <thead >
                            <tr>
                                <th>Nombre</th>
                                <th>Fecha nacimiento</th>
                                <th>Epecialidad</th>
                                <th>Horario</th>
                                <th>Área de trabajo</th>
                                <th>Servicios</th>
                                <th>Imagen</th>
                                <th>Opciones</th>
                            </tr>
                        </thead>
                        <tbody id="cuerpoTabla">

                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </body>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>           
    <script src="https://widget.cloudinary.com/v2.0/global/all.js" type="text/javascript"></script>     
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script>     
    <script src="Cloudinary.js" type="text/javascript"></script>
    <script src="ajax.js" type="text/javascript"></script>    
    <script src="js/bootstrap.min.js" type="text/javascript"></script>

</html>
