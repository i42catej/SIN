; Fichero: ejercicio19.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 31/05/2016


(defrule medio
	
	(datos $?cad1 ?x $?cad2&:(eq (length $?cad1)(length $?cad2))) ;Comprobamos que cad1=cad2 para que el elemento x sea el del medio
	=>
	(printout t "El elemento del medio es: " ?x  crlf)
)

(defrule mediados
	(datos $?cad1 ?n1 ?n2 $?cad2&:(eq (length $?cad1)(length $?cad2))) ;Comprobamos que cad1=cad2 para que el elemento x,y sean los del medio al tener la cadena un tamaño par
	=>
	(printout t "La media de los dos elementos del medio es: " (/(+ ?n1 ?n2)2) crlf)
)


(deffacts cadenas
	(datos 2 5 9 6 3) ;tiene que mostrar el 9
	(datos 2 6 4 5); tiene que mostrar la media 5
)