Algoritmo evaluacion
	
	Definir n1,n2,n3,op,cobro, num , n , tamano como entero;
	Definir nombre, genero como caracter;
	
	Repetir 
	invocarMenu;	
	Escribir "Seleccione una opcion:";
	leer op;
	
	Segun op Hacer
		1:
			Escribir "Ingrese tres numeros para obtener su promedio";
			leer n1,n2,n3;
			Escribir "El promedio es: ", secuencial(n1,n2,n3);
		2: 
			Escribir "Igrese su nombre:";
			leer nombre;
			Repetir
				Escribir "Ingrese su genero (hombre/mujer):";
				leer genero;
			Hasta Que genero = "hombre" o genero= "mujer";
			condicionalSiEntonces(nombre,genero);
		3:
			Escribir "Ingrese su nombre:";
			leer nombre;
			Repetir
				Escribir "Ingrese su genero (hombre/mujer):";
				leer genero;
			Hasta Que genero = "hombre" o genero= "mujer";
			Escribir "Ingrese 1 si desea solo utilizar el banio o 2 si desea utilizar la ducha:";
			leer cobro;
			condicionalSiEntoncesAnidado(nombre,genero,cobro);
		4:
			Repetir
				Escribir "Ingrese un numero en el rango de 1 a 10 para ver como se escribe en palabras:";
				leer num;
			Hasta Que num>=1 y num <=10;
			condicionalSegun(num);
		5:
			Escribir "Ingrese N numeros, considere que al ingresar el valor 0 no podra ingresar mas datos:";
			repetitivaMientras();
		6:
			Escribir "Ingrese nombres que empiecen con J:"; 
			repetitivaRepetir();
			
		7: 
			Escribir "Ingrese el nombre de hasta 10 personas:";
			repetitivaPara();
			
		8:
			Escribir "Ingrese cantidad de alumnos del curso Talento Digital FSJ a registrar:";
			leer tamano;
			arregloSimple(tamano);
		9:
			Escribir "Ingrese cantidad de alumnos del curso Talento Digital FSJ a registrar:";
			leer tamano;
			arregloBidimensional(tamano);
			
		10:
			Escribir  "Adios.";
		De Otro Modo:
			Escribir "Ingrese un numero entre el rango 1 a 10";
	FinSegun
	esperartecla;
	Limpiar Pantalla;
	Hasta que op = 10
FinAlgoritmo

Funcion invocarMenu()
	Escribir "***MENU***";
	Escribir " 1.Secuencial";
	Escribir " 2.Condicional Si entonces";
	Escribir " 3.Condicional Si entonces anidado";
	Escribir " 4.Condicional segun";
	Escribir " 5.Repetitiva Mientras";
	Escribir " 6.Repetitiva Repetir";
	Escribir " 7.Repetitiva para";
	Escribir " 8.Arreglo Simple";
	Escribir " 9.Arreglo bidimensional";
	Escribir " 10.Salir";
FinFuncion

funcion resultado <- secuencial(n1,n2,n3)
	Definir resultado como real;
	resultado <- (n1+n2+n3)/3;
FinFuncion

funcion condicionalSiEntonces(nombre,genero)
	Si genero = "hombre" entonces Escribir "Estimado ", nombre, " usted debe ir al banio de hombres.";
	sino 
		Escribir "Estimada ", nombre, " usted debe ir al banio de mujeres.";
	FinSi
FinFuncion
	
funcion condicionalSiEntoncesAnidado(nombre,genero,cobro)
	Si genero = "hombre" y cobro=1 entonces Escribir "Estimado ", nombre, " usted debe ir al banio de hombres y debe cancelar $250.";
	sino 
		si genero = "hombre" y cobro=2 entonces Escribir "Estimado ", nombre, " usted debe ir al banio de hombres y debe cacelar $2.500 por derecho a ducha.";
		sino 
			si genero = "mujer" y cobro=1 entonces Escribir "Estimada ", nombre, " usted debe ir al banio de mujeres y debe cancelar $250.";
			sino
				si genero = "mujer" y cobro=2 entonces Escribir "Estimada ", nombre, " usted debe ir al banio de mujeres y debe cacelar $2.500 por derecho a ducha.";
				FinSi
			FinSi
		FinSi
	FinSi
FinFuncion

Funcion condicionalSegun(num)
	Segun num Hacer
		1:
			Escribir "Numero uno";
		2:
			Escribir "Numero dos";
		3:
			Escribir "Numero tres";
		4:
			Escribir "Numero cuatro";
		5:
			Escribir "Numero cinco";
		6:
			Escribir "Numero seis";
		7:
			Escribir "Numero siete";
		8:
			Escribir "Numero ocho";
		9:
			Escribir "Numero nueve";
		10: 
			Escribir "Numero diez";
	FinSegun
FinFuncion

Funcion repetitivaMientras()
	Definir contador como entero;
	Definir n, sumatoria, promedio como real;
	Definir condicion como logico;
	contador <-0;
	sumatoria<-0;
	condicion<- verdadero;
	Mientras condicion Hacer
		leer n;
		si n=0 entonces condicion <- falso;
		FinSi
		contador <- contador +1;
		sumatoria <- sumatoria +n;
	FinMientras
	Escribir Sin Saltar "La cantidad de numeros registrados es: ", contador-1;
	promedio <- sumatoria/(contador-1);
	Escribir  " y su promedio es: ", promedio;
FinFuncion
	
funcion repetitivaRepetir()
	Definir nombre Como Caracter;
	Definir contador como entero;
	contador <-0;
	Repetir
		leer nombre;
		si nombre = "Juan" o nombre= "juan" entonces escribir "Ganaste";
		FinSi
		si Subcadena(nombre,0,0)="J" o Subcadena(nombre,0,0)="j" entonces 
			contador <- contador +1;
		FinSi
	Hasta Que nombre = "Juan" o nombre= "juan";
	Escribir "Usted tuvo ", contador-1, " intentos antes de ganar.";
FinFuncion
	
funcion repetitivaPara() //Revisar
	Definir i, j, largo , contador como entero;
	Definir name, names como caracter;
	largo <-4;
	dimension names[largo];
		
	para i<-0 hasta largo-1 hacer
		leer names[i];
	FinPara
	para i<-0 hasta largo-1 Hacer
		contador <-0;
		para j<-1 hasta largo-1 Hacer
			si names[i] = names[j] entonces contador <- contador+1;
			FinSi
		FinPara
		si contador >=2 entonces Escribir "El nombre ", names[i], " se repite ", contador, " veces";
		sino 
			si contador <1 entonces Escribir "No se repiten los nombres";
			FinSi
		FinSi
	finPara
FinFuncion

funcion arregloSimple(tamano)
	Definir i , j, contador como entero;
	Definir nombres como caracter;
	Dimension nombres[tamano];
		
	para i<-0 hasta tamano-1 hacer
		Escribir "Ingrese el nombre del alumno numero ", i+1, ":";
		leer nombres[i];
	FinPara
	
	Escribir "Usted registro los siguientes alumnos:";
	Escribir "";
	
	para i<-0 hasta tamano-1 hacer
		Escribir Sin Saltar nombres[i], ", ";
		si i = 4 entonces escribir "";
		FinSi
	FinPara
	
FinFuncion

Funcion arregloBidimensional(tamano)
	Definir i, fonos como entero;
	Definir nombres, apellidos, emails como caracter;
	
	Dimension nombres[tamano];
	Dimension apellidos[tamano];
	Dimension fonos[tamano];
	Dimension emails[tamano];
	
	para i<-0 hasta tamano -1 Hacer
		Escribir "Ingrese nombre del alumno numero: ", i+1;
		leer nombres[tamano];
	FinPara
	
	para i<-0 hasta tamano -1 Hacer
		Escribir "Ingrese apellido del alumno numero: ", i+1;
		leer apellidos[tamano];
	FinPara
	
	para i<-0 hasta tamano -1 Hacer
		Escribir "Ingrese fono del alumno numero: ", i+1;
		leer fonos[tamano];
	FinPara
	
	para i<-0 hasta tamano -1 Hacer
		Escribir "Ingrese emails del alumno numero: ", i+1;
		leer emails[tamano];
	FinPara

	para i<-0 hasta tamano -1 Hacer
		Escribir "Alumno numero: ", i+1, ": ", nombres[i], " ", apellidos[i], ". ", "Fono: ", fonos[i], ". Email: ", emails[i] ;
		
	FinPara
FinFuncion
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	