//Se debe hacer un programa que mediante un menú de opciones nos permita
//a. realizar las siguientes acciones:
//	1. Ingresar dos números y mostrar la suma de los números
//	ingresados.
//	2. Calcular el cuadrado de la suma del punto "a" del menú.
//	3. Calcular el promedio de los números ingresados.
//	4. Mostrar a todos los resultados.
//	5. Salir del programa.
Algoritmo Ejercicio_45
	
	Escribir "Ejercicio n° 45";
	n1 <- 0;
	n2 <- 0;
	suma <- 0; 
	promedio <- 0;
	cuadrado <- 0;
	salir <- falso;
	
	Repetir
		Escribir "  --- Menú --- "
		Escribir "1. Ingresar dos números para operar";
		Escribir "2. Calcular el cuadrado de la suma de los números";
		Escribir "3. Calcular promedio de los nros ingresados";
		Escribir "4. Mostrar todos los resultados";
		Escribir "5. Salir del programa";
		Leer opcion;
		
		Segun opcion Hacer
			
			1:
				Escribir Sin Saltar "Ingresar el primer número: ";
				Leer n1;
				Escribir Sin Saltar "Ingresar el segundo número: ";
				Leer n2;
				
				suma <- (n1 + n2);
				Escribir n1, " + ", n2, " = ", suma;
			2:
				cuadrado <- (suma * suma);
				Escribir suma, " al cuadrado = ", cuadrado;
			3:
				promedio <- (suma / 2);
				Escribir "Promedio: ", promedio;
			4:
				Escribir "Nros ingresados: ", n1, " y ", n2;
				Escribir "Suma: ", suma;
				Escribir "Suma al cuadrado: ", cuadrado;
				Escribir "Promedio: ", (suma / 2);
			5:
				Escribir "Fin del programa";
				salir <- Verdadero;
			
		FinSegun
		
	Hasta Que salir = Verdadero;
	
FinAlgoritmo
