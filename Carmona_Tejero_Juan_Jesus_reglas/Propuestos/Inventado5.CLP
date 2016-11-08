;Ejercicio 5 Inventado
;Programa que recive varios hechos y solo redondea el entero mas cercano los que sean de tipo numerico.


;Autor: Juan Jesus Carmona Tejero

;Fecha: 01/06/16


(defrule Redondear
	(datos ?x&:(numberp ?x))
=>
	(printout t "El numero " ?x " redondeado vale: " (round ?x) crlf)
)


(deffacts datos
	(datos coche)
	(datos 7.5)
	(datos 6.3)
	(datos pera)
	(datos 2.9)
	(datos azul)
	(datos 6.1)
	(datos 4.8)
)