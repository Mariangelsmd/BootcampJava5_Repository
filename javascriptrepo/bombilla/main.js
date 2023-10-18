let bombilla = false;

const boton = document.getElementById("boton");
boton.addEventListener('click', function () {
    if (!bombilla) {
        document.getElementById("intOff").src = "./bon.jpg";
        document.getElementById("bombillaOff").src = "./on.jpg";
        bombilla = true;
    }
    else {
        document.getElementById("intOff").src = "./boff.jpg";
        document.getElementById("bombillaOff").src = "./off.jpg";
        bombilla = false;
    }
})

const brillo = document.getElementById("brillo");
brillo.addEventListener('input', function() {
    const valor = brillo.value;
    document.getElementById("bombillaOff").style.filter = `brightness(${valor}%)`;
})

const tamano = document.getElementById("tamaño");
tamano.addEventListener('input', function() {
    const valor = tamano.value;
    document.getElementById("bombillaOff").style.width = `${valor}%`;
})

const rotacion = document.getElementById("rotacion");
rotacion.addEventListener('input', function() {
    const valor = rotacion.value;
    document.getElementById("bombillaOff").style.transform = `rotate(${valor}deg)`;
})