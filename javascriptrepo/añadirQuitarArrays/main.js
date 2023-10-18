let arr = [];

/*----------------------------FUNCIONES--------------------------------------*/

//Función para meter el array en la caja de texto del html
function displayArr() {
    document.getElementById("caja").textContent = arr.join(", ");
}
//Función para obtener un icono random del array
function randomIcon() {
    let icons = ['😀', '🥰', '😜', '😈', '👾', '👻', '🐱', '🦊', '🐸', '🐟', '🐧', '🎃', '🎁', '🌸', '🧸', '🍕', '🍔', '🧁', '🍓', '🍉', '🍒'];
    return icons[Math.floor(Math.random() * 20)];
}
//Función para array.push
function fPush() {
    arr.push(randomIcon());
    displayArr();
}
//Función para array.unsift
function fUnsift() {
    arr.unshift(randomIcon());
    displayArr();
}
//Función insert at
function fInsert() {
    arr.splice((document.getElementById("nums1").value),0,randomIcon());
    displayArr();
}
//Función para pop
function fPop() {
    arr.pop(randomIcon());
    displayArr();
}
//Función para shift
function fShift() {
    arr.shift(randomIcon());
    displayArr();
}
//Función para remove
function fRemove() {
    arr.splice((document.getElementById("nums2").value),1);
    displayArr(); 
}

/*----------------------------EVENTOS--------------------------------------*/

//Evento del botón push
const bPush = document.getElementById("push");
bPush.onclick = function() {
    fPush();
}
//Evento del botón unsift
const bUnsift = document.getElementById("unsift");
bUnsift.onclick = function() {
    fUnsift();
}
//Evento del botón insert at
const bInsert = document.getElementById("insert");
bInsert.onclick = function() {
    fInsert();
}
//Evento del botón pop
const bPop = document.getElementById("pop");
bPop.onclick = function() {
    fPop();
}
//Evento del botón shift
const bShift = document.getElementById("shift");
bShift.onclick = function() {
    fShift();
}
//Evento del botón remove
const bRemove = document.getElementById("remove");
bRemove.onclick = function() {
    fRemove();
}