document.addEventListener("DOMContentLoaded", function () {
    // Obtén el valor del parámetro 'monto' de la URL
    let parametro = new URLSearchParams(window.location.search);
    let monto = parametro.get('monto');
    let montoPagar = document.getElementById("montoPagar");

    montoPagar.innerHTML = `$ `+ monto;
});
