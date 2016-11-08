;Ejercicio 2 Inventado
;Programa que dado un conjunto de hechos del tipo datos, detecta e imprime aquellos tales que el primer ;numero y el ultimo es impar y el primero es mayor que el ultimo

;Autor: Juan Jesus Carmona Tejero

;Fecha: 01/06/16


(defrule Detecta
	(datos ?n1 $?x ?n2)
	(test (> ?n1 ?n2))  ;Comprobamos que el primero es mayor que el ultimo
	(test (oddp ?n1))  ;Comprobamos que el primer elemento es impar
	(test (oddp ?n2))  ;Comprobamos que el ultimo elemento es impar
=>
	(printout t "Cumple las condiciones: " ?n1 $?x ?n2 crlf)
)

(deffacts datos
	(datos 7 5 3 1);cumple
	(datos 12 4 6 8)
	(datos 1 2 4 5)
	(datos 3 2 4 1);cumple
)