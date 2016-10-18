function varargout = assign1(varargin)
% ASSIGN1 MATLAB code for assign1.fig
%      ASSIGN1, by itself, creates a new ASSIGN1 or raises the existing
%      singleton*.
%
%      H = ASSIGN1 returns the handle to a new ASSIGN1 or the handle to
%      the existing singleton*.
%
%      ASSIGN1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in ASSIGN1.M with the given input arguments.
%
%      ASSIGN1('Property','Value',...) creates a new ASSIGN1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before assign1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to assign1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help assign1

% Last Modified by GUIDE v2.5 18-Oct-2016 18:34:48

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @assign1_OpeningFcn, ...
                   'gui_OutputFcn',  @assign1_OutputFcn, ...
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
set(handles.slider1,'Value',.5);


% --- Executes just before assign1 is made visible.
function assign1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to assign1 (see VARARGIN)

% Choose default command line output for assign1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
A=zeros(100);
axes(handles.axes1);
imshow(A);
axes(handles.axes2);
imshow(A);

% UIWAIT makes assign1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = assign1_OutputFcn(hObject, eventdata, handles) 
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

global I;

[filename, pathname] = uigetfile('*.jpg', 'Pick a MATLAB code file');
myFilename=[pathname filename]
I=imread(myFilename);
I=im2double(I);
axes(handles.axes1);
imshow(I);

% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

global I;
global R;

% set(handles.slider1,'Value',.5);
myValue=get(handles.slider1,'Value');
R=I+myValue*1;
axes(handles.axes2);
imshow(R);
% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
global I;
global R;

myValue=get(handles.slider2,'Value');
%%call backli yapmak gerek!!!
R=I;
bot=myValue;
top=myValue+.2;
Ihsv=rgb2hsv(I);
[M N K]=size(I);
for i=1:M
    for  j=1:N
        if Ihsv(i,j,1)>bot  && Ihsv(i,j,1)<top
            R(i,j,1)=0;
        end
    end
end


% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end

