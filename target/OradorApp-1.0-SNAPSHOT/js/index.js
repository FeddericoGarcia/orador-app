document.addEventListener("DOMContentLoaded", function () {
//Declarando variables 
const VALOR_TKT = 200;
const DESC_EST = 80;
const DESC_TRA = 50;
const DESC_JUN = 15;

//Obteniendo DOM
var firstName = document.getElementById("firstName");
var lastName = document.getElementById("lastName");
var email = document.getElementById("email");
var cant_tkt = document.getElementById("cantTicket").value;
var categ_tkt = document.getElementById("categTicket").value;
var pagarTotal = document.getElementById("pagarTotal");

//Limpiar inputs
btn_delete.addEventListener('click', ()=>{
    let classForm = document.querySelectorAll(".form-control, .form-select");
    for (let i = 0; i < classForm.length; i++) {
        classForm[i].classList.remove("is-invalid");
    }

});

//Retornar resumen a traves del evento
btn_resm.addEventListener('click', ()=>{

    validation();

    categ_tkt == 1 ? pagarTotal.innerHTML = `${cant_tkt * DESC_EST / VALOR_TKT}` : 0
    categ_tkt == 2 ? pagarTotal.innerHTML = `${cant_tkt * DESC_TRA / VALOR_TKT}` : 0
    categ_tkt == 3 ? pagarTotal.innerHTML = `${cant_tkt * DESC_JUN / VALOR_TKT}` : 0
    categ_tkt == 4 ? pagarTotal.innerHTML = `${cant_tkt * VALOR_TKT}` : 0
    console.log(cant_tkt)
    console.log(categ_tkt)
    
});

//Validar datos inputs
function validation(){

    if(firstName.value === ""){
        firstName.classList.add("is-invalid");
        console.log(firstName.value);
        firstName.focus();
        return;
    }
    if(lastName.value === ""){
        lastName.classList.add("is-invalid");
        console.log(lastName.value);
        lastName.focus();
        return;
    }
    if(email.value === ""){
        email.classList.add("is-invalid");
        console.log(email.value);
        email.focus();
        return;
    }
    if(cant_tkt.value == 0 || isNaN(cant_tkt.value)){
        cant_tkt.classList.add("is-invalid");
        console.log(cant_tkt.value);
        cant_tkt.focus();
        return;
    }
    if(categ_tkt.value == ""){
        categ_tkt.classList.add("is-invalid");
        console.log(categ_tkt.value);
        categ_tkt.focus();
        return;
    }

}
});