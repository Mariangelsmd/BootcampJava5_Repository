//---BARRAS----
const barraGeneral = document.getElementById("barraGeneral");
const barraComida = document.getElementById("barraComida");
const barraDormir = document.getElementById("barraDormir");
const barraJuego = document.getElementById("barraJuego");
const barraEjercicio = document.getElementById("barraEjercicio");
const sonidoZorro = document.getElementById("sonidoZorro");

// ---BOTONES---
const imgComida = document.getElementById("imgComida");
const imgDormir = document.getElementById("imgDormir");
const imgJuego = document.getElementById("imgJuego");
const imgEjercicio = document.getElementById("imgEjercicio");
const zorro = document.getElementById("zorroContainer");
const corazon = document.getElementById("imgCorazon");

// ----OTROS-----
let activo = true;
let muerto = false;
let girado = false;
const texto = document.getElementById("texto");
const revivir = document.getElementById("cajaRevivir");
let valor1 = Math.floor(Math.random() * 5) + 1;
let valor2 = Math.floor(Math.random() * 5) + 1;
let valor3 = Math.floor(Math.random() * 5) + 1;
let valor4 = Math.floor(Math.random() * 5) + 1;
let valor5 = Math.floor(Math.random() * 99) + 1;
let valor6 = Math.floor(Math.random() * 99) + 1;
let valor7 = Math.floor(Math.random() * 99) + 1;
let valor8 = Math.floor(Math.random() * 99) + 1;



// ----FUNCIONES----
function aumentarPorcentaje(barra) {
    barra.value += 40;
}

function actualizarGeneral() {
    barraGeneral.value = (barraComida.value + barraDormir.value + barraEjercicio.value + barraJuego.value) / 4
}

function vibracion() {
    sonidoZorro.play();
    if (!girado) {
        // Girar hacia la izquierda
        zorro.style.animation = "shake-left 0.5s ease-in-out";
    } else {
        // Girar hacia la derecha
        zorro.style.animation = "shake-right 0.5s ease-in-out";
    }
    girado = !girado;
    // Limpiar la animación después de 0.5 segundos 
    setTimeout(function () {
        zorro.style.animation = "";
    }, 500);
}

// ---VALORES INICIALES---
barraComida.value = valor5;
barraJuego.value = valor6;
barraEjercicio.value = valor7;
barraDormir.value = valor8;
actualizarGeneral();

// ---EVENTOS------

imgComida.addEventListener("click", function () {
    if (activo) {
        aumentarPorcentaje(barraComida);
        actualizarGeneral();
        vibracion();
    }

})
imgJuego.addEventListener("click", function () {
    if (activo) {
        aumentarPorcentaje(barraJuego);
        actualizarGeneral();
        vibracion();
    }
})
imgEjercicio.addEventListener("click", function () {
    if (activo) {
        aumentarPorcentaje(barraEjercicio);
        actualizarGeneral();
        vibracion();
    }
})
imgDormir.addEventListener("click", function () {
    if (activo) {
        aumentarPorcentaje(barraDormir);
        actualizarGeneral();
        vibracion();
    }
})
corazon.addEventListener("click", function () {
    barraComida.value = valor5;
    barraJuego.value = valor6;
    barraEjercicio.value = valor7;
    barraDormir.value = valor8;
    actualizarGeneral();
    texto.textContent = "¡Ahri ha revivido!";
    vibracion();
    activo = true;
    muerto = false;
    if (!muerto) {
        revivir.hidden = true;
        revivir.style.opacity = 0;
    }
})

// ----INTERVALO---
const intervalo = setInterval(function () {
    barraComida.value -= valor1;
    barraEjercicio.value -= valor2;
    barraJuego.value -= valor3;
    barraDormir.value -= valor4;
    actualizarGeneral();
    // Si el valor llega a 0 se detiene
    if (barraGeneral.value <= 0) {
        texto.textContent = "Ahri se ha debilitado...";
        activo = false;
        muerto = true;
        if (muerto) {
            revivir.hidden = false;
            revivir.style.opacity = 100;
        }
    }
}, 1000);


