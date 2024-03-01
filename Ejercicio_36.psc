//Pedir al operador que ingrese N cantidad números reales distintos de 0, el
//programa debe terminar con la palabra Final o bien cuando la cantidad de los números ingresados sea igual a 20. 
//Mostrar por pantalla al final del programa a la lista de los números que fueron ingresados, cuantos fueron, la suma y el promedio.
Algoritmo Ejercicio_36
	
	Definir num, suma, aux Como Real;
	Definir longitudVector Como Entero;
	Dimension vectorDeNumeros[5]
	Definir input Como Caracter;
	
	aux <- 0;
	num <- 0;
	suma <- 0;
	promedio <- 0;
	
	Para i <- 1 Hasta 5 Hacer
		Escribir "Ingresa un valor de tipo Real distinto a cero";
		Leer num;
		
		Si num <> 0 Entonces
			vectorDeNumeros[i] <- num;
		SiNo
			i <- (i-1)
		FinSi
		
		Escribir "Para finalizar el ingreso de valores escriba: Final ";
		Leer input;
		Si input == "Final" Entonces
			i <- (5)
		FinSi
		
	FinPara
	

	Escribir "Suma: ", suma;
	Escribir "Promedio: ", promedio;
	Escribir "Lista de valores ingresados: ";

	
FinAlgoritmo
