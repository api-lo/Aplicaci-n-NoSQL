<%-- 
    Document   : registrarConsultas
    Created on : 11-ago-2021, 15:52:36
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <title>Consultas</title>
    </head>
    <body style="background: #447BFA" >
       

        <div class="container">
            <div class="row">
                <div  style="width:  100%; height: 90vh; display: flex; justify-content: center;align-items: center" >
                    <div style="margin-top: 20px;padding:10px; width:400px;height: auto;background: #fff; border-radius: 10px;">
                        <form action="" id="frmConsulta" name="frmConsulta">
                            <div class="row">
                                <div class="col-12">
                                    <label>Seleccione doctor</label>
                                    <div class="input-group mb-3">
                                       <select  class="form-control form-control-sm"  name="especialidad" id="especialidad" >
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
                                        <div class="input-group-append">
                                            <button onclick="buscarDoc()" class="btn btn-success btn-sm" type="button">Buscar</button>
                                        </div>
                                    </div>
                                   
                                </div>                                
                                <div class="col-12">      
                                     <label>Doctores disponibles:</label>
                                    <select  class="form-control form-control-sm" id="docDisponibles" name="doctor" >                                        
                                    </select>
                                </div>
                                <div class="col-12">  
                                     <label>Buscar paciente:</label>
                                    <div class="input-group mb-3">
                                        <input type="text" class="form-control form-control-sm" id="cedula" name="cedula" placeholder="Busqueda por cedula">
                                        <div class="input-group-append">
                                            <a onclick="buscarUserPorCedula()" href="#" class="btn btn-success btn-sm" type="Buscar">Buscar</a>
                                        </div>
                                    </div>                                   
                                </div>                                     
                                <div class="col-12" >
                                    <div style="width: 100%; height:auto; max-height: 245px; overflow-y:  auto">
                                        <table class="table">
                                            <thead>
                                                <tr>
                                                    <th scope="co3">Información usuario</th>                                                                                                  
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <tr id="nameUs">
                                                                                                    
                                                </tr>
                                                <tr id="cedulaUs">
                                                                                                    
                                                </tr>
                                                <tr id="feca_nUs">
                                                                                                    
                                                </tr>                                             
                                            </tbody>
                                        </table>
                                    </div>                                        
                                </div>
                                <div class="col-12">
                                     <label>Fecha de consulta:</label>
                                    <input type="date" name="fecha" class="form-control-sm form-control" />
                                </div> 
                                
                                <div class="col-12">
                                    <br/>
                                    <button id="addConsulta" type="button"  class="btn btn-warning btn-sm btn-block">Añadir consulta</button>
                                </div> 
                            </div>    
                        </form>    
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>    
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@10"></script> 
    <script src="ajaxConsultas.js" type="text/javascript"></script>                  
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
