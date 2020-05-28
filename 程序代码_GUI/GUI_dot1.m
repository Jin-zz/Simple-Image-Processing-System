function varargout = GUI_dot1(varargin)
% GUI_DOT1 MATLAB code for GUI_dot1.fig
%      GUI_DOT1, by itself, creates a new GUI_DOT1 or raises the existing
%      singleton*.
%
%      H = GUI_DOT1 returns the handle to a new GUI_DOT1 or the handle to
%      the existing singleton*.
%
%      GUI_DOT1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_DOT1.M with the given input arguments.
%
%      GUI_DOT1('Property','Value',...) creates a new GUI_DOT1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_dot1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_dot1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_dot1

% Last Modified by GUIDE v2.5 23-Sep-2017 15:34:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_dot1_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_dot1_OutputFcn, ...
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


% --- Executes just before GUI_dot1 is made visible.
function GUI_dot1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_dot1 (see VARARGIN)

% Choose default command line output for GUI_dot1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_dot1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_dot1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton_open.
function pushbutton_open_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.bmp';'*.jpg';'*.gif'},'选择图片');
if isequal(filename,0)
    disp('Users Selected Canceled');
else
str_pic=[pathname filename];
%set(handles.pushbutton_A,'userdata',str);
%str=get(handles.pushbutton_A,'userdata');
pic = imread(str_pic);
%guidata(GUI_dot1,handles);
set(handles.pushbutton_open,'userdata',pic);
setappdata(0,'pic',pic);
%h1=axes('Position',[0.1 0.2 0.3 0.6]);
axes(handles.axes1);%axes1是坐标轴的标示
imshow(pic);
end;


% --- Executes on button press in pushbutton_ens.
function pushbutton_ens_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_ens (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%axes(handles.GUI_dot.axes_srcB);%axes1是坐标轴的标示
%imshow(handlse.pic);
%handles.switch_fig=1;
   %打开一个二值图像
       pic=get(handles.pushbutton_open,'userdata');
       if(pic)
   %guidata(GUI_dot,handles);
       handles=guidata(GUI_dot);
       axes(handles.axes_srcB);%axes1是坐标轴的标示
       imshow(pic); 

       close(GUI_dot1);
       else
       edit_y1=get(handles.y1,'userdata');
       edit_y2=get(handles.y2,'userdata');
       edit_x1=get(handles.x1,'userdata');
       edit_x2=get(handles.x2,'userdata');
       
       handles=guidata(GUI_dot);
%        m=getappdata(GUI_dot,'m');
%        n=getappdata(GUI_dot,'n');
%        o=getappdata(GUI_dot,'o');
%        m=get(handles.pushbutton_A,'userdata');
%        n=get(handles.pushbutton_A,'userdata');
%        o=get(handles.pushbutton_A,'userdata');

       axes(handles.axes_srcB);%axes1是坐标轴的标示
       pic=zeros(640,960,3);
      % A1(handles.m,handles.n,handles.o)=1;
       pic(edit_y1*640:edit_y2*640,edit_x1*960:edit_x2*960,:)=1;
       pic=im2double(pic);
       imshow(pic); 
       setappdata(0,'pic',pic);
       close(GUI_dot1);
       end;
   %else
%       close(GUI_dot1);
%    edit_y1=get(handles.y1,'userdata');
%    edit_y2=get(handles.y2,'userdata');
%    edit_x1=get(handles.x1,'userdata');
%    edit_x2=get(handles.x2,'userdata');
%    axes(handles.axes1);
%    handles=guidata(GUI_dot);
%    A1=zeros(m,n,o);
%    A1(edit_y1*m:edit_y2*m,edit_x1*n:edit_x2*n,:)=1;

  % handles=guidata(GUI_dot);
  
  %axes(handles.axes_srcB);
  %imshow(A1); 
  % close(GUI_dot1);
  % end;



function y1_Callback(hObject, eventdata, handles)
% hObject    handle to y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y1 as text
%        str2double(get(hObject,'String')) returns contents of y1 as a double
edit_y1 = get(hObject,'String'); 
%edit_y1 = get(handles.y1,'String'); %get teh input from the edit text field
edit_y1 = str2double(edit_y1); %change from string to number
set(handles.y1,'userdata',edit_y1);
setappdata(0,'edit_y1',edit_y1);

% --- Executes during object creation, after setting all properties.
function y1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function y2_Callback(hObject, eventdata, handles)
% hObject    handle to y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of y2 as text
%        str2double(get(hObject,'String')) returns contents of y2 as a double
edit_y2 = get(hObject,'String');   
%edit_y2 = get(handles.y2,'String'); %get teh input from the edit text field
edit_y2 = str2double(edit_y2); %change from string to number
set(handles.y2,'userdata',edit_y2);
setappdata(0,'edit_y2',edit_y2);

% --- Executes during object creation, after setting all properties.
function y2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to y2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x1_Callback(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x1 as text
%        str2double(get(hObject,'String')) returns contents of x1 as a double
edit_x1 = get(hObject,'String');   
%edit_x1 = get(handles.x1,'String'); %get teh input from the edit text field
edit_x1 = str2double(edit_x1); %change from string to number
set(handles.x1,'userdata',edit_x1);
setappdata(0,'edit_x1',edit_x1);

% --- Executes during object creation, after setting all properties.
function x1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function x2_Callback(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of x2 as text
%        str2double(get(hObject,'String')) returns contents of x2 as a double
edit_x2 = get(hObject,'String');   
%edit_x2 = get(handles.x2,'String'); %get teh input from the edit text field
edit_x2 = str2double(edit_x2); %change from string to number
set(handles.x2,'userdata',edit_x2);
setappdata(0,'edit_x2',edit_x2);


% --- Executes during object creation, after setting all properties.
function x2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to x2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
