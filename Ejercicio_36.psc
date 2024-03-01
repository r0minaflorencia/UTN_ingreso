//Pedir al operador que ingrese N cantidad números reales distintos de 0, el
//programa debe terminar con la palabra Final o bien cuando la cantidad de los números ingresados sea igual a 20. 
//Mostrar por pantalla al final del programa a la lista de los números que fueron ingresados, cuantos fueron, la suma y el promedio.
Algoritmo Ejercicio_36
	
	Definir cantidad, n, suma, promedio Como Real;
	Definir input Como Caracter;
	Definir vectorDeNumeros Como Entero
	
	ingresos <- 0;
	n <- 0;
	suma <- 0;
	promedio <- 0;
	input <- "";
	
	Repetir
		
		Escribir "Ingresa ", i + 1, "valor/es de tipo Real distinto a cero";
		Leer input, n
		
		Si input == "Final" Entonces
			ingresos <- 20;
		FinSi
		
		Si n <> 0 Entonces
			
			suma <- suma + n;
			
			
		SiNo
			ingresos <- ingresos - 1;
		FinSi
	
	Hasta Que ingresos == 20 ;
	
	Escribir "Suma: ", suma
	Escribir "Promedio: ", promedio
	
FinAlgoritmo
