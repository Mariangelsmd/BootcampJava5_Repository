"use strict";
// ----VARIABLES
let num1 = "";
let num2 = "";
let n1 = 0;
let n2 = 0;
let res = 0;
let operador = "";
let operacion = "";
// ----ELEMENTOS
const uno = document.getElementById("1");
const dos = document.getElementById("2");
const tres = document.getElementById("3");
const cuatro = document.getElementById("4");
const cinco = document.getElementById("5");
const seis = document.getElementById("6");
const siete = document.getElementById("7");
const ocho = document.getElementById("8");
const nueve = document.getElementById("9");
const cero = document.getElementById("0");
const del = document.getElementById("del");
const mas = document.getElementById("mas");
const menos = document.getElementById("menos");
const por = document.getElementById("por");
const dividir = document.getElementById("dividir");
const reset = document.getElementById("reset");
const igual = document.getElementById("igual");
const pantalla = document.getElementById("pantalla");
const coma = document.getElementById("coma");
//-----FUNCIONES
function añadirNumero(num) {
    if (operador == "" && num1 == "") {
        operacion = "";
        num1 = num;
        operacion += num;
    }
    else if (operador == "" && num1 != "") {
        num1 += num;
        operacion += num;
    }
    else if (operador != "") {
        num2 += num;
        operacion += num;
    }
    mostrar();
}
function añadirOperador(op) {
    if (operador == "") {
        operador = op;
        operacion += operador;
    }
    else {
        operacion = "Err. Sólo una operación disponible.";
        desactivarBotones();
        resetear;
    }
    mostrar();
}
function mostrar() {
    if (pantalla !== null && pantalla !== undefined) {
        pantalla.textContent = operacion;
    }
}
function parseFloats() {
    n1 = parseFloat(num1);
    n2 = parseFloat(num2);
}
function resetear() {
    num1 = "";
    num2 = "";
    n1 = 0;
    n2 = 0;
    operador = "";
    res = 0;
    activarBotones();
}
function desactivarBotones() {
    if (uno)
        uno.disabled = true;
    if (dos)
        dos.disabled = true;
    if (tres)
        tres.disabled = true;
    if (cuatro)
        cuatro.disabled = true;
    if (cinco)
        cinco.disabled = true;
    if (seis)
        seis.disabled = true;
    if (siete)
        siete.disabled = true;
    if (ocho)
        ocho.disabled = true;
    if (nueve)
        nueve.disabled = true;
    if (cero)
        cero.disabled = true;
    if (mas)
        mas.disabled = true;
    if (menos)
        menos.disabled = true;
    if (por)
        por.disabled = true;
    if (dividir)
        dividir.disabled = true;
    if (coma)
        coma.disabled = true;
    if (igual)
        igual.disabled = true;
    if (del)
        del.disabled = true;
}
function activarBotones() {
    if (uno)
        uno.disabled = false;
    if (dos)
        dos.disabled = false;
    if (tres)
        tres.disabled = false;
    if (cuatro)
        cuatro.disabled = false;
    if (cinco)
        cinco.disabled = false;
    if (seis)
        seis.disabled = false;
    if (siete)
        siete.disabled = false;
    if (ocho)
        ocho.disabled = false;
    if (nueve)
        nueve.disabled = false;
    if (cero)
        cero.disabled = false;
    if (mas)
        mas.disabled = false;
    if (menos)
        menos.disabled = false;
    if (por)
        por.disabled = false;
    if (dividir)
        dividir.disabled = false;
    if (coma)
        coma.disabled = false;
    if (igual)
        igual.disabled = false;
    if (del)
        del.disabled = false;
}
// ----EVENTOS
uno === null || uno === void 0 ? void 0 : uno.addEventListener("click", function () {
    añadirNumero("1");
});
dos === null || dos === void 0 ? void 0 : dos.addEventListener("click", function () {
    añadirNumero("2");
});
tres === null || tres === void 0 ? void 0 : tres.addEventListener("click", function () {
    añadirNumero("3");
});
cuatro === null || cuatro === void 0 ? void 0 : cuatro.addEventListener("click", function () {
    añadirNumero("4");
});
cinco === null || cinco === void 0 ? void 0 : cinco.addEventListener("click", function () {
    añadirNumero("5");
});
seis === null || seis === void 0 ? void 0 : seis.addEventListener("click", function () {
    añadirNumero("6");
});
siete === null || siete === void 0 ? void 0 : siete.addEventListener("click", function () {
    añadirNumero("7");
});
ocho === null || ocho === void 0 ? void 0 : ocho.addEventListener("click", function () {
    añadirNumero("8");
});
nueve === null || nueve === void 0 ? void 0 : nueve.addEventListener("click", function () {
    añadirNumero("9");
});
cero === null || cero === void 0 ? void 0 : cero.addEventListener("click", function () {
    añadirNumero("0");
});
del === null || del === void 0 ? void 0 : del.addEventListener("click", function () {
    if (num2 == "" && operador == "") {
        num1 = num1.slice(0, -1);
    }
    else if (num2 == "" && operador != "") {
        operador = "";
    }
    else {
        num2 = num2.slice(0, -1);
    }
    operacion = operacion.slice(0, -1);
    mostrar();
    activarBotones();
});
mas === null || mas === void 0 ? void 0 : mas.addEventListener("click", function () {
    añadirOperador(" + ");
});
menos === null || menos === void 0 ? void 0 : menos.addEventListener("click", function () {
    añadirOperador(" - ");
});
por === null || por === void 0 ? void 0 : por.addEventListener("click", function () {
    añadirOperador(" * ");
});
dividir === null || dividir === void 0 ? void 0 : dividir.addEventListener("click", function () {
    añadirOperador(" / ");
});
reset === null || reset === void 0 ? void 0 : reset.addEventListener("click", function () {
    resetear();
    operacion = "0";
    mostrar();
    activarBotones();
});
igual === null || igual === void 0 ? void 0 : igual.addEventListener("click", function () {
    if (operador == " + ") {
        parseFloats();
        res = n1 + n2;
    }
    else if (operador == " - ") {
        parseFloats();
        res = n1 - (n2);
    }
    else if (operador == " * ") {
        parseFloats();
        res = n1 * n2;
    }
    else if (operador == " / ") {
        parseFloats();
        res = n1 / n2;
    }
    operacion = res.toString();
    mostrar();
    resetear();
    desactivarBotones();
});
coma === null || coma === void 0 ? void 0 : coma.addEventListener("click", function () {
    if (num2 == "") {
        if (!num1.includes(".")) {
            num1 += ".";
            operacion += ",";
        }
        else {
            operacion = "Err. Más de una coma en el número.";
            desactivarBotones();
            resetear();
            mostrar();
        }
    }
    else {
        if (!num2.includes(".")) {
            num2 += ".";
            operacion
                += ",";
            mostrar();
        }
        else {
            operacion = "Err. Más de una coma en el número.";
            desactivarBotones();
            resetear();
        }
    }
    mostrar();
});
