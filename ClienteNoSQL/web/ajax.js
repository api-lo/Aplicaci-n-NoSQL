
cargarlista();

$(function () {


//Insertar doctores
    $("#addDoctor ").click(function (e) {

        const datos = $("#frmDoctores").serialize();

        console.log(datos);
        $.ajax({
            method: "POST",
            url: "http://localhost:4000/addDoctores",
            data: datos,
            success: function (data) {
                Swal.fire(
                        'Agregado correctamente!',
                        'El doctor se agrego correctamente!',
                        'success'
                        );
                cargarlista();
            },
            error: function (data) {
                Swal.fire({
                    icon: 'error',
                    title: 'Oops...',
                    text: 'No de pudo guardar al docto!',

                });
            }
        });

    });
});


function cargarlista()
{
    $.ajax({
        method: "GET",
        url: "http://localhost:4000/infoDoctores",
        success: function (data) {

            var DatoJson = JSON.parse(data);
            llenar(DatoJson);
        },
        error: function (data) {
        }
    });
}
var jsoGlobal;
function llenar(DatoJson)
{
    jsoGlobal = DatoJson;
    var html = "";
    for (var i = 0; i < DatoJson.length; i++)
    {
        html = html + "<tr>" +
                "<td>" + DatoJson[i].nombre + "</td>" +
                "<td>" + DatoJson[i].especialidad + "</td>" +
                "<td>" + DatoJson[i].fechaNacimiento + "</td>" +
                "<td>" + DatoJson[i].horario + "</td>" +
                "<td>" + DatoJson[i].areaTrabajo + "</td>" +
                "<td>" + DatoJson[i].servicios + "</td>" +
                "<td><a href=\"" + DatoJson[i].urlImg + "\" class=\"btn btn-info btn-sm btn-block\">Ver</a></td>" +
                "<td>" +
                "<div class=\"btn-group\" role=\"group\" aria-label=\"Basic example\">" +
                "<a href=\"http://localhost:4000/eliminar/" + DatoJson[i]._id + "\" class=\"btn btn-danger btn-sm\">Eliminar</a>" +
                "<button onclick=\"editar(" + i + ")\"  class=\"btn btn-success btn-sm\">Seleccionar</button>" +
                "</div>" +
                "</td>" +
                "</tr>";
    }


    document.getElementById("cuerpoTabla").innerHTML = html;
}
function editar(int)
{
    $.ajax({
        method: "GET",
        url: "http://localhost:4000/buscar/" + jsoGlobal[int]._id + "",
        success: function (data) {
            console.log(data);
            var DatoJson = JSON.parse(data);
            llenarFormulario(DatoJson);
        },
        error: function (data) {
        }
    });
}
var g;
function llenarFormulario(DatoJson)
{
    g = DatoJson;
    console.log(DatoJson);
    document.getElementById("nombre").value = DatoJson.nombre;
    document.getElementById("espcialidad").value = DatoJson.especialidad;
    document.getElementById("fechaNacimiento").value = DatoJson.fechaNacimiento;
    document.getElementById("horario").value = DatoJson.horario;
    document.getElementById("areaTrabajo").value = DatoJson.areaTrabajo;
    document.getElementById("servicios").value = DatoJson.servicios;
    document.getElementById("urlImg").value = DatoJson.urlImg;
    document.getElementById("perfirImg").src = DatoJson.urlImg;
}
function modificar()
{
     var nombre= document.getElementById("nombre").value; 
    var espcialidad= document.getElementById("espcialidad").value;
    var fechaNacimiento= document.getElementById("fechaNacimiento").value; 
    var horario= document.getElementById("horario").value;
    var areaTrabajo= document.getElementById("areaTrabajo").value; 
    var servicios= document.getElementById("servicios").value;
    var urlImg= document.getElementById("urlImg").value;
//    var perfirImg=  document.getElementById("perfirImg").src;
  var datos="urlImg="+urlImg+"&nombre="+nombre+"&fechaNacimiento="+fechaNacimiento+"&especialidad="+espcialidad+"&horario="+horario+"&areaTrabajo="+areaTrabajo+"&servicios="+servicios+"&id="+g._id;
    $.ajax({
        method: "POST",
        url: "http://localhost:4000/modificar",
        data: datos,
        success: function (data) {
            Swal.fire(
                    'Modificado correctamente!',
                    'El doctor se agrego correctamente!',
                    'success'
                    );
            cargarlista();
        },
        error: function (data) {
            Swal.fire({
                icon: 'error',
                title: 'Oops...',
                text: 'No de pudo guardar al docto!',

            });
        }
    });

}

