source(file = 'Cursos/Curso_R/3. Fundamentos de R/Librerias.R')

"___________Importar datos"

base_datos <- read_delim(file = 'Cursos/Curso_R/5. Data Frames/proyecto1.csv',delim = ',',escape_double = FALSE,trim_ws = TRUE,locale = locale(),
                         col_names = TRUE) 

str(base_datos)

"_______Uso de $"

base_datos$ventas_tot[981]

"________Operaciones básicas con un Data Frame"

head(base_datos)
"__________Crear columna nueva"

base_datos$porc_adeudo <- round(base_datos$adeudo_actual / base_datos$ventas_tot,digits = 2)

"________Operaciones básicas"

base_datos$columna_prueba <- sum(base_datos$adeudo_actual)
mean(base_datos$no_cdtos)
mean(base_datos$no_clientes)
max(base_datos$fec_ini_cdto)

"______Eliminar columna"
base_datos$columna_prueba <- NULL

"_______Filtrar Data Frame"

base_datos2 <- filter(base_datos,B_adeudo == 'Con adeudo' & adeudo_actual > 10000 & B_mes == '2020-03-15')
head(base_datos2)
unique(base_datos2$B_adeudo)
unique(base_datos$B_adeudo)
min(base_datos2$adeudo_actual)
min(base_datos2$fec_ini_cdto)
max(base_datos2$fec_ini_cdto)

"______________Visualización con qplot"

qplot(B_mes,data = base_datos,geom = 'density',color = B_adeudo,bins = 30,
      xlab = 'MES',ylab = 'Frecuencia',main = 'Distribución de adeudo por mes') 
  



"_______Construir data frame"

id_sucursal <- c(0:17,22,37,42,68,97,65,98,36)
suc <- c('SYS','CDMX','VER','LEON','QRO','ECA','PUE','AGS','JAL','GDL','TOL','TIJ',
         'GTO','OAX','TAB','SLP','BCS','BCN','PUE','BCN','AGS','PUE','VER','TOL','GDL','BCS')

nombres_suc <- data.frame(id_sucursal,suc)

"_______Unir data frames"

base_datos_union <- merge(x= base_datos,y = nombres_suc, by = 'id_sucursal',all.x = TRUE)
head(base_datos_union)


"________-Qplot parte 2"

qplot(ventas_tot,data = base_datos_union,geom = 'density',color = B_adeudo,bins = 30,
      xlab = 'VENTAS TOT',ylab = 'Frecuencia',main = 'Distribución de ventas por adeudo') + 
  geom_vline(xintercept = mean(base_datos_union$ventas_tot))


head(base_datos_union)

qplot(ventas_tot,data = base_datos_union,geom = 'density',facets = ~ B_adeudo,color = B_adeudo,bins = 30,
      xlab = 'VENTAS TOT',ylab = 'Frecuencia',main = 'Distribución de ventas por adeudo') + 
  geom_vline(xintercept = mean(base_datos_union$ventas_tot))

qplot(suc,no_cdtos, data = base_datos_union,geom = 'point',size = ventas_tot)

qplot(B_adeudo,adeudo_actual, data = base_datos_union,geom = 'boxplot',fill = B_adeudo)



























