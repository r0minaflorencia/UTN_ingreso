// Hacer un programa que mediante un menú de opciones nos permita realizar las siguientes acciones:
//	a. Ingresar los nombres y las notas de 50 alumnos, debiéndose controlar que la nota sea positiva y menor o igual a 10.
//	b. Averiguar la nota mayor y la menor.
//	c. Hacer dos listados, el primero con todos los alumnos que tengan la mayor nota, y el segundo con todos los alumnos que tengan la menor nota.
//	d. Salir del programa.
Algoritmo Ejercicio_48
	
	Escribir "Ejercio n° 48";
	
	salir <- Falso;
	mayorNota <- 0;
	menorNota <- 10;
	Dimension nombres[5];
	Dimension notas[5];
	cantidadConMayorNota <- 0;
	cantidadConMenorNota <- 0;
	
	Repetir
		
		Escribir " --- Menú --- ";
		Escribir "a- Ingresar nombres y notas de alumnos";
		Escribir "b- Consultar mayor y menor nota";
		Escribir "c- Listar alumnos según notas";
		Escribir "d- Salir del programa";
		Leer opcion;
		
		Segun opcion Hacer
			
			"a":
				Para i <- 5 Hasta 1 Con Paso -1 Hacer
					// entrada de nombre
					Escribir Sin Saltar "Ingresa el nombre del alumno/a: "
					Leer nombre;
					
					nombres[i] <- nombre;
					
					// entrada de nota
					Repetir
						Escribir Sin Saltar "Nota: ";
						Leer nota;
						
						Si nota < 1 | nota > 10 Entonces
							Escribir "Debes ingresar una nota válida";
						FinSi
					Hasta Que nota >= 1 & nota <= 10
					
					notas[i] <- nota;
					
					// actualización de mayor y menor nota
					Si nota > mayorNota Entonces
						mayorNota <- nota;
					FinSi
					
					Si mayorNota >= nota Entonces
						cantidadConMayorNota <- cantidadConMayorNota + 1;
					FinSi
					
					Si menorNota > nota Entonces
						menorNota <- nota;
					FinSi
					
					Si nota <= menorNota Entonces
						cantidadConMenorNota <- cantidadConMenorNota + 1;
					FinSi
					
					Si i <> 1 Entonces
						Escribir "Faltan cargar ", (i-1), " alumnos";
					SiNo
						Escribir "Se ha llenado la lista de alumnos";
					FinSi
					
				FinPara
				
			"b":
				Escribir "La mayor nota es: ", mayorNota;
				Escribir "La menor nota es: ", menorNota;
			"c":
				Escribir "Lista de alumnos que obtuvieron la nota mas alta:";
				Para i <- 1 Hasta cantidadConMayorNota Hacer
					
					Si notas[i] = mayorNota Entonces
						Escribir nombres[i], ", nota: ", notas[i];
					FinSi
					
				FinPara
				
				Escribir "Lista de alumnos que obtuvieron la nota mas baja:";
				Para i <- 1 Hasta cantidadConMenorNota Hacer
					
					Si notas[i] = menorNota Entonces
						Escribir nombres[i], ", nota: ", notas[i];
					FinSi
					
				FinPara
			"d":
				Escribir "Fin del programa";
				salir <- Verdadero;
			De Otro Modo:
				Escribir "Debes ingresar una opción válida";
				
		FinSegun
		
		
	Hasta Que salir = Verdadero;
	
FinAlgoritmo

