; Fichero: ejercicio15.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 31/05/2016


(deftemplate planta  ;Definimos la plantilla de planta
	(slot nplanta)  ;Nombre de la planta
	(multislot caracteristicas)  ;Caracteristicas que posee dicha planta
)


(defrule ayuda
	(planta (nplanta ?aux))  

	(forall        			;Recorremos todas las plantas comprobando si tienen la caracteristica que se pide
		(tienecaracteristica ?car)
		(planta (nplanta ?aux)(caracteristicas $? ?car $?))
	)
	=>
	(printout t "Planta que se puede plantar: " ?aux crlf)  ;Si posee dichas caracteristicas mostramos la planta por pantalla
)



(deffacts plantas   ;Lista de plantas
	(planta (nplanta hortensia)(caracteristicas sombra ciudad maceta crecerapido))
	(planta (nplanta adelfa)(caracteristicas ciudad maceta cuidadofacil crecerapido))
	(planta (nplanta laurel)(caracteristicas frio sombra sequedad suelohumedo ciudad cuidadofacil crecerapido))
	(planta (nplanta madreselva)(caracteristicas ciudad maceta cuidadofacil crecerapido))
	(planta (nplanta gardenia)(caracteristicas sombra sueloacido maceta))
	(planta (nplanta enebro)(caracteristicas frio sequedad sueloacido ciudad cuidadofacil))
	(planta (nplanta pimentero)(caracteristicas frio sombra suelohumedo sueloacido cuidadofacil))
	(planta (nplanta escaramujo)(caracteristicas frio sombra suelohumedo ciudad cuidadofacil))
	(planta (nplanta aucuba)(caracteristicas  sombra sequedad maceta cuidadofacil))
	(planta (nplanta azalea)(caracteristicas sombra suelohumedo sueloacido maceta ))
)

(deffacts caracteristicas   ;Lista de caracteristicas deseadas para dicha planta
	(tienecaracteristica frio)
	(tienecaracteristica sombra)
	(tienecaracteristica suelohumedo)
)
