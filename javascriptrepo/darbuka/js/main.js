"use strict";
// --- SELECCION DE IMAGENES
const img1 = document.getElementById("img1");
const img2 = document.getElementById("img2");
const img3 = document.getElementById("img3");
const img4 = document.getElementById("img4");
const img5 = document.getElementById("img5");
// ---- FUNCIONES
function pulsacion(event) {
    const tecla = event.key;
    if (tecla === 'Q' || tecla === 'q') {
        evento("aud1", img1);
    }
    if (tecla === 'W' || tecla === 'w') {
        evento("aud2", img2);
    }
    if (tecla === 'E' || tecla === 'e') {
        evento("aud3", img3);
    }
    if (tecla === 'R' || tecla === 'r') {
        evento("aud4", img4);
    }
    if (tecla === 'T' || tecla === 't') {
        evento("aud5", img5);
    }
}
function evento(audio, imagen) {
    // Reproduce el sonido
    const sonido = document.getElementById(audio);
    sonido.play();
    // Reproduce el gif
    imagen.src = "./images/1.gif";
    setTimeout(() => {
        imagen.src = "./images/1.jpeg";
    }, 1000);
}
// ---- EVENTO
document.addEventListener('keydown', pulsacion);
