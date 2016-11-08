; Fichero: ejercicio03.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 30/03/2016


(deftemplate viaje
	(slot origen (type STRING)(default ?NONE)(allowed-strings "Lisboa" "Paris" "Estocolmo" "Madrid" "Roma" "Frankfurt"))
	(multislot destino(type STRING)(default ?NONE))
)

(deffacts ruta
	(viaje (origen "Lisboa") (destino "Madrid" "Paris"))
	(viaje (origen "Roma") (destino "Madrid" "Lisboa" "Frankfurt"))
	(viaje (origen "Paris")(destino "Roma"))
	(viaje (origen "Frankfurt")(destino "Roma" "Estocolmo"))
	(viaje (origen "Estocolmo")(destino "Paris"))
)