document.addEventListener("DOMContentLoaded", function () {
//Declarando constantes 
const VALOR_TKT = 200;
const DESC_EST = 80;
const DESC_TRA = 50;
const DESC_JUN = 15;

//Obteniendo DOM
let firstName = document.getElementById("firstName");
let lastName = document.getElementById("lastName");
let email = document.getElementById("email");
let pagarTotal = document.getElementById("pagarTotal");
let btn_delete = document.getElementById("btn_delete");
let btn_resm = document.getElementById("btn_resm");
let btn_comprar = document.getElementById("btn_comprar");


//Limpiar inputs
btn_delete.addEventListener('click', ()=>{
    let classForm = document.querySelectorAll(".form-control, .form-select");
    for (let i = 0; i < classForm.length; i++) {
        classForm[i].classList.remove("is-invalid");
    }
    pagarTotal.innerHTML = ``;

});

//Retornar resumen a traves del evento
btn_resm.addEventListener('click', ()=>{
    
    let cantTicket = document.getElementById("cantTicket").value;
    let categTicket = document.getElementById("categTicket").value;
    let montoTotal = (cantTicket * VALOR_TKT);
    let total = obtenerMonto(montoTotal, cantTicket, categTicket);
    
    pagarTotal.innerHTML = `${total}`;
});

//Validar datos inputs
function validation(cantTicket, categTicket){
    let check = true;
    
    if (isNaN(parseInt(cantTicket)) || parseInt(cantTicket) === 0){
        if(firstName.value === ""){
            firstName.classList.add("is-invalid");
            console.log(firstName.value);
            firstName.focus();
            check = false;
            return;
        }
        if(lastName.value === ""){
            lastName.classList.add("is-invalid");
            console.log(lastName.value);
            lastName.focus();
            check = false;
            return;
        }

        if(email.value === "" || !(/^[^\s@]+@[^\s@]+\.[^\s@]+$/.test(email.value))){
            email.classList.add("is-invalid");
            console.log(email.value);
            email.focus();
            check = false;
            return;
        }
        if(parseInt(cantTicket) === 0 || isNaN(parseInt(cantTicket))){
            cantTicket.classList.add("is-invalid");
            console.log(cantTicket);
            cantTicket.focus();
            check = false;
            return;
        }
        if(categTicket.value === ""){
            categTicket.classList.add("is-invalid");
            console.log(categTicket.value);
            categTicket.focus();
            check = false;
            return;
        }
    }
}

function obtenerMonto(montoTotal, cantTicket, categTicket) {

    if(!validation(cantTicket, categTicket)){
        categTicket == 1 ? montoTotal = montoTotal - (DESC_EST / 100 * montoTotal) : 0;
        categTicket == 2 ? montoTotal = montoTotal - (DESC_TRA / 100 * montoTotal) : 0;
        categTicket == 3 ? montoTotal = montoTotal - (DESC_JUN / 100 * montoTotal) : 0;
        categTicket == 4 ? montoTotal = montoTotal : 0;
    
    };
    return montoTotal; 
}

// Redireccionamiento a página de cobranza
btn_comprar.addEventListener('click', function () {
    let cantTicket = document.getElementById("cantTicket").value;
    let categTicket = document.getElementById("categTicket").value;
    let montoTotal = (cantTicket * VALOR_TKT);
    
        let monto = obtenerMonto(montoTotal, cantTicket, categTicket);
        window.location.href = "pagos360.html?monto=" + encodeURIComponent(monto);
    });

});