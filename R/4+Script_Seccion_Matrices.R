source(file = 'Cursos/Curso_R/3. Fundamentos de R/Librerias.R')


nombres_productos <- c('Tortas','Jugos','Yorgurt con cereal','Molletes')
nombres_cafeterias <- c('Cafeteria A','Cafeteria B','Cafeteria C')
valores <- c(20,22,18,10,9,12,15,15,17,13,12,10)

"_________Construir la matriz"

matriz_precios <- matrix(data = valores,nrow = 4,byrow = TRUE,dimnames = list(nombres_productos,nombres_cafeterias))

"_______Obtener las dimensiones de la matriz"

dim(matriz_precios)

"_________Colnames y row_names"

nombre_columnas <- colnames(matriz_precios)
nombre_filas <- rownames(matriz_precios)

nombre_columnas[3]
nombre_filas[1]

"__________operaciones con matrices"

matriz_precios
t(matriz_precios)

matriz_precios * matriz_precios

"_______Crear segunda matriz"

matriz_precios2 <- matrix(data =c(1:16),nrow = 4)

matriz_precios + matriz_precios2

"_______Agregar una nueva columna a la matriz"

'Cafeteria D' <- c(21,15,13,15)

matriz_precios <- cbind(matriz_precios,`Cafeteria D`) 



"______________Gráficar con matplot"

matplot(matriz_precios,type = 'o',pch = NULL,col = c('red','black','blue','orange'),
        xlab = 'Distintos productos',ylab = 'Valor del producto',
        xlim = c(1,4),ylim = c(9,22))



subconjunto_1 <- matriz_precios[c(1:3),c(2)]

matriz_precios[,c(-2)]

"_________Mi primer función"

mi_primer_funcion <- function(argumento_funcion){
  argumento_funcion <- round(argumento_funcion * 0.85)
  return(argumento_funcion) 
}

"_______Llamar a la función"

matriz_promociones <- mi_primer_funcion(argumento_funcion = matriz_precios)

























