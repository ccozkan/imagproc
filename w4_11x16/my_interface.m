function varargout = my_interface(varargin)
% MY_INTERFACE MATLAB code for my_interface.fig
%      MY_INTERFACE, by itself, creates a new MY_INTERFACE or raises the existing
%      singleton*.
%
%      H = MY_INTERFACE returns the handle to a new MY_INTERFACE or the handle to
%      the existing singleton*.
%
%      MY_INTERFACE('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MY_INTERFACE.M with the given input arguments.
%
%      MY_INTERFACE('Property','Value',...) creates a new MY_INTERFACE or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before my_interface_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to my_interface_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help my_interface

% Last Modified by GUIDE v2.5 11-Oct-2016 19:32:32

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @my_interface_OpeningFcn, ...
                   'gui_OutputFcn',  @my_interface_OutputFcn, ...
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


% --- Executes just before my_interface is made visible.
function my_interface_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to my_interface (see VARARGIN)

% Choose default command line output for my_interface
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);
axes(handles.axes1);
A=zeros(100);
A=A+.5;
imshow(A);

axes(handles.axes2);
A=zeros(100);
A=A+.75;
imshow(A);


% UIWAIT makes my_interface wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = my_interface_OutputFcn(hObject, eventdata, handles) 
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
axes(handles.axes1);
imshow(I);


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
global I
I=I+10;
axes(handles.axes2);
imshow(I);