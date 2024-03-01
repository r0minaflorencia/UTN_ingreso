//Pedir al operador que ingrese 20 n�meros enteros mayores a 999 y menores a 10000,
//ir mostrando por pantalla el subtotal de la suma por cada n�mero y
//al final del programa, el total, el promedio, la cantidad de n�meros pares y la
//cantidad de n�meros impares. Cada resultado uno debajo del otro. 
Algoritmo Ejercicio_28
	
	Escribir "Ejercicio n� 28";
	Definir cantidad, total, subtotal, cantidadPares, cantidadImpares, promedio Como Entero;
	
	//inicializo las variables:
	cantidad <- 20;
	total <- 0;
	subtotal <- 0;
	cantidadPares <- 0;
	cantidadImpares <- 0;
	promedio <- 0;
	
	Repetir
		Escribir "Ingresa ", cantidad, " valor/es entero > 999 y < 10000: ";
        Leer n;
		
        Si n >= 999 Y n <= 10000 Entonces
			subtotal <- subtotal + n;
			
            Si (n mod 2 <> 0) Entonces
				cantidadImpares <- cantidadImpares + 1;
            Sino
				cantidadPares <- cantidadPares + 1;
            FinSi
			
			cantidad <- cantidad - 1;
            Escribir "Subtotal: ", subtotal;
        Sino
            Escribir "El n�mero ingresado no se tomar� en cuenta por estar fuera del rango solicitado.";
			n <- 0;
		FinSi
		
		total <- subtotal;
	Hasta Que cantidad == 0;
	
    Mostrar "Total: ", total;
    Mostrar "Promedio: ", (total / 20);
    Mostrar "Cantidad de n�meros pares: ", cantidadPares;
    Mostrar "Cantidad de n�meros impares: ", cantidadImpares;
	
FinAlgoritmo
