; Fichero: ejercicio02.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 30/03/2016



(deftemplate persona
	(slot nombre (type STRING)(default ?NONE))
	(slot apellidos (type STRING)(default ?NONE))
	(slot dni(default ?NONE))
	(slot seguro-medico (type NUMBER) (default ?NONE))
)

(deftemplate visita
	(slot dni(default ?NONE))
	(slot fecha (type NUMBER)(default ?NONE))
	(slot sintoma (type STRING)(default ?NONE))
	(slot pruebas(type STRING)(default ?NONE))
	(slot medicacion(type STRING)(default ?NONE))
)


(deffacts paciente
(persona (nombre "fulanito")(apellidos "de copas")(dni 14523698)(seguro-medico 12587))
)

(deffacts cita_medica
(visita (dni 14523698)(fecha 051115)(sintoma "alergia")(pruebas "sangre")(medicacion "ibuprofeno"))
)