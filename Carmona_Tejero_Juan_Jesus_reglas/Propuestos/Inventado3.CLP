;Ejercicio 3 Inventado
;Programa que dado un vector cualquiera comprueba si dicho vector se puede dividir en dos vectores de igual 
;tamaño o de distinto tamaño y los muestra por pantalla divididos.

;Autor: Juan Jesus Carmona Tejero

;Fecha: 01/06/16


(defrule nopuede
	(datos $?p1 ?x $?p2&:(eq (length $?p1)(length $?p2)))
	=>
	(printout t "No se puede dividir el vector: " $?p1 ?x $?p2 crlf)
	(printout t "Primera parte: " $?p1 ?x crlf)
	(printout t "Segunda parte: " $?p2 crlf)
)


(defrule puede
	(datos $?p1 ?x ?y $?p2&:(eq (length $?p1)(length $?p2))) 
	=>
	(printout t "Puede dividirse el vector: " $?p1 ?x ?y $?p2 crlf)
	(printout t "Primera parte: " $?p1 ?x crlf)
	(printout t "Segunda parte: " ?y $?p2 crlf)
)


(deffacts vectores
	(datos gato 5 verde 4); Puede
	(datos 2 zapato 4 rojo 7); No puede
)