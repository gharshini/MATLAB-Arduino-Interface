%%
%Name: Harshini Gangapuram
%Access ID: fr8393
%Assignment: 2
%%

function varargout = fr8393_assinment2(varargin)
% FR8393_ASSINMENT2 MATLAB code for fr8393_assinment2.fig
%      FR8393_ASSINMENT2, by itself, creates a new FR8393_ASSINMENT2 or raises the existing
%      singleton*.
%
%      H = FR8393_ASSINMENT2 returns the handle to a new FR8393_ASSINMENT2 or the handle to
%      the existing singleton*.
%
%      FR8393_ASSINMENT2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in FR8393_ASSINMENT2.M with the given input arguments.
%
%      FR8393_ASSINMENT2('Property','Value',...) creates a new FR8393_ASSINMENT2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before fr8393_assinment2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to fr8393_assinment2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help fr8393_assinment2

% Last Modified by GUIDE v2.5 09-Mar-2015 06:24:44

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @fr8393_assinment2_OpeningFcn, ...
                   'gui_OutputFcn',  @fr8393_assinment2_OutputFcn, ...
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


% --- Executes just before fr8393_assinment2 is made visible.
function fr8393_assinment2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to fr8393_assinment2 (see VARARGIN)

% Choose default command line output for fr8393_assinment2
handles.output = hObject;
handles.robot = []; % the robot 
handles.a=0; %its joints
handles.b=0; %its joints
handles.c=0; %its joints
handles.d=0; %its joints
handles.e=0; %its joints
handles.f=0; %its joints
handles.x=0; %position of x
handles.y=0; %position of y
handles.z=0; %position of z
handles.bot=[]; %Arduino intialisation
handles.button=[];
handles.x1=0; %potentiometer callibration for x
handles.y1=0; %potentiometer callibration for y
handles.z1=0; %potentiometer callibration for z
handles.val=0; %image brightness
handles.change=0; %image brightness
handles.imbright=0; %image brightness
handles.bright=0; %image brightness
handles.axes1=0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes fr8393_assinment2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = fr8393_assinment2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

%% Next six sliders are for rotating six joints of puma560
% --- Executes on slider movement.
function link1_Callback(hObject, eventdata, handles)
% hObject    handle to link1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.f = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function link1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to link1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function link2_Callback(hObject, eventdata, handles)
% hObject    handle to link2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.e = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function link2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to link2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function link3_Callback(hObject, eventdata, handles)
% hObject    handle to link3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.d = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function link3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to link3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function link4_Callback(hObject, eventdata, handles)
% hObject    handle to link4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.c = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function link4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to link4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function link5_Callback(hObject, eventdata, handles)
% hObject    handle to link5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.b = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);


% --- Executes during object creation, after setting all properties.
function link5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to link5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function link6_Callback(hObject, eventdata, handles)
% hObject    handle to link6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
handles.a = get (hObject,'Value');
handles.robot.plot ([handles.a, handles.b, handles.c , handles.d, handles.e, handles.f]);
% Update handles structure
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function link6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to link6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

%% Plotting puma560 with links
% --- Executes on button press in p560.
function p560_Callback(hObject, eventdata, handles)
% hObject    handle to p560 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
L(1)= Link([0 0 0 1.571]);
L(2)= Link([0 0 0.4318 0]);
L(3)= Link([0 0.15 0.0203 -1.571]);
L(4)= Link([0 0.4318 0 1.571]);
L(5)= Link([0 0 0 -1.571]);
L(6)= Link([0 0 0 0]);
handles.robot = SerialLink(L, 'name', 'Puma560');
handles.robot.plot ([handles.a, handles.b, handles.c, handles.d, handles.e, handles.f]);

%Updating the handles structure
guidata(hObject, handles);

%% ikine starts from here
% --- Executes on button press in ikine.
function ikine_Callback(hObject, eventdata, handles)
% hObject    handle to ikine (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
q0=[1.57 0.78 0.39 1.57 0.39 0.78];
m=[1 1 1 0 0 0];
T=handles.robot.fkine(q0)
F=transl([handles.x,handles.y,handles.z])
F(1:3,4)=([handles.x,handles.y,handles.z])
q=handles.robot.ikine(F,q0,m)
handles.robot.plot(q);
%Updating the handles structure
guidata(hObject, handles);

%% Connecting to Arduino
% --- Executes on button press in connect.
function connect_Callback(hObject, eventdata, handles)
% hObject    handle to connect (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.bot=arduino('COM4');
%Updating the handles structure
guidata(hObject, handles);

%% We have three edit boxes for x y and z positions
function xvalue_Callback(hObject, eventdata, handles)
% hObject    handle to xvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xvalue as text
%        str2double(get(hObject,'String')) returns contents of xvalue as a double


% --- Executes during object creation, after setting all properties.
function xvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yvalue_Callback(hObject, eventdata, handles)
% hObject    handle to yvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of yvalue as text
%        str2double(get(hObject,'String')) returns contents of yvalue as a double


% --- Executes during object creation, after setting all properties.
function yvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to yvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zvalue_Callback(hObject, eventdata, handles)
% hObject    handle to zvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zvalue as text
%        str2double(get(hObject,'String')) returns contents of zvalue as a double


% --- Executes during object creation, after setting all properties.
function zvalue_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zvalue (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

%%Three push buttions for x y z positions. These values are taken from
%%potentiometer
% Takes x position from potentiometer
% --- Executes on button press in x_value.
function x_value_Callback(hObject, eventdata, handles)
% hObject    handle to x_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.bot.pinMode(6,'output');
while(handles.bot.digitalRead(8) == 0)
handles.x=handles.bot.analogRead(0); %reads potentiometer reading
% Here i took my ikine limits as -1.9 to 1.9 from which I calculated a and b for the equation y=ax+b
lkj = linspace(0,1023,10);
s = linspace(-1.9,1.9,10);
p1 = polyfit(lkj,s,1);
handles.x=handles.bot.analogRead(0); %reads potentiometer reading
handles.x1 = polyval(p1,handles.x);
set(handles.xvalue,'String',num2str(handles.x1)); %sets the value obtained to xvalue edit box
%Performing ikine
q0 =[1.57 0.78 0.39 1.57 0.39 0.78];
handles.T=handles.robot.fkine(q0);
handles.T(3,4) =  handles.x1;
q=handles.robot.ikine(handles.T,q0,[1 1 1 0 0 0]);
handles.robot.plot(q);
handles.bot.digitalWrite(6,1);
end
handles.bot.digitalWrite(6,0);
%Updating the handles structure
guidata(hObject, handles);
%end
% --- Executes on button press in y_value.
function y_value_Callback(hObject, eventdata, handles)
% hObject    handle to y_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.bot.pinMode(6,'output');
while(handles.bot.digitalRead(8) == 0)
% Here i took my ikine limits as -1.9 to 1.9 from which I calculated a and b for the equation y=ax+b
lkj = linspace(0,1023,10);
s = linspace(-1.9,1.9,10);
p1 = polyfit(lkj,s,1);
handles.y=handles.bot.analogRead(0); %reads potentiometer reading
handles.y1 = polyval(p1,handles.y);
set(handles.yvalue,'String',num2str(handles.y1)); %sets the value obtained to xvalue edit box
%Performing ikine
q0 =[1.57 0.78 0.39 1.57 0.39 0.78];
handles.T=handles.robot.fkine(q0);
handles.T(3,4) =  handles.y1;
q=handles.robot.ikine(handles.T,q0,[1 1 1 0 0 0]);
handles.robot.plot(q);
handles.bot.digitalWrite(6,1);
end
handles.bot.digitalWrite(6,0);
%Updating the handles structure
guidata(hObject, handles);

% --- Executes on button press in z_value.
function z_value_Callback(hObject, eventdata, handles)
% hObject    handle to z_value (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
handles.bot.pinMode(6,'output');
while(handles.bot.digitalRead(8) == 0)
% Here i took my ikine limits as -1.9 to 1.9
lkj = linspace(0,1023,10);
s = linspace(-1.9,1.9,10);
p1 = polyfit(lkj,s,1);
handles.z=handles.bot.analogRead(0); %reads potentiometer reading
handles.z1 = polyval(p1,handles.z);
set(handles.zvalue,'String',num2str(handles.z1)); %sets the value obtained to xvalue edit box
%Performing ikine
q0 =[1.57 0.78 0.39 1.57 0.39 0.78];
handles.T=handles.robot.fkine(q0);
handles.T(3,4) =  handles.z1;
q=handles.robot.ikine(handles.T,q0,[1 1 1 0 0 0]);
handles.robot.plot(q);
handles.bot.digitalWrite(6,1);
end
handles.bot.digitalWrite(6,0);
%Updating the handles structure
guidata(hObject, handles);

%% Image Brightness

% --- Executes on button press in load.
function load_Callback(hObject, eventdata, handles)
% hObject    handle to load (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% To load image
global im im2
[path,user_cance]=imgetfile();
if user_cance
    msgbox(sprintf('Error'),'Error','Error');
    return
    end
im=imread(path);
im=im2double(im);
im2=im;
imshow(im);
guidata(hObject, handles);

% --- Executes on slider movement.
function bright_Callback(hObject, eventdata, handles)
% hObject    handle to bright (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
%Slider to change brightness
global im2
handles.val=0.25*get(hObject,'Value')-0.25;
handles.imbright=im2+handles.val
imshow(handles.imbright);
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function bright_CreateFcn(hObject, eventdata, handles)
% hObject    handle to bright (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in brightness.
function brightness_Callback(hObject, eventdata, handles)
% hObject    handle to brightness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Takes Potentiometer reading to change brightness
handles.bot.pinMode(6,'output');
while((handles.bot.digitalRead(8) == 0))
lkj = linspace(0,1023,10);
s = linspace(-250,250,10);
p1 = polyfit(lkj,s,1);
handles.bright=handles.bot.analogRead(0);
pause(0.1);
global im2
%handles.val=get(hObject,'Value')-0.5
handles.val=handles.bright-0.5;
handles.imbright=im2+handles.val;
imshow(handles.imbright);
handles.bot.digitalWrite(6,1);
end
handles.bot.digitalWrite(6,0);
%Updating the handles structure
guidata(hObject, handles);
