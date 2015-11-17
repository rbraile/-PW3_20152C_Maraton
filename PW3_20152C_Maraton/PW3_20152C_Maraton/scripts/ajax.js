$(document).ready(function () {
    
    
    //cargar las provincias la primera vez
    $.ajax({
        type: "POST",
        url: "http://localhost:22639/maratones_realizadas.asmx/ObtenerMaratonesRealizados",
        cache: false,
        contentType: "application/json; charset=utf-8",
        data: '{12}',
        dataType: "json",
        success: function (data) {
            console.log("ok");
        },
        error: function (xhr, status, error) {
            console.log("no ok");
        }
    });
});