; Fichero: ejercicio18.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 31/05/2016


(deftemplate estudiente
(slot nombre (type STRING))
(slot fumador (type SYMBOL) (allowed-symbols no si))
(slot sexo (type SYMBOL) (allowed-symbols mujer hombre))
(slot alojado (type SYMBOL INTERGER) (default no))
)

(deftemplate habitacion
(slot numero (type INTEGER))
(slot capacidad (type INTEGER) (range 1 4))
(slot plazas-libres (type INTEGER) (range 0 4))
(slot fumador (type SYMBOL) (allowed-symbols no si))
(slot sexo (type SYMBOL) (allowed-symbols mujer hombre))
(multislot ocupantes (type STRING))
)

