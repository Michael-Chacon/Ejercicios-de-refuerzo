Funcion llenar(lista, descendente, ascendente)
	Para i = 0 Hasta 9 Con Paso 1 Hacer
		lista[i] = Aleatorio(1, 10)
		descendente[i] = lista[i]
		ascendente[i] = lista[i]
	FinPara
FinFuncion


Algoritmo ordenarLista
//	Definir lista, descendente, ascendente Como Entero
	Dimension lista[10], descendente[10], ascendente[10]
	
	llenar(lista, descendente, ascendente)
	
	listaAscendente(ascendente)
	listaDescendente(descendente)
	
	Escribir 'Lista base: '
	Para i <- 0 Hasta 9 Con Paso 1
		Escribir lista[i], ' ' Sin Saltar
	FinPara
	
	Escribir " "
	Escribir 'Lista ascedente: '
	Para i <- 0 Hasta 9 Con Paso 1
		Escribir ascendente[i], ' ' Sin Saltar
	FinPara
	
	Escribir " "
	Escribir'Lista descendente: '
	Para i <- 0 Hasta 9 Con Paso 1
		Escribir descendente[i], ' ' Sin Saltar
	FinPara
//	
FinAlgoritmo

Funcion listaAscendente(ascendente)
	Para i <- 0 Hasta 9 Con Paso 1
		Para j <- 0 Hasta 8 Con Paso 1
			Si ascendente[j] > ascendente[j + 1] Entonces
				aux <- ascendente[j]
				ascendente[j] <- ascendente[j + 1]
				ascendente[j + 1] <- aux
			FinSi
		FinPara
	FinPara
FinFuncion

Funcion listaDescendente(descendente)
	Para i <- 0 Hasta 9 Con Paso 1
		Para j <- 0 Hasta 8 Con Paso 1
			Si descendente[j] < descendente[j + 1] Entonces
				aux <- descendente[j]
				descendente[j] <- descendente[j + 1]
				descendente[j + 1] <- aux
			FinSi
		FinPara
	FinPara
FinFuncion
	