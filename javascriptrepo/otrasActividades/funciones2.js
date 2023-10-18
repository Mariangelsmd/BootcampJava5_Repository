//Parte 1
function numeros(num1, num2, num3) {
    return num1 + num2 + num3;
}
console.log(numeros(2, 2, 4));
//Parte 2
function nombre(nom1, nom2, nom3) {
    return nom1 + " " + nom2 + " " + nom3;
}
console.log(nombre("Mari Ángeles", "Molina", "Díaz"));
//Parte 3
function mayor(num1, num2) {
    if (num1 > num2) {
        return num1;
    }
    else if (num2 > num1) {
        return num2;
    }
    else {
        return "Nada";
    }
}
console.log(mayor(3, 4));