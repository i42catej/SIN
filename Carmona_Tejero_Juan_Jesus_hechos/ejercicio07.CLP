; Fichero: ejercicio07.clp

; Autor: Carmona Tejero, Juan Jesus

; Fecha: 30/03/2016


(deftemplate animales "Tipos de animales"
	(slot reino_animal(type STRING)(default ?NONE)(allowed-strings "Mamiferos" "Reptiles" "Aves"))
	(slot especie_animal(type STRING)(default ?NONE))
	(slot tipo_animal(type STRING)(default ?NONE))
	(slot animal(type STRING))
)


(deffacts esquema
	(animales (reino_animal "Mamiferos")(especie_animal "Roedores")(tipo_animal "Rata"))
	(animales (reino_animal "Mamiferos")(especie_animal "Roedores")(tipo_animal "Ardilla"))
	(animales (reino_animal "Mamiferos")(especie_animal "Felino")(tipo_animal "Tigre"))
	(animales (reino_animal "Mamiferos")(especie_animal "Felino")(tipo_animal "Lince"))
	(animales (reino_animal "Mamiferos")(especie_animal "Felino")(tipo_animal "Jaguar"))
	(animales (reino_animal "Reptiles")(especie_animal "Serpientes")(tipo_animal "Boa"))
	(animales (reino_animal "Reptiles")(especie_animal "Serpientes")(tipo_animal "Cobra"))
	(animales (reino_animal "Aves")(especie_animal "Rapaces")(tipo_animal "Diurnas")(animal "Halcon"))
	(animales (reino_animal "Aves")(especie_animal "Rapaces")(tipo_animal "Diurnas")(animal "Gavilan"))
	(animales (reino_animal "Aves")(especie_animal "Rapaces")(tipo_animal "Nocturnas")(animal "Buho"))
	(animales (reino_animal "Aves")(especie_animal "Rapaces")(tipo_animal "Nocturnas")(animal "Lechuza"))
)