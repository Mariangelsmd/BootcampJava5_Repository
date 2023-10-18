## Versión de TS
La versión de Typescript instalada es:  
`$ tsc -v 
Version 5.2.2`

## ¿Qué ocurre con Typescript
Cuando configuramos el fichero .json y establecemos un rootdir y outdir lo que nos realiza la versión de TSC instalada es "traducir" el lenguaje TS escrito en el fichero main.ts a un ficher main.js en javascript.

Para activarlo tenemos que esribir en la consola:  
`tsc --watch`

## Tipos de varianbles
¿Qué tipo de dato utilizarías para…?  
* Limitar que solamente es introduzca un nombre en una variable. 
Por ejemplo David en una variable  
string

* Limitar que solamente se pueda introducir un valor booleano en una variable.
Por ejemplo: true o false.  
boolean
* Limitar que solamente se pueda introducir un valor numérico en una variable
Por ejemplo: 31  
number
* Limitar que solamente se pueda introducir un valor booleano o numérico en una variable
Por ejemplo: true o 1234
boolean | number

Si no se introduce correctamente el tipo de variable y su contenido se marcará un error y no se podrá compilar.
