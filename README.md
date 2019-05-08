# Tarea Nnodes

Introduccion:
Se debe realizar una simulacion, la cual consiste en un grupo dinamico de personas jugando a la
ruleta. El objetivo es crear un sistema para monitorear una mesa de casino, donde los jugadores
modifican sus apuestas dependiendo del clima.

Competencias:
* Desarrollar una aplicacion ​Ruby on Rails en su ultima version (5.x).
* Deben existir vistas que permitan ingresar jugadores, a los cuales se les pueden modificar
sus datos y cantidad de dinero que poseen.
* Los jugadores parten con una cantidad de $10.000 por defecto.
* Los jugadores participan de una partida de ruleta automaticamente, cada 3 minutos.
* En cada ronda los jugadores apuestan entre un 8% y 15% del total de dinero que poseen. Si
tienen $1.000 o menos, van ​ All In. Si no les queda dinero, no apuestan.
* La apuesta puede variar dependiendo del clima de Santiago de Chile, por lo que se debe
consultar alguna API, y en caso de que este pronosticado una temperatura superior a 25°C
dentro de los proximos 7 dias, las apuestas son mas conservadoras y cambian a un valor
aleatorio entre 3% y 7%.
* El modo de apuesta es el siguiente, un jugador puede apostar a ​ Verde, Rojo o Negro ​ con un
2%, 49% y 49% de probabilidad respectivamente.
* Un jugador recupera el doble de lo apostado si acierta su apuesta, cuando esta sea​ Rojo o
Negro , ​y recupera 15 veces lo apostado en caso de acertar Verde. En caso de perder la
apuesta, no recupera nada.
* La ruleta entrega resultados con la misma probabilidad que los jugadores hacen apuestas, es
decir, Verde 2%, Rojo 49% y Negro 49%. ​
* Al final del dia, todos los jugadores reciben $10.000.
* Debe existir una vista donde se muestren todas las rondas transcurridas, con la apuesta de
cada jugador y el resultado de la ruleta.
* La ​URL​ principal de la aplicacion debe ser esta vista.
* El diseño no se evaluara.
* Cualquier otra funcionalidad no mencionada se considera en la evaluacion, pero no es
obligatoria.
* Cualquier cosa no especificada queda a criterio del desarrollador.
