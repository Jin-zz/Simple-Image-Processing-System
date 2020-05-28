function varargout = GUI_sub(varargin)
% GUI_SUB MATLAB code for GUI_sub.fig
%      GUI_SUB, by itself, creates a new GUI_SUB or raises the existing
%      singleton*.
%
%      H = GUI_SUB returns the handle to a new GUI_SUB or the handle to
%      the existing singleton*.
%
%      GUI_SUB('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_SUB.M with the given input arguments.
%
%      GUI_SUB('Property','Value',...) creates a new GUI_SUB or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_sub_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_sub_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_sub

% Last Modified by GUIDE v2.5 23-Sep-2017 14:53:12

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_sub_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_sub_OutputFcn, ...
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


% --- Executes just before GUI_sub is made visible.
function GUI_sub_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_sub (see VARARGIN)

% Choose default command line output for GUI_sub
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_sub wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_sub_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton_A.
function pushbutton_A_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_A (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.bmp';'*.jpg';'*.gif'},'选择图片');
if isequal(filename,0)
    disp('Users Selected Canceled');
else
str_A=[pathname filename];
%set(handles.pushbutton_A,'userdata',str);
%str=get(handles.pushbutton_A,'userdata');
A = imread(str_A);
set(handles.pushbutton_A,'userdata',A);
%h1=axes('Position',[0.1 0.2 0.3 0.6]);
axes(handles.axes_srcA);%axes1是坐标轴的标示
imshow(A);
end;

% --- Executes on button press in pushbutton_B.
function pushbutton_B_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_B (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.bmp';'*.jpg';'*.gif'},'选择图片');
if isequal(filename,0)
    disp('Users Selected Canceled');
else
str_B=[pathname filename];
%set(handles.pushbutton_B,'userdata',str);
%str=get(handles.pushbutton_B,'userdata');
B = imread(str_B);
set(handles.pushbutton_B,'userdata',B);
%h1=axes('Position',[0.1 0.2 0.3 0.6]);
axes(handles.axes_srcB);%axes1是坐标轴的标示
imshow(B);
end;

% --- Executes on button press in pushbutton_AB.
function pushbutton_AB_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_AB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.pushbutton_A,'userdata');
B=get(handles.pushbutton_B,'userdata');
[m,n,~]=size(B);
A = imresize(A,[m n]);
C1=imabsdiff(A,B);
axes(handles.axes_srcAB);%axes1是坐标轴的标示
imshow(C1);
% --- Executes on button press in pushbutton_BA.
function pushbutton_BA_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_BA (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.pushbutton_A,'userdata');
B=get(handles.pushbutton_B,'userdata');
[m,n,~]=size(B);
A = imresize(A,[m n]);
C2=imabsdiff(B,A);
axes(handles.axes_srcBA);%axes1是坐标轴的标示
imshow(C2);
