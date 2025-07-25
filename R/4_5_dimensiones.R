source(file = 'Cursos/Curso_R/3. Fundamentos de R/Librerias.R')


nombres_productos <- c('Tortas','Jugos','Yorgurt con cereal','Molletes')
nombres_cafeterias <- c('Cafeteria A','Cafeteria B','Cafeteria C')
valores <- c(20,22,18,10,9,12,15,15,17,13,12,10)

"_________Construir la matriz"

matriz_precios <- matrix(data = valores,nrow = 4,byrow = TRUE,dimnames = list(nombres_productos,nombres_cafeterias))

"_______Obtener las dimensiones de la matriz"

dim(matriz_precios)























