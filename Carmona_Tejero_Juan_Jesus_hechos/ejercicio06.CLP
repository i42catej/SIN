; Fichero: ejercicio06.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 30/03/2016

(deftemplate consecionario "Casa Renault"
	(slot modelo (type STRING)(default ?NONE))
	(slot combustible (type STRING)(default ?NONE))
	(slot cilindrada (type NUMBER)(default ?NONE))
	(slot puertas (type INTEGER)(default ?NONE))
	(slot color (type STRING)(default ?NONE))
)

(deftemplate vendedor "vendedor de coche"
	(slot nombre(type STRING)(default ?NONE))
	(slot modelo (type STRING)(default ?NONE))
	(slot fecha (type STRING)(default ?NONE))
	(slot cliente(type STRING)(default ?NONE))
)

(deffacts ventas
	(consecionario(modelo "Clio")(combustible "gasolina")(cilindrada 1600)(puertas 3)(color "azul"))
	(consecionario(modelo "Clio")(combustible "diesel")(cilindrada 1800)(puertas 5)(color "blanco"))
	(consecionario(modelo "Megane")(combustible "diesel")(cilindrada 1800)(puertas 5)(color "dorado"))
	(consecionario(modelo "Megane")(combustible "gasolina")(cilindrada 1600)(puertas 5)(color "gris"))
	(consecionario(modelo "Laguna")(combustible "gasolina")(cilindrada 2000)(puertas 5)(color "negro"))
)

(deffacts vende
	(vendedor (nombre "Juan Perez")(modelo "Megane")(fecha "10/10/2003")(cliente "Esteban Losada"))
	(vendedor (nombre "Ana Ballester")(modelo "Laguna")(fecha "13/10/2003")(cliente "Juan Cano"))
)