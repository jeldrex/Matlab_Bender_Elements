# Matlab_Bender_Elements
Matlab_Bender_Elements

Protocolo del paquete de datos serial.
(Los códigos están expresados en hexadecimal)


Primer carácter del paquete: Escape (código 1B)
Segundo carácter del paquete: 
Comando "L"  (código 4C) (carga valores tabla conversor de salida)
Comando  "R" (código 52) (reset)
Comando  "C"  (código 43) (configura parámetros de trabajo)
Comando  "G"  (código 47) (inicia prueba)
Comando  "S"  (código 53) (detiene ejecución)
Comando  "V"  (código 56) (solicita versión sistema)
Comando  "M"  (código 4D) (solicita mediciones)
Siguientes caracteres del paquete:
Datos del comando en código ASCII por nible.
Por ejemplo si el valor a mandar es 028B (dos bytes) se envían cuatro ASCII, primero el código 30 que representa el 0, segundo el código 32 que representa el 2, tercero el 38 que representa el 8 y cuarto el 42 que representa la B, o sea, el nible más significativo primero.
Los datos enviados dependen de si el comando proviene del PC o del equipo. Los comandos enviados del equipo de medición al PC son respuesta a los enviados por el PC.
En el caso de paquetes enviados por el PC:
Los comandos R, G, S, V y M no tienen datos. 
La cantidad de datos asociados al comando L sólo está delimitado por el carácter final del paquete. Los datos son almacenados en forma consecutiva a partir del último paquete recibido. Cada dato son 2 bytes de los que sólo se usan 10 bits. La cantidad máxima de datos es de 256. Los datos que se envían de más se ignoran. Para iniciar el puntero al primer dato hay que enviar previamente el comando R.
Los datos asociados al comando C son: cantidad de datos para el conversor de salida (un byte), tiempo en milisegundos entre salida y salida (tres byte), tiempo en milisegundos entre recogida y recogida (dos byte), cantidad de mediciones (dos byte) y un byte de control para extensiones futuras. Este byte servirá por ejemplo para ordenar la utilización de señales prefijadas.
En el caso de paquetes enviados por el equipo de medición como respuesta:
Para los comandos L, R, C, G, y S, la secuencia de códigos 4F y 4B (“OK”). 
Para el comando V, la secuencia de códigos 31, 2E y 30 (“1.0”)
Para el comando G, cuando la medición termina vuelve a repetir la respuesta.
Para el comando M los datos de la conversión A/D en dos byte cada uno.
Carácter final: Retorno (código 0D)
