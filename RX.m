function trama = RX()
%Recepcion Serial por el puerto COM

%Abrir el puerto para tx serial
p_serial = input('Ingrese el # del Puerto COM:', 's'); %solicita el numero del puerto COM
s = serial (['COM', p_serial]); %Concatena COM con el numero de puerto
set(s, 'timeout', 60); %Establecer un tiempo de espera de datos
set(s, 'terminator', 'D'); %Establece un valor para terminar la recepcion de datos, es este caso es D
set(s, 'inputbuffersize', 480012); %Establecer el valor del buffer de entrada
set(s,'requesttosend', 'off'); %Desactiva la opcion de solicitud para enviar
fopen(s); %Abrir el puerto serial
trama = fscanf(s); %Leer y almacenar los datos de entrada en el buffer
fclose(s); %Cierra el puerto y finaliza recepcion
