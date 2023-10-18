let caja1 = "";
let caja2 = "";
let estrella = "🌟";
let contador1 = 0;
let contador2 = 0;
let random = ["💎", "📃", "✂️"];

//-------FUNCIONES--------------------------------------------------------------------------------
function displayCaja1() {
    document.getElementById("caja1").textContent = caja1;
}
function displayCaja2() {
    document.getElementById("caja2").textContent = caja2;
}
function displayEstrella1() {
    document.getElementById("caja1").textContent = estrella;
}
function displayEstrella2() {
    document.getElementById("caja2").textContent = estrella;
}
function displayContador1() {
    document.getElementById("contador-1").textContent = contador1;
}
function displayContador2() {
    document.getElementById("contador-2").textContent = contador2;
}
function finPartida() {
        bPapel1.hidden = true;
        bPapel2.hidden = true;
        bPiedra1.hidden = true;
        bPiedra2.hidden = true;
        bTijera1.hidden = true;
        bTijera2.hidden = true;
        bRandom1.hidden = true;
        bRandom2.hidden = true;
        document.getElementById("mensaje").textContent = "🎉 Fin de la partida 🎉";
    
}
//--------EVENTOS CAJAS---------------------------------------------------------------------------
const bPiedra1 = document.getElementById("p1");
bPiedra1.onclick = function () {
    caja1 = random[0];
    displayEstrella1();
}
const bPiedra2 = document.getElementById("p2");
bPiedra2.onclick = function () {
    caja2 = random[0];
    displayEstrella2();
}
const bPapel1 = document.getElementById("pp1");
bPapel1.onclick = function () {
    caja1 = random[1];
    displayEstrella1();
}
const bPapel2 = document.getElementById("pp2");
bPapel2.onclick = function () {
    caja2 = random[1];
    displayEstrella2();
}
const bTijera1 = document.getElementById("t1");
bTijera1.onclick = function () {
    caja1 = random[2];
    displayEstrella1();
}
const bTijera2 = document.getElementById("t2");
bTijera2.onclick = function () {
    caja2 = random[2];
    displayEstrella2();
}
const bRandom1 = document.getElementById("r1");
bRandom1.onclick = function () {
    caja1 = random[Math.floor(Math.random() * 3)];
    displayEstrella1();
}
const bRandom2 = document.getElementById("r2");
bRandom2.onclick = function () {
    caja2 = random[Math.floor(Math.random() * 3)];
    displayEstrella2();
}
const bResultado = document.getElementById("mr");
bResultado.onclick = function () {
    displayCaja1();
    displayCaja2();
        //--------CONTADORES--------------------------------------------------------------------------------
    if (caja1 == "💎" && caja2 == "📃") {
        //gana 2
        contador2++;
        displayContador2();
        if (contador1 == 3 || contador2 == 3){
            finPartida();
        }

        
        
    }
    else if (caja1 == "💎" && caja2 == "✂️") {
        //gana 1
        contador1++;
        displayContador1();
        if (contador1 == 3 || contador2 == 3){
            finPartida();
        }
    }
    else if (caja1 == "📃" && caja2 == "💎") {
        //gana 1
        contador1++;
        displayContador1();
        if (contador1 == 3 || contador2 == 3){
            finPartida();
        }
    }
    else if (caja1 == "📃" && caja2 == "✂️") {
        //gana 2
        contador2++;
        displayContador2();
        if (contador1 == 3 || contador2 == 3){
            finPartida();
        }
    }
    else if (caja1 == "✂️" && caja2 == "💎") {
        //gana 2
        contador2++;
        displayContador2();
        if (contador1 == 3 || contador2 == 3){
            finPartida();
        }
    }
    else if (caja1 == "✂️" && caja2 == "📃") {
        //gana 1
        contador1++;
        displayContador1();
        if (contador1 == 3 || contador2 == 3){
            finPartida();
        }
    }
    else {
        //empate
    }
     
}
const bReiniciar = document.getElementById("reiniciar");
bReiniciar.onclick = function () {
    contador1 = 0;
    contador2 = 0;
    caja1 = "";
    caja2 = "";
    displayCaja1();
    displayCaja2();
    displayContador1();
    displayContador2();
    bPapel1.hidden = false;
    bPapel2.hidden = false;
    bPiedra1.hidden = false;
    bPiedra2.hidden = false;
    bTijera1.hidden = false;
    bTijera2.hidden = false;
    bRandom1.hidden = false;
    bRandom2.hidden = false;
    document.getElementById("mensaje").textContent = "👾 Que comience el juego 👾";
}

