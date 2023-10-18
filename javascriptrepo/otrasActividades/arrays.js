let arr1 = ['🍔', '🌯', '🍣', '🍕', '🍜', '🍱', '🍙', '🍘', '🥩'];

let arr2 = ['🍕', '🍕', '🍍', '🍕', '🍕'];

let arr3 = ['🍕', '🍕', '🍍', '🍕', '🍕'];

let arr4 = ['🍓', '🍋', '🍓', '🍋', '🍓'];

let arr5 = ['🌶️', '🥛', '🌶️', '🥛', '🌶️', '🥛'];

let arr6 = ['🎴', '🎴', '🎴', '🃏', '🎴', '🎴', '🎴'];

//Cambia a partir de la pizza por cervezas
console.log(arr1.fill('🍺', 4, arr1.length));

//Encuentra si hay una piña. Find necesita de una función
arr2.find(item => {
    if (item == "🍍") {
        console.log("Hay una piña en el array")
    }
});

//Quitar la piña del array
arr3.splice(2, 1);
console.log(arr3);

//Convertir todas las fresas en champis
arr4 = arr4.map(element => {
    // if (element == '🍓') {
    //     return '🍄';
    // }
    // else {
    //     return '🍋';
    // }
    return element == '🍓' ? '🍄' : '🍋';
});
console.log(arr4);

//Poner cara 🥵 después de cada chile
arr5 = arr5.flatMap(element => {
    if (element == '🌶️') {
        return ['🌶️', '🥵'];
    }
    else {
        return '🥛';
    }
})
console.log(arr5);

//Añadir 🃏 entre dos cartas 🎴
let i = 0;
arr6 = arr6.flatMap(element => {
    if (element == '🎴' && arr6[i + 1] == '🎴') {
        i++;
        return ['🎴', '🃏']
    }
    else if (element == '🎴' && arr6[i + 1] == '🃏') {
        i++;
        return '🎴';
    }
    else if (element == '🃏' && arr6[i + 1] == '🎴') {
        i++;
        return '🃏';
    }
    else {
        return '🎴';
    }
})
console.log(arr6)