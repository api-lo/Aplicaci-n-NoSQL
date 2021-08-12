<%-- 
    Document   : inicio
    Created on : 11-ago-2021, 11:03:03
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="background: #447BFA">
         <nav class="navbar navbar-expand-lg navbar navbar-dark bg-dark">
            <a class="navbar-brand" href="#">Navbar</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="#"></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#"></a>
                    </li>                   
                </ul>
            </div>
        </nav>
      
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div style="width:  100%; height: 90vh; display: flex; justify-content: center;align-items: center ">
                        <div style="padding:0px 40px 10px; width:600px;height: auto;background: #fff; border-radius: 10px; ">
                            <div class="row p-5">
                                <div class="col-6">
                                    <div  style="width: 200px; height: 200px; border-radius: 10px; background: #c3e6cb">
                                        <img style="object-fit: contain" width="200" height="200"  src="https://res.cloudinary.com/durxpegdm/image/upload/v1628701742/cyborg-man-in-a-wheelchair_vcfdxl.png">
                                        <a href="index.jsp" class="btn btn-info btn-sm btn-block"> Soy paciente</a>
                                    </div>
                                </div>
                                <div class="col-6">
                                    <div style="width: 200px; height: 200px; border-radius: 10px;background: #c3e6cb">
                                        <img style="object-fit: contain" width="200" height="200" src="https://res.cloudinary.com/durxpegdm/image/upload/v1628701624/pale-490_ydkupe.png">
                                        <a href="loginAdmin.jsp" class="btn btn-info btn-sm btn-block">Soy Doctor</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>                            
    </body>
    <script src="js/jquery-2.1.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
</html>
