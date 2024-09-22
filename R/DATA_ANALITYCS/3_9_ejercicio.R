"____________Construir un vector númerico con 10 entradas de los números 5:14"
vector_numerico <- c(5:14)

"____________Obtenga la longitud del vector"

length(vector_numerico)


"___________Uso del [] para acceder a la primera posición"

vector_numerico[1]



"_________Uso de la función length para acceder a la última posición del vector"
vector_numerico[length(vector_numerico)]


"_________Agregue una nueva entrada con el número 23 al vector"

vector_numerico <- append(x = vector_numerico,values = 23,after = length(vector_numerico))

