$(document).ready(function () {
    
    $.ajax({
        type: "POST",
        url: "/maratones_realizadas.asmx/ObtenerMaratonesRealizados",
        cache: false,
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            if (data.d != null) {
                cargarTabla("resultado", data.d);
            }
        },
        error: function (xhr, status, error) {
            console.log("error en la respuesta ajax");
        }
    });
});

function vaciarTabla(id) {
    $('#' + id + " tbody tr").remove();
}

function cargarTabla(id, items) {
    vaciarTabla(id);
    $.each(items, function (index, obj) {
        $('#' + id).append('<tr><td>' + obj.MaratonNombre + '</td><td>' + obj.PosicionFinal + '</td><td>' + obj.TiempoLlegada + '</td><td>' + obj.Premio + '</td></tr>');
    });
}
