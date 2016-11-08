; Fichero: ejercicio01.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 30/03/2016




(deftemplate persona "Detalles de una persona"
	(slot nombre(type STRING)(default ?NONE))
	(slot apellidos(type STRING)(default ?NONE))
	(slot color-ojos(default marron)(allowed-symbols negro gris marron verde azul))
	(slot altura(type FLOAT)(default 1.80)(range 1.55 2.10))
	(slot edad(type INTEGER)(default 20)(range 1 130))
)


(deffacts lista
(persona (nombre "Funalito")(apellidos "de corpas")(color-ojos azul)(altura 1.85)(edad 28))
(persona (nombre "Jaimito")(apellidos "lopez")(altura 1.75)(edad 50))
(persona (nombre "Menganito")(apellidos "diente")(color-ojos gris)(edad 8))
(persona (nombre "Adon")(apellidos "salazar")(color-ojos verde)(altura 1.85)(edad 46))
(persona (nombre "Randon")(apellidos "rojas")(color-ojos negro)(altura 1.85))
)




 