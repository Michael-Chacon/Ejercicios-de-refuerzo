Algoritmo alzaDolar
	Definir dias Como real
	
	Escribir 'cuantos días';
	Leer dias
	
	
	Dimension valorDolar[dias], diferencia[dias/2]
	
	Para i <- 1 Hasta dias Con Paso 1 Hacer
		Escribir 'Día ', i
		Leer valorDolar[i]
	FinPara
	
	count <- 0
	para i<- 1 Hasta dias/2  Con Paso 1 Hacer
		count <- count + 1
			si i = 1 Entonces
				diferencia[i] <- abs(valorDolar[i] - valorDolar[i + i])
			SiNo
				diferencia[i] <- abs(valorDolar[i+i-1] - valorDolar[i + i])
			FinSi
	FinPara
	Escribir 'contador', count;
	
	para i<- 1 Hasta dias/2 Con Paso 1 Hacer
		Escribir diferencia[i]
	FinPara
	
	para i <- 1 Hasta dias/2 Con Paso 1 Hacer
		para j <- 1 Hasta dias/2 - 1 Con Paso 1 Hacer
			si diferencia[j] > diferencia[j + 1] Entonces
				aux <- diferencia[j]
				diferencia[j] <- diferencia[j + 1]
				diferencia[j+1] <- aux
			FinSi
		FinPara
	FinPara
	
	para i<- 1 Hasta dias/2 Con Paso 1 Hacer
		Escribir diferencia[i]
	FinPara
	
	Escribir 'la mayor alza fue de ',  diferencia[dias/2], ' pesos'
	
FinAlgoritmo
