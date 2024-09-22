"__________Ejercicio matirces"


"________Crear una matriz de dimensiones 3 x 4, donde las filas hagan referencia a los años  de un automóvil
_________del 2019-2021 y se comparen 4 marcas Nissan, Ford, Kia y Seat"
valores <- c(100000,95000,110000,105000,150000,155000,145000,142000,200000,205000,210000,215000)
nombres_carros <- c('Nissan','Ford','Kia','Seat')
anios <- c(2019,2020,2021)
matriz_carros <- matrix(data = valores,nrow = 3,byrow = TRUE,dimnames = list(anios,nombres_carros))

"________Agregar una nueva marca la cual será Audi y los valores para los años 2019-2021 son: 150,000,200,000 y 290,000"

Audi <- c(150000,200000,290000)
matriz_carros <- cbind(matriz_carros,Audi)


"______________Gráficar con matplot"

matplot(matriz_carros,type = 'o',col = c('orange','black','blue','pink','red'),
        xlab = 'Año',ylab = 'Precio')

