function TX(comando, datos)
%%Trasmision de datos por medio del puerto serie

%%Iniciar el objeto de comunicacion serial
p_serial = input('Ingrese el # del Puerto COM:', 's'); %Solicita la entrada numero del puerto COM
s = serial (['COM', p_serial]); %s=serial ('COM1');
%Concatena Primer car�cter del paquete: Escape (c�digo 1B), 
%con el segundo caracter que son los comandos, datos es lo que se envia, 
%0D es Car�cter final: Retorno
trama = ['1B', comando, datos, 'D'] ; 
t = whos('trama'); %calcular tama�o de la trama, t es una estructura
set (s, 'outputBufferSize', t.bytes); %Establecer tama�o del buffer de salida
set (s, 'BaudRate', 9600); %Establece tasa de transmision
fopen(s); %Abrir el puerto COM
fprintf(s,'%s', trama); %Envio de la trama en formato String %s
fclose (s); %Cerrar el puerto serial COM

