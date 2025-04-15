
variable_numerica <- 5 
variable_caracter <- 'Mi primer variable caracter' 
variable_fecha <- as.Date('2021-05-08',format = '%Y-%m-%d')

str(variable_fecha)


"___________Trabajar con variable numérica"
variable_numerica1 <- 7
variable_numerica2 <- variable_numerica + variable_numerica1

"________trabajar con variable carácter"

variable_caracter <- paste(variable_caracter,'en 2021',sep = ' ')

"_________Trabajar con variable fecha"

variable_fecha2 <- as.Date('2021-04-08')
variable_fecha3 <- as.numeric(variable_fecha - variable_fecha2)


