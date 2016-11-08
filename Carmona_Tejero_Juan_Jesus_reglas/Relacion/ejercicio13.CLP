; Fichero: ejercicio13.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 31/05/2016




(defrule insertaMenorMayor  ;Regla que inserta los datos en el hecho todos-los-datos de menor a mayor y solamente los de tipo numerico

	?aux<-(dato ?n1&:(numberp ?n1))  ;Comprobamos que el dato n1 es de caracter numerico
	?vec<-(todos-los-datos $?valores)   ;Guardamos el vector de datos con sus posibles valores

	(forall
		(dato ?n2&:(numberp ?n2)&:(< ?n2 ?n1))  ;Comprobamos que el dato n2 es de tipo numerico y que se cumple la regla de n2<n1
		(todos-los-datos $? ?n2 $?)
	)

	(not (todos-los-datos $? ?n1 $?))
	=>
	(retract ?vec)  ;Borramos el hecho todos-los-datos
	(retract ?aux)   ;Borramos el dato aux

	(assert(todos-los-datos $?valores ?n1))  ;Insertamos n1 en el vector de datos ordenado
)


(deffacts Vector  ;Vector de datos para la prueba
	(dato 1)
	(dato 5)
	(dato verde)
	(dato 2)
	(dato 3,45)
	(dato gato)
	(dato 4)
	(dato 1,3)
	(dato 20)
	(todos-los-datos)
)
