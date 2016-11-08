; Fichero: ejercicio09.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 30/03/2016

(deftemplate barcos "juego barquitos"
	(multislot casilla(type INTEGER)(default ?NONE)(range 1 4))
	(slot barco(type SYMBOL)(allowed-values patrullera dragaminas fragata acorazado destructor portaaviones)(default ?NONE))
	(slot estado(type SYMBOL)(allowed-values indemne tocado hundido)(default indemne))
)

(deffacts juego
(barcos (casilla 1 2)(barco patrullera)(estado indemne))
(barcos (casilla 3)(barco fragata)(estado tocado))
)