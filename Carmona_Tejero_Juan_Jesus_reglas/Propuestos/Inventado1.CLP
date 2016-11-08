;Ejercicio 1 Inventado
;Programa que dado un conjunto de hechos numericos detecta que hechos cumplen que el segundo
;valor sea menor que el primero y muestre por pantalla los que cumplan dicha condicion.

;Autor: Juan Jesus Carmona Tejero

;Fecha: 01/06/16


(deftemplate numeros
	(slot n1(type INTEGER))
	(slot n2(type INTEGER))
)

(deffacts hechos
	(numeros (n1 2) (n2 4))
	(numeros (n1 66) (n2 4))
	(numeros (n1 6) (n2 89))
	(numeros (n1 45) (n2 120))
)

(defrule compara
	(numeros (n1 ?v1)(n2 ?v2)) 
 	(test (< ?v1 ?v2) ) ;Hacemos la comprobacion de que cumple la regla
=> (printout t "El primero es menor que el segundo en: " ?v1 " < " ?v2 crlf)
)