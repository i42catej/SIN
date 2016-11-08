;Ejercicio 4 Inventado
; Programa que guarda informacion sobre diferentes tipos de peces, se le pide las caracteristicas deseadas y muestra los tipos de peces con ;dichas carateristicas


;Autor: Juan Jesus Carmona Tejero

;Fecha: 01/06/16

(deftemplate pez
	(slot nombre)
	(multislot caracteristicas)
)

(defrule muestra
	(pez(nombre ?aux))
	(forall   ;Recorremos la lista buscando esa caracteristica
		(tienecaracteristica ?car)
		(pez(nombre ?aux)(caracteristicas $? ?car $?))
	)
	=>
	(printout t "Pez que tiene dichas caracteristicas: " ?aux crlf)
)


(deffacts peces
	(pez(nombre blackbass)(caracteristicas aguadulce carnivoro mediano verde))
	(pez(nombre lucio)(caracteristicas aguadulce carnivoro grande verde))
	(pez(nombre barbo)(caracteristicas aguadulce omnivoro mediano marron))
	(pez(nombre carpa)(caracteristicas aguadulce omnivoro grande marron))
	(pez(nombre alburno)(caracteristicas aguadulce omnivoro pequenio plateado))
	(pez(nombre sardina)(caracteristicas aguasalada carnivoro pequenio plateado))
	(pez(nombre rodaballo)(caracteristicas aguasalada carnivoro mediano marron))
	(pez(nombre bacalao)(caracteristicas aguasalada carnivoro mediano amarillo))
	(pez(nombre merluza)(caracteristicas aguasalada carnivoro mediano gris))
)

(deffacts caracteristicas
	(tienecaracteristica aguadulce)
	(tienecaracteristica carnivoro)
	(tienecaracteristica verde)
)