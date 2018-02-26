function varargout = BenderElements(varargin)
% BENDERELEMENTS M-file for BenderElements.fig
%      BENDERELEMENTS, by itself, creates a new BENDERELEMENTS or raises the existing
%      singleton*.
%
%      H = BENDERELEMENTS returns the handle to a new BENDERELEMENTS or the handle to
%      the existing singleton*.
%
%      BENDERELEMENTS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BENDERELEMENTS.M with the given input arguments.
%
%      BENDERELEMENTS('Property','Value',...) creates a new BENDERELEMENTS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before BenderElements_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to BenderElements_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help BenderElements

% Last Modified by GUIDE v2.5 21-Aug-2012 18:34:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @BenderElements_OpeningFcn, ...
                   'gui_OutputFcn',  @BenderElements_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before BenderElements is made visible.
function BenderElements_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to BenderElements (see VARARGIN)

% Choose default command line output for BenderElements
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes BenderElements wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = BenderElements_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
set(hObject, 'String', {'Sinusoidal Simple', 'Sinusoidal Doble', 'Cuadrada Simple', 'Cuadrada Doble', 'Triangular Simple', 'Triangular Doble'});


function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
long=str2num(get(handles.edit1,'String'));
amp=str2num(get(handles.edit2,'String'));
cant=str2num(get(handles.edit3,'String'));
espa=str2num(get(handles.edit4,'String'));
%Grafica en axes2 el tipo de señal a enviar como pulso electrico
axes(handles.axes2);
cla;
% xlabel('Tiempo [ms]');
% ylabel('Voltaje [V]');

discre=100;%Discretizacion de cada onda
popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index%grafica la opcion seleccionada en la lista 1
    case 1%Sinusoidal Simple ***************************
        %Genera funcion
        paso01=pi/discre;
        x01=[0:paso01:paso01*discre]';
        y01=[sin(x01)];
        %Amolda funcion
        x02=long*x01/max(x01);
        y02=amp*y01;
        paso02=paso01*long/max(x01);
        %Crea Repeticiones
        espa01=[0:paso02:espa]';
        %Repite funcion
        y03=[]
        for i=1:cant;
            y04=[y03;y02;espa01*0];
            y03=y04;
        end
        x03=[0:paso02:paso02*size(y03,1)-paso02]';
        plot(x03,y03);
        xlabel('Tiempo [ms]');
        ylabel('Voltaje [V]'); 
        grid on;
    case 2%Sinusoidal Doble **************************
        %Genera funcion
        paso01=2*pi/discre;
        x01=[0:paso01:paso01*discre]';
        y01=[sin(x01)];
        %Amolda funcion
        x02=long*x01/max(x01);
        y02=amp*y01;
        paso02=paso01*long/max(x01);
        %Crea Repeticiones
        espa01=[0:paso02:espa]';
        %Repite funcion
        y03=[]
        for i=1:cant;
            y04=[y03;y02;espa01*0];
            y03=y04;
        end
        x03=[0:paso02:paso02*size(y03,1)-paso02]';
        plot(x03,y03);
        xlabel('Tiempo [ms]');
        ylabel('Voltaje [V]');
        grid on;
    case 3%Cuadrada Simple
        %Genera funcion
        paso01=1/discre;
        x01=[0;[0:paso01:(paso01*discre-2*paso01)]';paso01*discre-2*paso01];
        y01=[0;ones(discre-1,1);0];
        %Amolda funcion
        x02=long*x01/max(x01);
        y02=amp*y01;
        paso02=paso01*long/max(x01);
        %Crea Repeticiones
        espa01=[0:paso02:espa]';
        %Repite funcion
        x03=[0];
        y03=[];
        for i=1:cant;
            y04=[0;y03;y02;espa01*0];
            y03=y04;
            x04=[x03;[max(x03):paso02:paso02*size(x02,1)-2*paso02]';max([max(x03):paso02:paso02*size(x02,1)]');espa01+paso02+max([max(x03):paso02:paso02*size(x02,1)]')];
            x03=x04;
        end
%         x03=[0:paso02:paso02*size(y03,1)-paso02]';
        plot(x03,y03);
        xlabel('Tiempo [ms]');
        ylabel('Voltaje [V]');
        grid on;
    case 4
        %Genera funcion
        paso01=1/discre;
        x01=[0;[0:paso01:(paso01*discre-2*paso01)]';paso01*discre-paso01];
        y01=[0;ones(discre-1,1);0];
        %Amolda funcion
        x02=long*x01/max(x01);
        y02=amp*y01;
        paso02=paso01*long/max(x01);
        %Crea Repeticiones
        espa01=[0:paso02:espa]';
        %Repite funcion
        y03=[]
        for i=1:cant;
            y04=[y03;y02;espa01*0];
            y03=y04;
        end
        x03=[0:paso02:paso02*size(y03,1)-paso02]';
        plot(x03,y03);
        xlabel('Tiempo [ms]');
        ylabel('Voltaje [V]');
        grid on;
    case 5
        surf(peaks);
        xlabel('Tiempo [ms]');
        ylabel('Voltaje [V]');              
        
 end
%


% x=0:0.1:10;
% y=amp*sin(long*x);
% pHandles=plot(x,y,'Parent',handles.axes2);

% multi=num2str(long*amp*cant);
% set(handles.text8,'String',multi);
% a=get(handles.entrada,'String');
% set(handles.salida,'String',a);
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Untitled_1_Callback(hObject, eventdata, handles)
% hObject    handle to Untitled_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
