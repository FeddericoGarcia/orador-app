document.addEventListener("DOMContentLoaded", function () {
    // Obtén el valor del parámetro 'monto' de la URL
    var parametros = new URLSearchParams(window.location.search);
    var monto = parametros.get('monto');
    let montoPagar = document.getElementById("montoPagar");

    montoPagar.innerHTML = `$ `+ monto;
});
