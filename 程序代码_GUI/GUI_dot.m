function varargout = GUI_dot(varargin)
% GUI_DOT MATLAB code for GUI_dot.fig
%      GUI_DOT, by itself, creates a new GUI_DOT or raises the existing
%      singleton*.
%
%      H = GUI_DOT returns the handle to a new GUI_DOT or the handle to
%      the existing singleton*.
%
%      GUI_DOT('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DOT.M with the given input arguments.
%
%      GUI_DOT('Property','Value',...) creates a new GUI_DOT or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_dot_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_dot_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_dot

% Last Modified by GUIDE v2.5 23-Sep-2017 23:19:24

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_dot_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_dot_OutputFcn, ...
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


% --- Executes just before GUI_dot is made visible.
function GUI_dot_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_dot (see VARARGIN)

% Choose default command line output for GUI_dot
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_dot wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_dot_OutputFcn(hObject, eventdata, handles) 
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
%  [m,n,o]=size(A);
% setappdata(0,'m',m);setappdata(0,'m',m);setappdata(0,'m',m);
%A = imresize(A,[640 960]);
%set(handles.pushbutton_A,'userdata',m);
%set(handles.pushbutton_A,'userdata',n);
%set(handles.pushbutton_A,'userdata',o);
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
run GUI_dot1;


%if ishandle(GUI_dot1) 
 %   guidata(GUI_dot1,handles);
  %  pic=handles.pic;
   % handles=guidata(GUI_dot);
    %axes(handles.axes_srcB);%axes1是坐标轴的标示
    %imshow(pic);
%end;


%A=get(handles.pushbutton_A,'userdata');
%[m,n,o]=size(A);
%B=zeros(m,n,o);
%B(0.2*m:0.8*m,0.2*n:0.8*n,:)=1;
%set(handles.pushbutton_B,'userdata',B);
%axes(handles.axes_srcB);%axes1是坐标轴的标示
%imshow(B);

% --- Executes on button press in pushbutton_dot.
function pushbutton_dot_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
A=get(handles.pushbutton_A,'userdata');
%handles=guidata(GUI_dot1);
%B=get(handles.pic,'userdata');
pic=getappdata(0,'pic');
B=pic;
[m,n,~]=size(B);
A = imresize(A,[m n]);
A=im2double(A);B=im2double(B);
C=B.*A;
axes(handles.axes_srcDot);%axes1是坐标轴的标示
imshow(C);


% --- Executes during object creation, after setting all properties.
function axes_srcB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_srcB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_srcB
