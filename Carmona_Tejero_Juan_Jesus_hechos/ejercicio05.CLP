; Fichero: ejercicio05.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 30/03/2016


(deftemplate libros "datos libros"
	(slot nombre (type STRING)(default ?NONE))
	(multislot autor(type STRING)(default ?NONE))
	(slot editorial(type STRING)(default ?NONE))
	(slot anio(type INTEGER)(default ?NONE)(range 0 2016))
)


(deffacts asignatura
	(libros(nombre "Aspectos Basicos de la inteligencia Artificial")(autor "Mira, J." "Delgado,A.E." "Boticario, J.G." "Diez, F.J.")(editorial "Sanz y Torres")(anio 1995))
	(libros(nombre "Problemas resueltos de inteligencia artificial aplicada: Busquedad y Representacion")(autor "Galan S.F" "Boticario J.G." "Mira J.")(editorial "Addison-Wesley Iberoamericana S.A. 1998")(anio 1998))
	(libros(nombre "Inteligencia Artifical, 2º edicion")(autor "Rich, E, Knight")(editorial "McGraw-HillInteramericana")(anio 1994)))