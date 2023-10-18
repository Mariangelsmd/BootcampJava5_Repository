console.log("hola");

function vacia(): void {
    // Función que no retorna nada
}

function frase(frase: string) {
    // Retorna string
    return String;
}

function dostipos(siono: boolean | string) {
    //Retorna dos tipos de datos
    return siono;
}

// TRANSFORMACION EN ARROW FUNCTION

const vaciaA = (): void => {
    // Arrow sin return
}

const fraseA = (frase: string) => {
    // Arrow con return string
    return frase;
}

const sionoA = (siono: boolean | string) => {
    // Arrow con return string
    return siono;
}

// ARRAYS Y TUPLAS
let nombres: string[] = ["Carlos", "Mari", "Sergi"];
let book: (string | number)[] = ["uno", 2, "tres"];
// La tupla tiene que seguir el orden de tipo de dato
let tupla1: [string, number, boolean] = ["Daniel", 4, true];
