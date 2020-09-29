function varargout = brightness(varargin)
% BRIGHTNESS MATLAB code for brightness.fig
%      BRIGHTNESS, by itself, creates a new BRIGHTNESS or raises the existing
%      singleton*.
%
%      H = BRIGHTNESS returns the handle to a new BRIGHTNESS or the handle to
%      the existing singleton*.
%
%      BRIGHTNESS('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in BRIGHTNESS.M with the given input arguments.
%
%      BRIGHTNESS('Property','Value',...) creates a new BRIGHTNESS or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before brightness_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to brightness_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help brightness

% Last Modified by GUIDE v2.5 09-Mar-2015 00:02:46

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @brightness_OpeningFcn, ...
                   'gui_OutputFcn',  @brightness_OutputFcn, ...
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


% --- Executes just before brightness is made visible.
function brightness_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to brightness (see VARARGIN)

% Choose default command line output for brightness
handles.output = hObject;
handles.I=0;
handles.val=0;
handles.imbright=0;
% Update handles structure
guidata(hObject, handles);

% UIWAIT makes brightness wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = brightness_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%handles.I = imread('pout.tif');
%handles.I= 'input the file name:';
% prompt = 'input the file name:';
% handles.I = input(prompt)
%imshow(handles.I);
global im im2
[path,user_cance]=imgetfile();
[path,user_cance]=imgetfile();
if user_cance
    msgbox(sprintf('Error'),'Error','Error');
    return
    end
im=imread(path);
%im=im2double(im);
im2=im;
imshow(im);
guidata(hObject, handles);

% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global im2
handles.val=0.5*get(hobject,'Value')-0.5;
handles.imbright=im2+handles.val;
%handles.p=get(handles.slider1, 'value');
%NewImg=imadjust(handles.I, [], [0 1]);
%axes(handles.axes1);
imshow(handles.imbright);

%handles.newImg.plot([handles.p]);
guidata(hObject, handles);
% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
