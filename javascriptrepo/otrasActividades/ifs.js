let num = Math.round(Math.random());
console.log(num)
function caraCruz(numero) {
    if (numero == 1) //dos = es igualdad en el valor, tres = iguala valor y tipo
    {
        return "Cara";
    }
    else if (numero == 0) {
        return "Cruz";
    }
    else {
        return "Otro";
    }
}
console.log(caraCruz(num));

