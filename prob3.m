function varargout = prob3(varargin)
% PROB3 MATLAB code for prob3.fig
%      PROB3, by itself, creates a new PROB3 or raises the existing
%      singleton*.
%
%      H = PROB3 returns the handle to a new PROB3 or the handle to
%      the existing singleton*.
%
%      PROB3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in PROB3.M with the given input arguments.
%
%      PROB3('Property','Value',...) creates a new PROB3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before prob3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to prob3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES


% Edit the above text to modify the response to help prob3

% Last Modified by GUIDE v2.5 11-Nov-2020 14:41:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @prob3_OpeningFcn, ...
                   'gui_OutputFcn',  @prob3_OutputFcn, ...
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


% --- Executes just before prob3 is made visible.
function prob3_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to prob3 (see VARARGIN)

% Choose default command line output for prob3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes prob3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = prob3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit_x0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_x0_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_y0);

function edit_y0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_y0_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_z0);

function edit_z0_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_z0_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_Vx);

function edit_Vx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_Vx_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_Vy);


function edit_Vy_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_Vy_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_Vz);


function edit_Vz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_Vz_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_Ex);


function edit_Ex_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_Ex_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_Ey);

function edit_Ey_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_Ey_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_Ez);


function edit_Ez_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_Ez_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_Hx);



function edit_Hx_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_Hx_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_Hy);


function edit_Hy_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_Hy_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_Hz);


function edit_Hz_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_Hz_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_q);


function edit_q_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_q_Callback(hObject, eventdata, handles)
uicontrol(handles.edit_m);


function edit_m_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function edit_m_Callback(hObject, eventdata, handles)
set(handles.pushbutton_start, 'Enable', 'on');
uicontrol(handles.pushbutton_start);

function pushbutton_start_Callback(hObject, eventdata, handles)
guidata(hObject, handles);

x0 = str2num(get(handles.edit_x0, 'String'));
y0 = str2num(get(handles.edit_y0, 'String'));
z0 = str2num(get(handles.edit_z0, 'String'));
Vx = str2num(get(handles.edit_Vx, 'String'));
Vy = str2num(get(handles.edit_Vy, 'String'));
Vz = str2num(get(handles.edit_Vz, 'String'));

Ex = str2num(get(handles.edit_Ex, 'String'));
Ey = str2num(get(handles.edit_Ey, 'String'));
Ez = str2num(get(handles.edit_Ez, 'String'));
 
Hx = str2num(get(handles.edit_Hx, 'String'));
Hy = str2num(get(handles.edit_Hy, 'String'));
Hz = str2num(get(handles.edit_Hz, 'String'));
 
 
q = str2num(get(handles.edit_q, 'String'));
m = str2num(get(handles.edit_m, 'String'));



 %___________________________________________________________________________________________________________________
tspan=[0  20];

xlabel ('x axis');
ylabel ('y axis');
zlabel ('z axis');

r0=[x0 y0 z0]';
V0=[Vx Vy Vz]';
 
E = [Ex Ey Ez]';
H = [Hx Hy Hz]';
 



R0 = [r0; V0]; %начальные условия
f = @(t,r) [r(4:6); (q/m)*(cross(r(4:6),H)+E)];
[t,r] = ode23t(f,tspan,R0);
%Значение r
r
 

for n=1:length(r)
plot3(r(n,1),r(n,2),r(n,3),'--.r');
grid on
pause(0.0000002);
hold on 
end

set(handles.pushbutton_clear, 'Enable', 'on');
uicontrol(handles.pushbutton_clear);

function pushbutton_clear_CreateFcn(hObject, eventdata, handles)
    if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
function pushbutton_clear_Callback(hObject, eventdata, handles)
% очистка осей
cla
% удаление содержимого областей ввода
set(handles.edit_x0, 'String', '');
set(handles.edit_y0, 'String', '');
set(handles.edit_z0, 'String', '');
set(handles.edit_Vx, 'String', '');
set(handles.edit_Vy, 'String', '');
set(handles.edit_Vz, 'String', '');
set(handles.edit_Ex, 'String', '');
set(handles.edit_Ey, 'String', '');
set(handles.edit_Ez, 'String', '');
set(handles.edit_Hx, 'String', '');
set(handles.edit_Hy, 'String', '');
set(handles.edit_Hz, 'String', '');
set(handles.edit_q, 'String', '');
set(handles.edit_m, 'String', '');
% делаем кнопки Plot и Clear недоступными
set(handles.pushbutton_clear, 'Enable', 'off');
set(handles.pushbutton_start, 'Enable', 'off');
% передаем фокус области ввода Function
uicontrol(handles.edit_x0);
