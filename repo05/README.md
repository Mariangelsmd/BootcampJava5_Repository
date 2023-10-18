# repo05
## Diferencias entre merge FF y no FF
Las diferencias entres ambos merge se basa en que  el **FF** pasa los diferentes commits de nuestra rama "horizontalmente" al main manteniendo el numero de commits realizados en la rama secundaria.  
En el caso del **no FF** hace una agrupación de nuestros diferentes commits y los devuelve a la rama main en un sólo commit.

## Comando "adog"
Para poder crear este comando personalizado en VSC deberemos introducir el siguiente código en consola: `git config --global alias.adog "log --all --decorate --oneline --graph"`. Con esto ya podremos usar `git adog` sin problema.
