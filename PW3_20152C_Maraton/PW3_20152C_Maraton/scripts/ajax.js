$(document).ready(function () {
    
    $.ajax({
        type: "POST",
        url: "/maratones_realizadas.asmx/ObtenerMaratonesRealizados",
        cache: false,
        contentType: "application/json; charset=utf-8",
        success: function (data) {
            if (data.d != null) {
                console.log(data);
            }
        },
        error: function (xhr, status, error) {
            console.log("no ok2");
        }
    });
});