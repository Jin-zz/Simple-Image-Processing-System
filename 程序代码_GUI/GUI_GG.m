function varargout = GUI_GG(varargin)
% GUI_GG MATLAB code for GUI_GG.fig
%      GUI_GG, by itself, creates a new GUI_GG or raises the existing
%      singleton*.
%
%      H = GUI_GG returns the handle to a new GUI_GG or the handle to
%      the existing singleton*.
%
%      GUI_GG('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI_GG.M with the given input arguments.
%
%      GUI_GG('Property','Value',...) creates a new GUI_GG or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_GG_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_GG_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_GG

% Last Modified by GUIDE v2.5 26-Oct-2017 13:55:56

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_GG_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_GG_OutputFcn, ...
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


% --- Executes just before GUI_GG is made visible.
function GUI_GG_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_GG (see VARARGIN)

% Choose default command line output for GUI_GG
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI_GG wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_GG_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
%varargout{1} = handles.output;
uiwait(gcf);
GG=getappdata(0,'GG');
varargout{1} =GG;



function e2_Callback(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e2 as text
%        str2double(get(hObject,'String')) returns contents of e2 as a double
e2=str2double(get(hObject,'String'));
setappdata(0,'e2',e2);

% --- Executes during object creation, after setting all properties.
function e2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e3_Callback(hObject, eventdata, handles)
% hObject    handle to e3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e3 as text
%        str2double(get(hObject,'String')) returns contents of e3 as a double
e3=str2double(get(hObject,'String'));
setappdata(0,'e3',e3);

% --- Executes during object creation, after setting all properties.
function e3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e4_Callback(hObject, eventdata, handles)
% hObject    handle to e4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e4 as text
%        str2double(get(hObject,'String')) returns contents of e4 as a double
e4=str2double(get(hObject,'String'));
setappdata(0,'e4',e4);

% --- Executes during object creation, after setting all properties.
function e4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e5_Callback(hObject, eventdata, handles)
% hObject    handle to e5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e5 as text
%        str2double(get(hObject,'String')) returns contents of e5 as a double
e5=str2double(get(hObject,'String'));
setappdata(0,'e5',e5);

% --- Executes during object creation, after setting all properties.
function e5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e6_Callback(hObject, eventdata, handles)
% hObject    handle to e6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e6 as text
%        str2double(get(hObject,'String')) returns contents of e6 as a double
e6=str2double(get(hObject,'String'));
setappdata(0,'e6',e6);

% --- Executes during object creation, after setting all properties.
function e6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e7_Callback(hObject, eventdata, handles)
% hObject    handle to e7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e7 as text
%        str2double(get(hObject,'String')) returns contents of e7 as a double
e7=str2double(get(hObject,'String'));
setappdata(0,'e7',e7);

% --- Executes during object creation, after setting all properties.
function e7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e7 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e8_Callback(hObject, eventdata, handles)
% hObject    handle to e8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e8 as text
%        str2double(get(hObject,'String')) returns contents of e8 as a double
e8=str2double(get(hObject,'String'));
setappdata(0,'e8',e8);

% --- Executes during object creation, after setting all properties.
function e8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e8 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e9_Callback(hObject, eventdata, handles)
% hObject    handle to e9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e9 as text
%        str2double(get(hObject,'String')) returns contents of e9 as a double
e9=str2double(get(hObject,'String'));
setappdata(0,'e9',e9);

% --- Executes during object creation, after setting all properties.
function e9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e9 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function e1_Callback(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of e1 as text
%        str2double(get(hObject,'String')) returns contents of e1 as a double
e1=str2double(get(hObject,'String'));
setappdata(0,'e1',e1);

% --- Executes during object creation, after setting all properties.
function e1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to e1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
e1=getappdata(0,'e1');
e2=getappdata(0,'e2');
e3=getappdata(0,'e3');
e4=getappdata(0,'e4');
e5=getappdata(0,'e5');
e6=getappdata(0,'e6');
e7=getappdata(0,'e7');
e8=getappdata(0,'e8');
e9=getappdata(0,'e9');
GG=zeros(3,3);
GG=[e1 e2 e3; e4 e5 e6; e7 e8 e9];
setappdata(0,'GG',GG);
disp(GG);
close;
