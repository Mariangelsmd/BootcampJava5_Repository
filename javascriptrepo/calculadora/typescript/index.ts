// ----VARIABLES
let num1: string = "";
let num2: string = "";
let n1: number = 0;
let n2: number = 0;
let res: number = 0;
let operador: string = "";
let operacion: string = "";



// ----ELEMENTOS
const uno = document.getElementById("1") as HTMLButtonElement | null;
const dos = document.getElementById("2") as HTMLButtonElement | null;
const tres = document.getElementById("3") as HTMLButtonElement | null;
const cuatro = document.getElementById("4") as HTMLButtonElement | null;
const cinco = document.getElementById("5") as HTMLButtonElement | null;
const seis = document.getElementById("6") as HTMLButtonElement | null;
const siete = document.getElementById("7") as HTMLButtonElement | null;
const ocho = document.getElementById("8") as HTMLButtonElement | null;
const nueve = document.getElementById("9") as HTMLButtonElement | null;
const cero = document.getElementById("0") as HTMLButtonElement | null;
const del = document.getElementById("del") as HTMLButtonElement | null;
const mas = document.getElementById("mas") as HTMLButtonElement | null;
const menos = document.getElementById("menos") as HTMLButtonElement | null;
const por = document.getElementById("por") as HTMLButtonElement | null;
const dividir = document.getElementById("dividir") as HTMLButtonElement | null;
const reset = document.getElementById("reset") as HTMLButtonElement | null;
const igual = document.getElementById("igual") as HTMLButtonElement | null;
const pantalla = document.getElementById("pantalla") as HTMLButtonElement | null;
const coma = document.getElementById("coma") as HTMLButtonElement | null;

//-----FUNCIONES
function añadirNumero(num: string) {
    if (operador == "" && num1 == "") {
        operacion = "";
        num1 = num;
        operacion += num;
    }
    else if (operador == "" && num1 != "") {
        num1 += num;
        operacion += num;
    }
    else if (operador != ""){
        num2 += num;
        operacion += num;
    }
    mostrar();
}
function añadirOperador(op: string) {
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
    if (uno) uno.disabled = true;
    if (dos) dos.disabled = true;
    if (tres) tres.disabled = true;
    if (cuatro) cuatro.disabled = true;
    if (cinco) cinco.disabled = true;
    if (seis) seis.disabled = true;
    if (siete) siete.disabled = true;
    if (ocho) ocho.disabled = true;
    if (nueve) nueve.disabled = true;
    if (cero) cero.disabled = true;
    if (mas) mas.disabled = true;
    if (menos) menos.disabled = true;
    if (por) por.disabled = true;
    if (dividir) dividir.disabled = true;
    if (coma) coma.disabled = true;
    if (igual) igual.disabled = true;
    if (del) del.disabled = true;
}

function activarBotones() {
    if (uno) uno.disabled = false;
    if (dos) dos.disabled = false;
    if (tres) tres.disabled = false;
    if (cuatro) cuatro.disabled = false;
    if (cinco) cinco.disabled = false;
    if (seis) seis.disabled = false;
    if (siete) siete.disabled = false;
    if (ocho) ocho.disabled = false;
    if (nueve) nueve.disabled = false;
    if (cero) cero.disabled = false;
    if (mas) mas.disabled = false;
    if (menos) menos.disabled = false;
    if (por) por.disabled = false;
    if (dividir) dividir.disabled = false;
    if (coma) coma.disabled = false;
    if (igual) igual.disabled = false;
    if (del) del.disabled = false;
}


// ----EVENTOS
uno?.addEventListener("click", function () {
    añadirNumero("1");
})
dos?.addEventListener("click", function () {
    añadirNumero("2");
})
tres?.addEventListener("click", function () {
    añadirNumero("3");
})
cuatro?.addEventListener("click", function () {
    añadirNumero("4");
})
cinco?.addEventListener("click", function () {
    añadirNumero("5");
})
seis?.addEventListener("click", function () {
    añadirNumero("6");
})
siete?.addEventListener("click", function () {
    añadirNumero("7");
})
ocho?.addEventListener("click", function () {
    añadirNumero("8");
})
nueve?.addEventListener("click", function () {
    añadirNumero("9");
})
cero?.addEventListener("click", function () {
    añadirNumero("0");
})
del?.addEventListener("click", function () {
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
})
mas?.addEventListener("click", function () {
    añadirOperador(" + ");
})
menos?.addEventListener("click", function () {
    añadirOperador(" - ");
})
por?.addEventListener("click", function () {
    añadirOperador(" * ");
})
dividir?.addEventListener("click", function () {
    añadirOperador(" / ");
})
reset?.addEventListener("click", function () {
    resetear();
    operacion = "0";
    mostrar();
    activarBotones();
})
igual?.addEventListener("click", function () {
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
})
coma?.addEventListener("click", function () {
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

})