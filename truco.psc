Proceso truco
	Definir jugador1,jugador2, op, puntos, realEnv1,realEnv2, valPnt, varPausa Como Entero;
	Definir nombreJg1,nombreJg2 Como Caracter;
	Definir salir Como Logico;
	salir <- Verdadero; // variable de control.
	Escribir "Anotador de truco";
	Escribir "nombre jugador o equipo 1";
	Leer nombreJg1;
	Escribir "nombre jugador o equipo 2";
	leer nombreJg2;
	Escribir "A cuantos puntos quieren juegar?";
	leer puntos;// puntos que dura la partida. 
	Limpiar Pantalla;
	Repetir// menu inicio 
	
	Escribir "";
	Escribir "elige una opcion";
	Escribir "";
	Escribir " op 1 sumar puntos envido";
	Escribir " op 2 sumar puntos truco";
	Escribir " op 3 mostrar puntos jugadores";
	Escribir " op 4 valor de cartas";
	Escribir " op 5 leer historia del juego";
	Escribir " op 6 salir del juego";
	Escribir "";
	
	Leer op;
	Limpiar Pantalla;
	Segun op Hacer // menu del envido
		1:
			Escribir "";
			Escribir "elegir una opcion";
			Escribir "";
			Escribir "op 1 Envido. Equivale a 2 puntos.";
			Escribir "op 2 Real envido. Equivale a 3 puntos.";
			Escribir "op 3 Falta envido. Equivale al n�mero de tantos necesarios para que el bando que va por delante gane el juego.";
			Escribir "op 4 flor equivalen a 4 puntos.";
			Escribir "";
			
			Leer op;
			Limpiar Pantalla;
			Segun op Hacer // a�adiendo puntos del envido
				1: 
					Escribir "";
					Escribir " Envido ";
					Escribir "si se quiso aprete 1 sino 2"; // valida los puntos si se quiso o no
					leer op;
					Si op == 1 Entonces
						valPnt<-2;
					SiNo
						valPnt<-1;
					FinSi
					Limpiar Pantalla;
					Escribir "elija al ganador";
					Escribir "";
					Escribir " op 1 jugador 1";
					Escribir " op 2 jugador 2";
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Segun op Hacer
						1:
							jugador1<- jugador1 + valPnt;
						2:
							jugador2<- jugador2 + valPnt;
						De Otro Modo:
							Escribir "no es una opcion valida";
					FinSegun
				2: // a�adiendo puntos del real envido
					Escribir "";
					Escribir " Real envido ";
					Escribir "si se quiso aprete 1 sino 2";
					Escribir "";
					leer op;
					Si op == 1 Entonces
						valPnt<-3;
					SiNo
						valPnt<-1;
					FinSi
					Limpiar Pantalla;
					Escribir " elija al ganador ";
					Escribir "";
					Escribir " op 1 jugador 1";
					Escribir " op 2 jugador 2";
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Segun op Hacer
						1:
							jugador1<- jugador1 + valPnt;;
						2:
							jugador2<- jugador2 + valPnt;;
						De Otro Modo:
							Escribir "no es una opcion valida";
					FinSegun
				3: // a�adiendo puntos falta envido
					Escribir ""; 
					Escribir " Falta envido ";
					Escribir "si se quiso aprete 1 sino 2";
					
					leer op;
					Limpiar Pantalla;
					Si op == 1 Entonces
						realEnv1 <- puntos - jugador2;
						realEnv2 <- puntos - jugador1;
					SiNo
						realEnv1 <- 1;
						realEnv2 <- 1;
					FinSi
					Escribir "";
					Escribir "elija al ganador";
					Escribir " op 1 jugador 1";
					Escribir " op 2 jugador 2";
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Segun op Hacer
						1:
							jugador1<- jugador1 + realEnv1;
						2:
							jugador2<- jugador2 + realEnv2;
						De Otro Modo:
							Escribir "no es una opcion valida";
					FinSegun
				4: // puntos de flor 
					Escribir "";
					Escribir " Flor ";
					Escribir "si se quiso aprete 1 sino 2";
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Si op == 1 Entonces
						valPnt<-4;
					SiNo
						valPnt<-1;
					FinSi
					
					Escribir " elija al ganador";
					Escribir " op 1 jugador 1";
					Escribir " op 2 jugador 2";
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Segun op Hacer
						1:
							jugador1<- jugador1 + valPnt;;
						2:
							jugador2<- jugador2 + valPnt;;
						De Otro Modo:
							Escribir "no es una opcion valida";
					FinSegun
				De Otro Modo:
					Escribir "no es una opcion valida";
			FinSegun
		2:// opciones para el truco
			Escribir "";
			Escribir "elegir una opcion";
			Escribir "op 1 Truco.";
			Escribir "op 2 Retruco";
			Escribir "op 3 Vale cuatro.";
			Escribir "op 4 .";
			Escribir "";
		
			Leer op;
			Limpiar Pantalla;
			Segun op Hacer
				1:// puntos para el ganador
					Escribir "";
					Escribir "truco";
					Escribir "se quiso aprete 1 sino 2";
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Si op == 1 Entonces
						valPnt<-2;
					SiNo
						valPnt<-1;
					FinSi
					
					Escribir "elija al ganador";
					Escribir " op 1 jugador 1";
					Escribir " op 2 jugador 2";
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Segun op Hacer
						1:
							jugador1<- jugador1 + valPnt;;
						2:
							jugador2<- jugador2 + valPnt;
						De Otro Modo:
							Escribir "no es una opcion valida";
					FinSegun
				2:
					Escribir "";
					Escribir "Re Truco";
					Escribir "se quiso aprete 1 sino 2";// valida si se quiso o no.
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Si op == 1 Entonces
						valPnt<-3;
					SiNo
						valPnt<-2;
					FinSi
					
					Escribir "elija el ganador";
					Escribir " op 1 jugador 1";
					Escribir " op 2 jugador 2";
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Segun op Hacer
						1:
							jugador1<- jugador1 + valPnt;;
						2:
							jugador2<- jugador2 + valPnt;
						De Otro Modo:
							Escribir "no es una opcion valida";
					FinSegun
				3:
					Escribir "";
					Escribir "Vale Cuatro";
					Escribir "se quiso aprete 1 sino 2";// valida si se quiso o no.
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Si op == 1 Entonces
						valPnt<-4;
					SiNo
						valPnt<-3;
					FinSi
					
					Escribir "elija al ganador";
					Escribir " op 1 jugador 1";
					Escribir " op 2 jugador 2";
					Escribir "";
					leer op;
					Limpiar Pantalla;
					Segun op Hacer
						1:
							jugador1<- jugador1 + valPnt;;
						2:
							jugador2<- jugador2 + valPnt;
						De Otro Modo:
							Escribir "no es una opcion valida";
					FinSegun
				De Otro Modo:
					Escribir "no es una opcion valida";
			FinSegun
		3: // ver puntos de los juegadores
			
			Escribir nombreJg1, " puntos ", jugador1;
			Escribir nombreJg2, " puntos ", jugador2;
			leer varPausa;
			Limpiar Pantalla;
			
			
		4: 	// reglamento del juego 
			Escribir "C�mo jugar al truco argentino";
			Escribir "Al principio de la partida se decide por sorteo autom�tico el jugador que es";
			escribir "mano, es decir, el que empieza a jugar. En la siguiente ronda (si la hay) empezar�a el jugador situado a la derecha del actual.";
			Escribir "";
			Escribir "En cada ronda, se reparten 3 cartas a cada jugador y todos tiran una carta por turnos.";
			escribir " El jugador con la carta de mayor valor ganar� dicha mano y tirar� primero en la siguiente (en caso de empate el jugador anterior ser� el primero en tirar).";
			escribir " La primera pareja o jugador que gana 2 manos, gana la ronda.";
			Escribir "";
			
			Escribir "Valor de las cartas (de mayor a menor)";
			Escribir "";
			Escribir "As de espadas (tambi�n llamado Macho)";
			Escribir "As de bastos";
			Escribir "Siete de espadas ";
			Escribir "Siete de oros ";
			Escribir "Treses";
			Escribir "Doses";
			Escribir "As de oros y as de copas (llamados Falso)";
			Escribir "Doces";
			Escribir "Onces";
			Escribir "Dieces";
			Escribir "Siete de copas y siete de bastos (llamados sietes falsos o malos)";
			Escribir "Cincos";
			Escribir "Cuatros";
			leer varPausa;
			Limpiar Pantalla;
		5: // un poco de historia 
			Escribir "";
			Escribir "El truco que lleg� a la Argentina ven�a de Valencia, Espa�a, y se instal� en nuestro territorio gracias a los colonizadores.";
			Escribir "Poco a poco, entre el campo y las pulper�as, lo aprendieron los pueblos originarios y los criollos. Ellos fueron quienes le agregaron nuevas reglas, c�digos y maneras de jugar";
			Escribir "";
			leer varPausa;
			Limpiar Pantalla;
		
			
		6:
			Escribir "seguro q quiere salir? precione 1 ";
			leer op;
			Si op == 1 Entonces
				salir <- falso;
			FinSi
			Limpiar Pantalla;
			
		De Otro Modo:
			Escribir "no es una opcion valida";
	FinSegun
	si jugador1 >= puntos o jugador2 >= puntos Entonces
		salir <- Falso;
	FinSi
Hasta Que salir==Falso

si jugador1> jugador2 Entonces
	Escribir "ganador ", jugador1," ", nombreJg1;
SiNo
	Escribir "ganador ", jugador2," ", nombreJg2;
FinSi

FinProceso
