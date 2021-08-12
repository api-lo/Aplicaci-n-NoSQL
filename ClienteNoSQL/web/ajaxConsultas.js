
function llenar(DatoJson)
{    
    var html = "";
    for (var i = 0; i < DatoJson.length; i++)
    {
        html = html + "<option>"+ DatoJson[i].nombre + "</option> ";
    }
    document.getElementById("docDisponibles").innerHTML = html;
}

function buscarDoc()
{
    var especialidad=document.getElementById("especialidad").value;
    //
    
     $.ajax({
        method: "GET",
        url: "http://localhost:4000/buscarE/"+especialidad,
        success: function (data) {

            var DatoJson = JSON.parse(data);
            console.log(data);
            llenar(DatoJson);
        },
        error: function (data) {
        }
    });
}
var dssss=[];
function buscarUserPorCedula()
{
     var especialidad=document.getElementById("cedula").value;
     $.ajax({
        method: "GET",
        url: "http://localhost:4000/usuario/"+especialidad,
        success: function (data) {

                     
            ponerentabla(data);
        },
        error: function (data) {
        }
    });
        
}
function ponerentabla(DatoJson)
{    
    var json = JSON.parse(DatoJson);  
    console.log(json);
    var fecha=json[0].date.split("T");    
    document.getElementById("nameUs").innerHTML="<th>Nombre: "+json[0].name+"</th>";
    document.getElementById("cedulaUs").innerHTML="<th>Cedula: "+json[0].cedula+"</th>";
    document.getElementById("feca_nUs").innerHTML="<th>Nacimineto: "+fecha[0]+"</th>";
}

$(function () {


//Insertar doctores
    $("#addConsulta").click(function (e) {

        const datos = $("#frmConsulta").serialize();

        console.log(datos);
        $.ajax({
            method: "POST",
            url: "http://localhost:4000/addConsulta",
            data: datos,
            success: function (data) {
                Swal.fire(
                        'Agregado correctamente!',
                        'Consulta registrada!',
                        'success'
                        );
               
            },
            error: function (data) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'No de pudo guardar la consulta!',

                });
            }
        });

    });
});

function misconsultas()
{
    
    var cedula= document.getElementById("myCedula").value;
     $.ajax({
            method: "GET",
            url: "http://localhost:4000/verConsulta/"+cedula,            
            success: function (data) {
                Swal.fire(
                        'Todo bien!',
                        'Busqueda realizada!',
                        'success'
                        );                            
               console.log(data);
               var json=JSON.parse(data);
               llenarTablaConsulta(json);
            },
            error: function (data) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'No de pudo guardar la consulta!',

                });
            }
        });                
}
function llenarTablaConsulta(json)
{
    var html="";
     for (var i = 0; i < json.length; i++)
    {
        html = html + "<tr>" +
                            "<td>" + i + "</td>" +
                            "<td>" + json[i].doctor + "</td>" +
                            "<td>" + json[i].especialidad + "</td>" +                                                       
                            "<td>" + json[i].fecha + "</td>" +
                            "<td>" + json[i].createdAt + "</td>" +
                            "<td>" + json[i].updatedAt + "</td>" +
                            "<td>" + randomFuncion() + "</td>" +
                "</tr>";
    }
    document.getElementById("cuempoConsultas").innerHTML=html;
}

function  randomFuncion()
{
    var numer= Math.random();
    if(numer>0.50)
    {
        return  "<span class=\"badge badge-success\">Realizada</span>";
    }else
    {
        return  "<span class=\"badge badge-warning\">Pendiente</span>";
    }
}

