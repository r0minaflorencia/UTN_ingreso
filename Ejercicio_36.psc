//Pedir al operador que ingrese N cantidad n�meros reales distintos de 0, el
//programa debe terminar con la palabra Final o bien cuando la cantidad de los n�meros ingresados sea igual a 20. 
//Mostrar por pantalla al final del programa a la lista de los n�meros que fueron ingresados, cuantos fueron, la suma y el promedio.
Algoritmo Ejercicio_36

	Escribir "Ejercicio n� 36";
	//defino variables
	Definir valorReal, suma, aux, promedio Como Real;
	Definir cantidadIngresos, i Como Entero;
	Definir bandera Como Logico;
	Dimensionar vector[20];
	
	//inicializo variables
	aux <- 0;
	valorReal <- 0;
	suma <- 0;
	i <- 0;
	promedio <- 0;
	bandera <- Falso;
	cantidadIngresos <- 0;
	
	//men�
	Definir opcion Como Caracter;
	Repetir
		Escribir "Ingresa una opci�n";
		Escribir "a- Ingresar un n�mero real"
		Escribir "Para finalizar el ingreso de valores escriba: Final ";
		Leer opcion;
		
		Segun opcion Hacer
			"a":
				Escribir "Ingresa un valor de tipo Real distinto a cero";
				Leer valorReal;
				
				Si valorReal <> 0 Entonces
					cantidadIngresos <- cantidadIngresos + 1;
					aux <- valorReal;
					suma <- suma + aux;
					vector[cantidadIngresos] <- valorReal;
					Escribir "el valor se guard� correctamente";
				SiNo
					Escribir "Se tomar� en cuenta solo los valores distintos a cero";
				FinSi
				
			"Final":
				bandera <- Verdadero;
				
			"final": //en caso que el usuario ingrese la respuesta en min�sculas tambien aplicar�a
				bandera <- Verdadero;
				
			De Otro Modo:
				Escribir "Debes ingresar una opci�n v�lida."
				
		FinSegun
		
	Hasta Que bandera = Verdadero | cantidadIngresos = 20;
	
	//en este punto manejo un posible error de divisi�n por cero
	Si cantidadIngresos <> 0 Entonces
		promedio <- (suma / cantidadIngresos);
	SiNo
		promedio <- 0;
	FinSi
	
	//imprimo resultados
	Escribir "Suma: ", suma;
	Escribir "Promedio: ", promedio;
	Escribir "Lista de valores ingresados: ";
	Para i <- 1 Hasta (cantidadIngresos) Hacer
		Escribir vector[i];
	FinPara
	
FinAlgoritmo

