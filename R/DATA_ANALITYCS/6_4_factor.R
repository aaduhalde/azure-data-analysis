source(file = 'Cursos/Curso_R/3. Fundamentos de R/Librerias.R')


"___________Importar datos base soc"

base_soc <- read_delim(file = 'Cursos/Curso_R/5. Data Frames/base_soc.csv',delim = ',',
                       escape_double = FALSE,trim_ws = TRUE,locale = locale())
head(base_soc)
base_soc$X1 <- NULL
"_______Grafica en ggplot"

ggplot(data = base_soc) + geom_point(aes(x = venta_trimestral,y= edad,
                                         colour = as.factor(id_sucursal))) 


 
