source(file = 'Cursos/Curso_R/3. Fundamentos de R/Librerias.R')


"___________Importar datos ejercicio"

base_ejercicio <- read_delim(file = 'Cursos/Curso_R/6. Visualización avanzada con ggplot2/6_16_Ejercicio.csv',delim = ',',
                       escape_double = FALSE,trim_ws = TRUE,locale = locale())

"____________Obtener el mes donde se realizaron las mayores ventas con un gráfico de barras"

ggplot(data = base_ejercicio,aes(x = B_mes,y = ventas_tot)) + 
  geom_bar(stat = 'identity')

"____________Utilizando setting en la función geom_bar poner las barras de color azul
_____________y tema obscuro"

ggplot(data = base_ejercicio,aes(x = B_mes,y = ventas_tot)) + 
  geom_bar(stat = 'identity',color = 'blue') + 
  theme_dark()


"__________Obtener datos atípicos con un boxplot de la variable B_adeudo vs no_clientes"

ggplot(data = base_ejercicio,aes(x = B_adeudo,y= no_clientes)) +
  geom_boxplot()




"___________Usando Transfomaciones estadísticas obtener el promedio del porcentaje de pagos de las personas que tienen adeudo
____________por id_sucursal"
base_ejercicio$porc_pagos <- round(base_ejercicio$pagos_tot / base_ejercicio$ventas_tot,2)

base_ejercicio %>% filter(B_adeudo == 'Con adeudo') %>%
  ggplot(aes(id_sucursal)) + 
  stat_summary(aes(y = porc_pagos),fun = 'mean',geom = 'bar')









