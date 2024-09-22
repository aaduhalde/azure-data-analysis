"___________Ejercicio"

"________Realizar un ciclo while que corra mientras el valor sea menor o igual a 5, 
_________y guardar en una variable el acumulado de los valores que fue tomando"

acumulado <- 0
contador <- 1
while (contador <= 5) {
  acumulado <- acumulado + contador
  contador <- contador + 1
  
}


"___________Realizar un ciclo for que corra del 1 al 5 y cuando tome el valor de 5 se imprima la leyenda:
____________Esta es el último item y el valor de la variable"

for (i in 1:5) {
  if(i == 5){
    print(paste("Este es el último item",i,sep = ' '))
  }
  print("Prueba")
  
}