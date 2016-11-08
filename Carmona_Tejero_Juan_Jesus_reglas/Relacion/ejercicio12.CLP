; Fichero: ejercicio12.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 31/05/2016


(defrule ImprimirOrdenado "Imprime el vector ordenado de menor a mayor"
	
	?numero<-(dato ?n1&:(numberp ?n1))  ;Comprobamos que la variable n1 sea un numero entero y guardamos su direccion en numero
	(not(dato ?n2&:(< ?n2 ?n1)))  ;Si no se cumple la condicion de que n2<n1 entonces continuamos
	=>
	(retract ?numero)  ;Borramos numero y su contenido
	(printout t " " ?n1 crlf)  ;Mostramos por pantalla el numero
)


(deffacts vectorDato ;Creamos un vector con varios datos desordenados
	(dato 9)
	(dato 0)
	(dato 1) 
	(dato 8) 
	(dato 2) 
	(dato 3)
	(dato 23)
	(dato 13)
)
