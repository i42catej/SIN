; Fichero: ejercicio10.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 30/03/2016

(deftemplate examen "trabajo"
	(multislot apellidos (type STRING)(default ?NONE))
	(slot nombre(type STRING)(default ?NONE))
	(multislot grupo(type STRING)(default ?NONE))
	(multislot notas(type INTEGER)(allowed-values 0 1 2 3 4 5 6 7 8 9 10)(default ?NONE))
)

(deffacts grupo
(examen (apellidos "Funalito de copas")(nombre "Jose")(grupo "grupo7")(notas 4 9 6))
(examen (apellidos "Menganito de bastos")(nombre "Josele")(grupo "grupo2")(notas 3 6 5))
)