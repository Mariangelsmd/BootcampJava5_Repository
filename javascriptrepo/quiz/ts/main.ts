//VARIABLES-----------------------------------------------------------------------------
// let num: number = Math.floor(Math.random() * 10) + 1;
let num: number = Math.floor(Math.random() * 10);
let aciertos: number = 0;
let fallos: number = 0;
let numerosUsados: number[] = [];

// ELEMENTOS----------------------------------------------------------------------------
const preg: HTMLElement | null = document.getElementById("pregunta");
const res1: HTMLElement | null = document.getElementById("res1");
const res2: HTMLElement | null = document.getElementById("res2");
const res3: HTMLElement | null = document.getElementById("res3");
const res4: HTMLElement | null = document.getElementById("res4");
const b1: HTMLElement | null = document.getElementById("boton1");
const b2: HTMLElement | null = document.getElementById("boton2");
const b3: HTMLElement | null = document.getElementById("boton3");
const b4: HTMLElement | null = document.getElementById("boton4");

//CREACION OBJETO PREGUNTA---------------------------------------------------------------
class Pregunta {
    preg: string;
    op1: string;
    op2: string;
    op3: string;
    op4: string;
    correcta: number;

    constructor(preg: string, op1: string, op2: string, op3: string, op4: string, correcta: number) {
        this.preg = preg;
        this.op1 = op1;
        this.op2 = op2;
        this.op3 = op3;
        this.op4 = op4;
        this.correcta = correcta;
    }
}

// PREGUNTAS------------------------------------------------------------------------------
const preg1: Pregunta = new Pregunta("¿Qué es C++?", "Un juego", "Un lenguaje de programación", "Un programa", "Una aplicación", 2);
const preg2: Pregunta = new Pregunta("¿Qué es una variable?", "Un valor de un tipo nunca puede ser tratado como de otro tipo", "Una variable está formada por un espacio en el sistema de almacenaje", "Un valor de un tipo puede ser tratado como de otro tipo", "Un lenguaje", 3);
const preg3: Pregunta = new Pregunta("Se le llama ______________ a cada una de las constantes, variables o expresiones involucradas en una operación o expresión", "Operando", "Expresión", "Variable", "Lenguaje", 1);
const preg4: Pregunta = new Pregunta("¿Qué es una compilación?", "Es un lenguaje de programación", "Son aplicaciones que traducen el código fuente a lenguaje de máquina, para que el equipo pueda entender las instrucciones recibidas", "Es un programa", "Es un tipo de variable", 2);
const preg5: Pregunta = new Pregunta("¿Qué es un algoritmo?", "Es una variable", "Es un dígito", "Es un programa", "se puede definir como una secuencia de instrucciones que representan un modelo de solución para determinado tipo de problema", 4);
const preg6: Pregunta = new Pregunta("Se considera que el primer lenguaje de alto nivel fue...", "Java", "C", "Ada", "Fortran", 4);
const preg7: Pregunta = new Pregunta("¿Qué es un bucle o ciclo?", "Un programa", "Una sentencia que ejecuta otra sentencia que a su vez ejecuta la primera sentencia", "Una sentencia que permite ejecutar un bloque aislado de código varias veces hasta que se cumpla (o deje de cumplirse) la condición asignada al bucle", "Un problema infinito", 3);
const preg8: Pregunta = new Pregunta("¿Para que se utiliza el pseudocódigo ?", "Para programar", "Como primer contacto para introducir conceptos básicos como el uso de estructuras de control, expresiones, variables", "Para realizar aplicaciones", "Para jugar", 2);
const preg9: Pregunta = new Pregunta("¿Qué son los depuradores?", "Es una aplicación", "Es un tipo de traductor que transforma un programa entero de un lenguaje de programación", "Es un programa", "Son los que depuran", 4);
const preg10: Pregunta = new Pregunta("¿Qué es pseint?", "Es un tipo de lenguaje", "Software libre educativo multiplataforma dirigido a personas que se inician en la programación", "Es un programa", "Es una aplicación", 2);

const preguntas: Pregunta[] = [preg1, preg2, preg3, preg4, preg5, preg6, preg7, preg8, preg9, preg10];

// ----FUNCIONES------------------
function getRespuesta(n: number) {
    let resCo = preguntas[n].correcta;
    return resCo;
}
function respuestaCorrecta(n: number) {
    if (getRespuesta(num) == n) {
        aciertos++;
        return true;
    } else {
        fallos++;
        return false;
    }
}
function nuevoNumero() {
    let numeroAleatorio;
    do {
        numeroAleatorio = Math.floor(Math.random() * 10);
    } while (numerosUsados.includes(numeroAleatorio));
    return numeroAleatorio;
}

function almacenarNumero() {
    numerosUsados.push(num);
}

function nuevaPregunta() {
    if (preg && res1 && res2 && res3 && res4 && b1 && b2 && b3 && b4) {
        preg.textContent = preguntas[num].preg;
        res1.textContent = preguntas[num].op1;
        res2.textContent = preguntas[num].op2;
        res3.textContent = preguntas[num].op3;
        res4.textContent = preguntas[num].op4;
        b1.style.backgroundColor = "white";
        b2.style.backgroundColor = "white";
        b3.style.backgroundColor = "white";
        b4.style.backgroundColor = "white";
    }
}

function comprobacion() {
    if (numerosUsados.length == 9) {
        if (preg && b1 && b2 && b3 && b4) {
            preg.textContent = "Aciertos: " + aciertos + " / Fallos: " + fallos;
            b2.hidden = true;
            b3.hidden = true;
            b4.hidden = true;
            b1.textContent = "Reintentar";
            b1.addEventListener("click", function () {
                location.reload();
            })
        }
    }
    else {
        almacenarNumero();
        num = nuevoNumero();
        nuevaPregunta();
    }
}
function btnVerde(btn: HTMLElement) {
    btn.style.backgroundColor = "greenyellow";
    setTimeout(() => {
        btn.style.backgroundColor = "white";
        comprobacion();
    }, 1000);
}
function btnRojo(btn: HTMLElement) {
    btn.style.backgroundColor = "crimson";
    setTimeout(() => {
        btn.style.backgroundColor = "white";
        comprobacion();
    }, 1000);
}

//------------FUNCIONAMIENTO DEL PROGRAMA-------------
nuevaPregunta();

// ----------EVENTOS BOTONES Y CONTADOR --------------
b1?.addEventListener("click", function () {
    if (respuestaCorrecta(1)) {
        btnVerde(b1);

    }
    else {
        btnRojo(b1);
    }
});
b2?.addEventListener("click", function () {
    if (respuestaCorrecta(2)) {
        btnVerde(b2);
    }
    else {
        btnRojo(b2);
    }
});
b3?.addEventListener("click", function () {
    if (respuestaCorrecta(3)) {
        btnVerde(b3);
    }
    else {
        btnRojo(b3);
    }
});
b4?.addEventListener("click", function () {
    if (respuestaCorrecta(4)) {
        btnVerde(b4);
    }
    else {
        btnRojo(b4);
    }
});

