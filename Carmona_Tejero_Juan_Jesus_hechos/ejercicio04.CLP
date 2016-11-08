; Fichero: ejercicio04.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 30/03/2016


(deftemplate persona
	(slot nombre (type STRING)(default ?NONE))
	(multislot hermanode (type STRING))
	(multislot padrede (type STRING))
	(multislot hijode (type STRING))
)

(deffacts relaciones
(persona (nombre "Jose")(hermanode "Curro")(hijode "Antonio"))
(persona (nombre "Curro")(hermanode "Jose")(hijode "Antonio"))
(persona (nombre "Antonio")(padrede "Jose" "Curro"))
)