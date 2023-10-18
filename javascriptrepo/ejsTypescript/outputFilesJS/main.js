"use strict";
console.log("hola");
function vacia() {
    // Función que no retorna nada
}
function frase(frase) {
    // Retorna string
    return String;
}
function dostipos(siono) {
    //Retorna dos tipos de datos
    return siono;
}
// TRANSFORMACION EN ARROW FUNCTION
var vaciaA = function () {
    // Arrow sin return
};
var fraseA = function (frase) {
    // Arrow con return string
    return frase;
};
var sionoA = function (siono) {
    // Arrow con return string
    return siono;
};
// ARRAYS Y TUPLAS
var nombres = ["Carlos", "Mari", "Sergi"];
var book = ["uno", 2, "tres"];
// La tupla tiene que seguir el orden de tipo de dato
var tupla1 = ["Daniel", 4, true];
