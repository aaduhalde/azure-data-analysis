source(file = 'Cursos/Curso_R/3. Fundamentos de R/Librerias.R')

"___________Importar datos base soc"

base_soc <- read_delim(file = 'Cursos/Curso_R/5. Data Frames/base_soc.csv',delim = ',',
                       escape_double = FALSE,trim_ws = TRUE,locale = locale())

base_soc$X1 <- NULL

"________Crear una columna utilizando el símbolo $ que se calcule el porcentaje de pagos respecto a las ventas trimestrales"

base_soc$por_pagos <- round(base_soc$pagos / base_soc$venta_trimestral,digits = 2)




"_______Realizar gráfico de histograma donde veamos la frecuencia de clientes por id_sucursal en la misma gráfica
________utilizando la función qplot"

qplot(x= id_sucursal,data = base_soc,geom = 'histogram')



"_______Realizar gráfico de densidad donde veamos la frecuencia de clientes por sucursal y por tipo de cliente  
________mostrándolo en distintas gráficas y obtener la línea promedio de deuda_act_interes"

qplot(id_sucursal,data = base_soc,geom = 'histogram',facets = ~tipo_cliente,
      color = tipo_cliente) +
  geom_vline(xintercept =  mean(base_soc$por_pagos))








 