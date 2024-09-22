source(file = 'Cursos/Curso_R/3. Fundamentos de R/Librerias.R')


"___________Importar datos base soc"

base_soc <- read_delim(file = 'Cursos/Curso_R/5. Data Frames/base_soc.csv',delim = ',',
                       escape_double = FALSE,trim_ws = TRUE,locale = locale())
head(base_soc)
base_soc$X1 <- NULL
"_______Grafica en ggplot"

ggplot(data = base_soc) + geom_point(aes(x = venta_trimestral,y= edad,
                                         colour = as.factor(id_sucursal))) 

"_________Principio de estética"

lty <- c("solid", "dashed", "dotted", "dotdash", "longdash", "twodash")
tipos_lineas <- data.frame(y = seq_along(lty),lty = lty)


ggplot(data = tipos_lineas,aes(x = 0,y = y)) + 
  geom_segment(aes(xend = 5,yend = y,linetype = lty)) 

"_______Gráfico con capas"

base_soc$porc_pagos <- round(base_soc$pagos / base_soc$venta_trimestral,2)

base_soc %>%  group_by(tipo_cliente) %>% summarise(media_pagos = round(mean(porc_pagos),2)) %>% ungroup() %>%
  ggplot(aes(x = tipo_cliente,y=media_pagos,fill = tipo_cliente)) + 
  geom_bar(stat = 'identity') +
  geom_text(aes(label = media_pagos),vadjust = 1.6,size = 4,color = 'black') + 
  scale_fill_manual(values = c('yellow','red','green'))
  
"______Mapping vs setting"


ggplot(data = base_soc,aes(x = edad,y = deuda_act)) + 
  geom_point(aes(color = tipo_cliente)) +
  xlim(18,75) +
  scale_color_manual(values = c('blue','red','green'))




"__________Histograma"

ggplot(data = base_soc,aes(x = venta_trimestral)) + 
  geom_bar(stat = 'count',fill = 'white',aes(color = tipo_cliente)) +
  scale_color_manual(values = c('red','yellow','blue')) + 
  xlim(100,20000)

"__________Densidad"

ggplot(data = base_soc,aes(x = venta_trimestral)) +
  geom_density(stat = 'density',aes(color = tipo_cliente)) +
  xlim(100,20000) +
  scale_color_manual(values = c('orange','green','red'))

"___________Transfomaciones estadísticas"

ggplot(data = base_soc,aes(tipo_cliente)) + 
  stat_summary(aes(group = nombre_suc,y = venta_trimestral),fun = 'mean',geom = 'bar')






 
