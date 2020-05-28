function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 26-Jun-2018 09:15:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
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


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);


% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);

% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --------------------------------------------------------------------
function m_file_Callback(hObject, eventdata, handles)
% hObject    handle to m_file (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_file_exit_Callback(hObject, eventdata, handles)
% hObject    handle to m_file_exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close(GUI);



% --------------------------------------------------------------------
function m_add_Callback(hObject, eventdata, handles)
% hObject    handle to m_add (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run GUI_add

% --------------------------------------------------------------------
function m_dot_Callback(hObject, eventdata, handles)
% hObject    handle to m_dot (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run GUI_dot


% --------------------------------------------------------------------
function m_sub_Callback(hObject, eventdata, handles)
% hObject    handle to m_sub (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
run GUI_sub


% --------------------------------------------------------------------
function m_transform_Callback(hObject, eventdata, handles)
% hObject    handle to m_transform (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_translate_Callback(hObject, eventdata, handles)
% hObject    handle to m_translate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
tanslate_slider_y=0;
tanslate_slider_x=0;
setappdata(0,'tanslate_slider_x',tanslate_slider_x);
setappdata(0,'tanslate_slider_y',tanslate_slider_y);
axes(handles.axes_trans_show);%axes1是坐标轴的标示 
cla%清除坐标系
set (handles.axes_trans_show,'Visible','on')  %显示 坐标系
set (handles.pushbutton_trans_pic,'Visible','on')  %显示 选择图片按钮
set (handles.translate_text1,'Visible','on')  
set (handles.translate_text2,'Visible','on')
set (handles.translate_text3,'Visible','on')
set (handles.tanslate_slider_x,'Visible','on')
set (handles.tanslate_slider_y,'Visible','on')

set (handles.zoom_text1,'Visible','off')  
set (handles.zoom_text2,'Visible','off')
set (handles.zoom_text3,'Visible','off')
set (handles.zoom_edit_x,'Visible','off')
set (handles.zoom_edit_y,'Visible','off')
set (handles.zoom_button_OK,'Visible','off')
set (handles.rotate_text1,'Visible','off')  
set (handles.rotate_text2,'Visible','off')
set (handles.rotate_text3,'Visible','off')
set (handles.rotate_text4,'Visible','off')
set (handles.rotate_text5,'Visible','off')
set (handles.rotate_text6,'Visible','off')
set (handles.rotate_edit_Sx,'Visible','off')
set (handles.rotate_edit_Sy,'Visible','off')
set (handles.rotate_slider_angle,'Visible','off')

set (handles.flip_text1,'Visible','off')  
set (handles.flip_pushbutton_ud,'Visible','off')  
set (handles.flip_pushbutton_lr,'Visible','off') 

%傅里叶
axes(handles.axes_FFT_1);
cla%清除坐标系
axes(handles.axes_FFT_2);
cla%清除坐标系
set (handles.axes_FFT_1,'Visible','off')  %显示 坐标系1
set (handles.axes_FFT_2,'Visible','off')  %显示 坐标系2
set (handles.FFT_pushbutton,'Visible','off')  %显示 按钮 傅里叶变换
set (handles.FFT_pushbutton_trans,'Visible','off')  %显示 按钮 平移一致性
set (handles.FFT_pushbutton_rotate,'Visible','off')  %显示 按钮 旋转一致性

% --------------------------------------------------------------------
function m_zoom_Callback(hObject, eventdata, handles)
axes(handles.axes_trans_show);%axes1是坐标轴的标示 
cla%清除坐标系
% hObject    handle to m_zoom (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.axes_trans_show,'Visible','on')  %显示 坐标系
set (handles.pushbutton_trans_pic,'Visible','on')  %显示 选择图片按钮
set (handles.zoom_text1,'Visible','on')  
set (handles.zoom_text2,'Visible','on')
set (handles.zoom_text3,'Visible','on')
set (handles.zoom_edit_x,'Visible','on')
set (handles.zoom_edit_y,'Visible','on')
set (handles.zoom_button_OK,'Visible','on')
%平移
set (handles.translate_text1,'Visible','off')  
set (handles.translate_text2,'Visible','off')
set (handles.translate_text3,'Visible','off')
set (handles.tanslate_slider_x,'Visible','off')
set (handles.tanslate_slider_y,'Visible','off')
%旋转
set (handles.rotate_text1,'Visible','off')  
set (handles.rotate_text2,'Visible','off')
set (handles.rotate_text3,'Visible','off')
set (handles.rotate_text4,'Visible','off')
set (handles.rotate_text5,'Visible','off')
set (handles.rotate_text6,'Visible','off')
set (handles.rotate_edit_Sx,'Visible','off')
set (handles.rotate_edit_Sy,'Visible','off')
set (handles.rotate_slider_angle,'Visible','off')

set (handles.flip_text1,'Visible','off')  
set (handles.flip_pushbutton_ud,'Visible','off')  
set (handles.flip_pushbutton_lr,'Visible','off') 

%傅里叶
axes(handles.axes_FFT_1);
cla%清除坐标系
axes(handles.axes_FFT_2);
cla%清除坐标系
set (handles.axes_FFT_1,'Visible','off')  %显示 坐标系1
set (handles.axes_FFT_2,'Visible','off')  %显示 坐标系2
set (handles.FFT_pushbutton,'Visible','off')  %显示 按钮 傅里叶变换
set (handles.FFT_pushbutton_trans,'Visible','off')  %显示 按钮 平移一致性
set (handles.FFT_pushbutton_rotate,'Visible','off')  %显示 按钮 旋转一致性


% --------------------------------------------------------------------
function m_rotate_Callback(hObject, eventdata, handles)
axes(handles.axes_trans_show);%axes1是坐标轴的标示 
cla%清除坐标系
% hObject    handle to m_rotate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.axes_trans_show,'Visible','on')  %显示 坐标系
set (handles.pushbutton_trans_pic,'Visible','on')  %显示 选择图片按钮
set (handles.rotate_text1,'Visible','on')  
set (handles.rotate_text2,'Visible','on')
set (handles.rotate_text3,'Visible','on')
set (handles.rotate_text4,'Visible','on')
set (handles.rotate_text5,'Visible','on')
set (handles.rotate_text6,'Visible','on')
set (handles.rotate_edit_Sx,'Visible','on')
set (handles.rotate_edit_Sy,'Visible','on')
set (handles.rotate_slider_angle,'Visible','on')

set (handles.translate_text1,'Visible','off')  
set (handles.translate_text2,'Visible','off')
set (handles.translate_text3,'Visible','off')
set (handles.tanslate_slider_x,'Visible','off')
set (handles.tanslate_slider_y,'Visible','off')

set (handles.zoom_text1,'Visible','off')  
set (handles.zoom_text2,'Visible','off')
set (handles.zoom_text3,'Visible','off')
set (handles.zoom_edit_x,'Visible','off')
set (handles.zoom_edit_y,'Visible','off')
set (handles.zoom_button_OK,'Visible','off')

set (handles.flip_text1,'Visible','off')  
set (handles.flip_pushbutton_ud,'Visible','off')  
set (handles.flip_pushbutton_lr,'Visible','off') 

%傅里叶
axes(handles.axes_FFT_1);
cla%清除坐标系
axes(handles.axes_FFT_2);
cla%清除坐标系
set (handles.axes_FFT_1,'Visible','off')  %显示 坐标系1
set (handles.axes_FFT_2,'Visible','off')  %显示 坐标系2
set (handles.FFT_pushbutton,'Visible','off')  %显示 按钮 傅里叶变换
set (handles.FFT_pushbutton_trans,'Visible','off')  %显示 按钮 平移一致性
set (handles.FFT_pushbutton_rotate,'Visible','off')  %显示 按钮 旋转一致性

% --------------------------------------------------------------------
function m_flip_Callback(hObject, eventdata, handles)
axes(handles.axes_trans_show);%axes1是坐标轴的标示 
cla%清除坐标系
% hObject    handle to m_flip (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.axes_trans_show,'Visible','on')  %显示 坐标系
set (handles.pushbutton_trans_pic,'Visible','on')  %显示 选择图片按钮
set (handles.flip_text1,'Visible','on')  
set (handles.flip_pushbutton_ud,'Visible','on')  
set (handles.flip_pushbutton_lr,'Visible','on') 

set (handles.translate_text1,'Visible','off')  
set (handles.translate_text2,'Visible','off')
set (handles.translate_text3,'Visible','off')
set (handles.tanslate_slider_x,'Visible','off')
set (handles.tanslate_slider_y,'Visible','off')

set (handles.zoom_text1,'Visible','off')  
set (handles.zoom_text2,'Visible','off')
set (handles.zoom_text3,'Visible','off')
set (handles.zoom_edit_x,'Visible','off')
set (handles.zoom_edit_y,'Visible','off')
set (handles.zoom_button_OK,'Visible','off')

set (handles.rotate_text1,'Visible','off')  
set (handles.rotate_text2,'Visible','off')
set (handles.rotate_text3,'Visible','off')
set (handles.rotate_text4,'Visible','off')
set (handles.rotate_text5,'Visible','off')
set (handles.rotate_text6,'Visible','off')
set (handles.rotate_edit_Sx,'Visible','off')
set (handles.rotate_edit_Sy,'Visible','off')
set (handles.rotate_slider_angle,'Visible','off')

%傅里叶
axes(handles.axes_FFT_1);
cla%清除坐标系
axes(handles.axes_FFT_2);
cla%清除坐标系
set (handles.axes_FFT_1,'Visible','off')  %显示 坐标系1
set (handles.axes_FFT_2,'Visible','off')  %显示 坐标系2
set (handles.FFT_pushbutton,'Visible','off')  %显示 按钮 傅里叶变换
set (handles.FFT_pushbutton_trans,'Visible','off')  %显示 按钮 平移一致性
set (handles.FFT_pushbutton_rotate,'Visible','off')  %显示 按钮 旋转一致性

% --------------------------------------------------------------------
function m_save_as_Callback(hObject, eventdata, handles)
% hObject    handle to m_save_as (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
trans_pic1=getappdata(0,'trans_pic1');figure;imshow(trans_pic1);
prompt = {'请保存的文件名:'};
dlg_title = '文件名';
num_lines = 1;
def = {'filename'};
filename = inputdlg(prompt,dlg_title,num_lines,def);
filename=char(filename);
%adressString = ['D:\picture\' sprintf('%s', filename) ',jpg'];
imwrite(trans_pic1, filename,'bmp'); %adressString表示输出地址

% --------------------------------------------------------------------
function m_FFT_Callback(hObject, eventdata, handles)
% hObject    handle to m_FFT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes_trans_show);
cla%清除坐标系
set (handles.axes_trans_show,'Visible','off')  %显示 坐标系
set (handles.pushbutton_trans_pic,'Visible','off')  %显示 选择图片按钮
set (handles.flip_text1,'Visible','off')  
set (handles.flip_pushbutton_ud,'Visible','off')  
set (handles.flip_pushbutton_lr,'Visible','off') 

set (handles.translate_text1,'Visible','off')  
set (handles.translate_text2,'Visible','off')
set (handles.translate_text3,'Visible','off')
set (handles.tanslate_slider_x,'Visible','off')
set (handles.tanslate_slider_y,'Visible','off')

set (handles.zoom_text1,'Visible','off')  
set (handles.zoom_text2,'Visible','off')
set (handles.zoom_text3,'Visible','off')
set (handles.zoom_edit_x,'Visible','off')
set (handles.zoom_edit_y,'Visible','off')
set (handles.zoom_button_OK,'Visible','off')

set (handles.rotate_text1,'Visible','off')  
set (handles.rotate_text2,'Visible','off')
set (handles.rotate_text3,'Visible','off')
set (handles.rotate_text4,'Visible','off')
set (handles.rotate_text5,'Visible','off')
set (handles.rotate_text6,'Visible','off')
set (handles.rotate_edit_Sx,'Visible','off')
set (handles.rotate_edit_Sy,'Visible','off')
set (handles.rotate_slider_angle,'Visible','off')

set (handles.axes_FFT_1,'Visible','on')  %显示 坐标系1
set (handles.axes_FFT_2,'Visible','on')  %显示 坐标系2
axes(handles.axes_FFT_1);
cla%清除坐标系
axes(handles.axes_FFT_2);
cla%清除坐标系
axes(handles.axes_FFT_3);
cla%清除坐标系
set (handles.axes_FFT_3,'Visible','off') 
set (handles.FFT_pushbutton,'Visible','on')  %显示 按钮 傅里叶变换
set (handles.FFT_pushbutton_trans,'Visible','on')  %显示 按钮 平移一致性
set (handles.FFT_pushbutton_rotate,'Visible','on')  %显示 按钮 旋转一致性


% --------------------------------------------------------------------
function m_gray_Callback(hObject, eventdata, handles)
% hObject    handle to m_gray (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.axes_trans_show,'Visible','off')  %显示 坐标系
set (handles.pushbutton_trans_pic,'Visible','off')  %显示 选择图片按钮
set (handles.flip_text1,'Visible','off')  
set (handles.flip_pushbutton_ud,'Visible','off')  
set (handles.flip_pushbutton_lr,'Visible','off') 

set (handles.translate_text1,'Visible','off')  
set (handles.translate_text2,'Visible','off')
set (handles.translate_text3,'Visible','off')
set (handles.tanslate_slider_x,'Visible','off')
set (handles.tanslate_slider_y,'Visible','off')

set (handles.zoom_text1,'Visible','off')  
set (handles.zoom_text2,'Visible','off')
set (handles.zoom_text3,'Visible','off')
set (handles.zoom_edit_x,'Visible','off')
set (handles.zoom_edit_y,'Visible','off')
set (handles.zoom_button_OK,'Visible','off')

set (handles.rotate_text1,'Visible','off')  
set (handles.rotate_text2,'Visible','off')
set (handles.rotate_text3,'Visible','off')
set (handles.rotate_text4,'Visible','off')
set (handles.rotate_text5,'Visible','off')
set (handles.rotate_text6,'Visible','off')
set (handles.rotate_edit_Sx,'Visible','off')
set (handles.rotate_edit_Sy,'Visible','off')
set (handles.rotate_slider_angle,'Visible','off')
%傅里叶
set (handles.axes_FFT_1,'Visible','off')  %显示 坐标系1
set (handles.axes_FFT_3,'Visible','off')  %显示 坐标系1
axes(handles.axes_FFT_3);
cla%清除坐标系
set (handles.axes_FFT_2,'Visible','on')  %显示 坐标系2
axes(handles.axes_FFT_2);
cla%清除坐标系
set (handles.FFT_pushbutton,'Visible','off')  %显示 按钮 傅里叶变换
set (handles.FFT_pushbutton_trans,'Visible','off')  %显示 按钮 平移一致性
set (handles.FFT_pushbutton_rotate,'Visible','off')  %显示 按钮 旋转一致性

%傅里叶
axes(handles.axes_FFT_1);
cla%清除坐标系
axes(handles.axes_FFT_2);
cla%清除坐标系
set (handles.axes_FFT_1,'Visible','off')  %显示 坐标系1
set (handles.axes_FFT_2,'Visible','off')  %显示 坐标系2
set (handles.FFT_pushbutton,'Visible','off')  %显示 按钮 傅里叶变换
set (handles.FFT_pushbutton_trans,'Visible','off')  %显示 按钮 平移一致性
set (handles.FFT_pushbutton_rotate,'Visible','off')  %显示 按钮 旋转一致性


%曲线
 
%  f1=getappdata(0,'x1');
%  g1=getappdata(0,'y1');
%  f2=getappdata(0,'x2');
%  g2=getappdata(0,'y2');
f1=10;g1=30;     
f2=220;g2=180;
%  f0=0;g0=0;  
%  f3=255;g3=255; 
axes(handles.axes_FFT_3);
Curve(f1,g1,f2,g2);
axes(handles.axes_FFT_2);
Gray(f1,g1,f2,g2);
setappdata(0,'f1',f1);
setappdata(0,'g1',g1);
setappdata(0,'f2',f2);
setappdata(0,'g2',g2);
% f1=double(x1);g1=double(y1); 
   

% axes(handles.axes_FFT_1);
% plot([f0,f1,f2,f3],[g0,g1,g2,g3]);  
% axis([0 255 0 255]);   



function Curve(x1,y1,x2,y2)
f0=0;g0=0; 
f1=x1;g1=y1;     
f2=x2;g2=y2;    
f3=255;g3=255;
% axes(handles.axes_FFT_1);
plot([f0,f1,f2,f3],[g0,g1,g2,g3]);  
axis([0 255 0 255]);  


function Gray(x1,y1,x2,y2)
f0=0;g0=0; 
% f1=double(x1);g1=double(y1); 
f1=x1;g1=y1;     
f2=x2;g2=y2;    
f3=255;g3=255;
r1=(g1-g0)/(f1-f0);     
b1=-r1*f0+g0;     
r2=(g2-g1)/(f2-f1);     
b2=-r2*f1+g1;     
r3=(g3-g2)/(f3-f2);     
b3=-r3*f2+g2;  


I=imread('FFT_02.bmp');
%I = getappdata(0,'trans_pic'); 
[m,n]=size(I);     
h=double(I);      
% axes(handles.axes_FFT_1);
% imshow(mat2gray(h));     
for i=1:m     
    for j=1:n
        t=h(i,j);     
        g(i,j)=0;      
        if((t>=f0)&&(t<=f1))   
            g(i,j)=r1*t+b1;     
        else
            if((t>=f1)&&(t<=f2))
                g(i,j)=r2*t+b2;     
            else
                if((t>=f2)&&(t<=f3))
                        g(i,j)=r3*t+b3;     
                end
            end
        end
    end
end
% axes(handles.axes_FFT_2);
imshow(mat2gray(g));


% --- Executes on mouse press over axes background.
function axes_FFT_1_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes_FFT_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set(gcf,'WindowButtonDownFcn',@ButtonDownFcn);
% set(gcf,'WindowButtonUpFcn',@ButtonUpFcn);
% set(gcf,'WindowButtonMotionFcn',@ButtonMotionFcn);
% f1=getappdata(0,'f1');
% g1=getappdata(0,'g1');
% f2=getappdata(0,'f2');
% g2=getappdata(0,'g2');
% set(gcf,'WindowButtonDownFcn',@ButtonDownFcn);
% pt=get(gca,'CurrentPoint') ;%获得句柄
% x = pt(1,1);
% y = pt(1,2);
% disp(x);disp(y);
%     if x==f1&&y==g1  
%         set(gca,'WindowButtonMotionFcn',@ButtonMotionFcn); %设置鼠标移动响应
%         currPt = get(gca, 'CurrentPoint');
%         f1 = currPt(1,1);
%         g1 = currPt(1,2);
%         Curve(f1,g1,f2,g2);
%         Gray(x1,y1,x2,y2);
%     end
%     if x==f2&&y==g2
%         set(gca,'WindowButtonMotionFcn',@ButtonMotionFcn); %设置鼠标移动响应
%         currPt = get(gca, 'CurrentPoint');
%         f2 = currPt(1,1);
%         g2 = currPt(1,2);
%         Curve(f1,g1,f2,g2);
%         Gray(x1,y1,x2,y2);
%     end



% --- Executes on mouse press over axes background.
function axes_trans_show_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to axes_trans_show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in pushbutton_trans_pic.
function pushbutton_trans_pic_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton_trans_pic (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.bmp';'*.jpg';'*.gif'},'选择图片');  %选择做几何变换的图像
if isequal(filename,0)
    disp('Users Selected Canceled');
else
trans_pic_str=[pathname filename];
%set(handles.pushbutton_A,'userdata',str);
%str=get(handles.pushbutton_A,'userdata');
trans_pic = imread(trans_pic_str);
%set(handles.pushbutton_A,'userdata',A);
%h1=axes('Position',[0.1 0.2 0.3 0.6]);
setappdata(0,'trans_pic',trans_pic);   %将选择的图像作为全局变量保存在trans_pic中
%[m,n,~]=size(trans_pic);
%trans_pic= imresize(trans_pic, [m0.5 n*0.5], 'nearest'); %缩放 水平方向
axes(handles.axes_trans_show);%axes1是坐标轴的标示
imshow(trans_pic);
end;


% --- Executes on slider movement.
function tanslate_slider_x_Callback(hObject, eventdata, handles)
% hObject    handle to tanslate_slider_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tanslate_slider_x=get(hObject,'Value');    %获取slider控件的值[-500,500]
tanslate_slider_y=getappdata(0,'tanslate_slider_y');    %获取已存在的tanslate_slider_y的值
tanslate_slider_x=round(tanslate_slider_x);  %slider控件的值存在小数 但translate函数不允许小数 则四舍五入转换
setappdata(0,'tanslate_slider_x',tanslate_slider_x);  %将获取的value储存
trans_pic=getappdata(0,'trans_pic');   %取得全局变量 用于几何变换的图片 已从char类型转为储存图像内容的矩阵
%I=imread(trans_pic); %取得图片信息

se = translate(strel(1), [tanslate_slider_y tanslate_slider_x]);  %平移 水平方向
trans_pic= imdilate(trans_pic,se);       %平移

axes(handles.axes_trans_show);%axes1是坐标轴的标示
imshow(trans_pic);
trans_pic1=trans_pic;
setappdata(0,'trans_pic1',trans_pic1);





% --- Executes during object creation, after setting all properties.
function tanslate_slider_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tanslate_slider_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function tanslate_slider_y_Callback(hObject, eventdata, handles)
% hObject    handle to tanslate_slider_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tanslate_slider_y=get(hObject,'Value');    %获取slider控件的值[-500,500]
tanslate_slider_x=getappdata(0,'tanslate_slider_x');    %获取已存在的tanslate_slider_x的值
tanslate_slider_y=round(tanslate_slider_y);  %slider控件的值存在小数 但translate函数不允许小数 则四舍五入转换
setappdata(0,'tanslate_slider_y',tanslate_slider_y);  %将获取的value储存为全局变量
trans_pic=getappdata(0,'trans_pic');   %取得全局变量 用于几何变换的图片 已从char类型转为储存图像内容的矩阵
%I=imread(trans_pic); %取得图片信息

se = translate(strel(1), [tanslate_slider_y tanslate_slider_x]);  %平移 水平方向
trans_pic= imdilate(trans_pic,se);       %平移

axes(handles.axes_trans_show);%axes1是坐标轴的标示
imshow(trans_pic);
trans_pic1=trans_pic;
setappdata(0,'trans_pic1',trans_pic1);


% --- Executes during object creation, after setting all properties.
function tanslate_slider_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tanslate_slider_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function zoom_slider_x_Callback(hObject, eventdata, handles)
% hObject    handle to zoom_slider_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
zoom_slider_x=get(hObject,'Value');  
%zoom_slider_x=vpa(zoom_slider_x,2);
setappdata(0,'zoom_slider_x',zoom_slider_x);  %将获取的value储存为全局变量
zoom_slider_y=getappdata(0,'tanslate_slider_y');    %获取已存在的zoom_slider_y的值
trans_pic=getappdata(0,'trans_pic');  %取得全局变量 用于几何变换的图片 已从char类型转为储存图像内容的矩阵
[m, n] = size(trans_pic);
background=zeros(m,n);
[m,n,~]=size(trans_pic);

%  Sx=double(zoom_slider_y);
%  Sy=double(zoom_slider_x);
 Sx=0.5;Sy=0.5;
trans_pic= imresize(trans_pic, [m*Sx n*Sy], 'nearest'); %缩放 水平方向

% 
% for i=1:m
%     for j=1:n
%         background()


%background(m*Sx*0.5:m-m*Sx*0.5,n*Sy*0.5:n-n*Sx*0.5)=trans_pic(:,:);

axes(handles.axes_trans_show);%axes1是坐标轴的标示 
imshow(trans_pic);


% --- Executes during object creation, after setting all properties.
function zoom_slider_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zoom_slider_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function zoom_slider_y_Callback(hObject, eventdata, handles)
% hObject    handle to zoom_slider_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
zoom_slider_y=get(hObject,'Value');  
%zoom_slider_y=vpa(zoom_slider_y,2);
setappdata(0,'zoom_slider_y',zoom_slider_y);  %将获取的value储存为全局变量
zoom_slider_x=getappdata(0,'tanslate_slider_x');    %获取已存在的zoom_slider_x的值
trans_pic=getappdata(0,'trans_pic');  %取得全局变量 用于几何变换的图片 已从char类型转为储存图像内容的矩阵
[m,n,~]=size(trans_pic);
 %trans_pic=double(trans_pic);
 Sx=zoom_slider_y;
 Sy=zoom_slider_x;
 %Sx=vpa(Sx,2);
 %Sy=vpa(Sy,2);   %转换过后输出的数据类型是sym!!!!gou!!!!

 %Sx=round(Sx*100)/100;
 %Sy=round(Sy*100)/100;
 disp(Sx);
 disp(Sy);
disp(class(Sx));

trans_pic= imresize(trans_pic, [m*Sx n*Sy], 'nearest'); %缩放 水平方向
axes(handles.axes_trans_show);%axes1是坐标轴的标示 
imshow(trans_pic);


% --- Executes during object creation, after setting all properties.
function zoom_slider_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zoom_slider_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in popupmenu_zoom_x.
function popupmenu_zoom_x_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu_zoom_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupmenu_zoom_x contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu_zoom_x


% --- Executes during object creation, after setting all properties.
function popupmenu_zoom_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu_zoom_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit_zoom_x_Callback(hObject, eventdata, handles)
% hObject    handle to edit_zoom_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_zoom_x as text
%        str2double(get(hObject,'String')) returns contents of edit_zoom_x as a double


% --- Executes during object creation, after setting all properties.
function edit_zoom_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_zoom_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function rotate_slider_angle_Callback(hObject, eventdata, handles)
% hObject    handle to rotate_slider_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider

angle=double(get(hObject,'Value'));
trans_pic=getappdata(0,'trans_pic');  %取得全局变量 用于几何变换的图片已从char类型转为储存图像内容的矩阵
rotate_Sx=getappdata(0,'rotate_Sx');  %旋转中心
rotate_Sy=getappdata(0,'rotate_Sy');

% A = imrotate(trans_pic,angle,'nearest','crop');
% [m,n,~]=size(trans_pic);
%m=-m/2;n=-n/2;

% M=[cos(pi*angle)   sin(pi*angle)     0;
%     -sin(pi*angle)   cos(pi*angle)    0;
%         0           0         1];
% trans_pic=M*trans_pic*M';
% axes(handles.axes_trans_show);%axes1是坐标轴的标示 
% imshow(A);
%init = imread('Fig3.tif'); % 读取图像
[R, C] = size(trans_pic); % 获取图像大小
res = ones(R,  C); % 构造结果矩阵。每个像素点默认初始化为0（黑色）
%figure;imshow(res);
        
disp(angle);
alfa = -angle * 3.1415926 / 180.0; % 旋转角度
tras = [cos(alfa) -sin(alfa) 0; sin(alfa) cos(alfa) 0; 0 0 1]; % 旋转的变换矩阵
tx=-rotate_Sy;ty=-rotate_Sx;
disp(tx);disp(ty);
MM=[1 0 0;0 1 0;tx ty 1];
NN=[1 0 0;0 1 0;-tx -ty 1];
tras1=MM*tras*NN;
tras1=tras1';
disp(tras1);
for i = 1 : R
    for j = 1 : C
      %  for k=1 :3 
        temp = [i; j; 1];
        temp = tras1 * temp; % 矩阵乘法
        x = uint16(temp(1, 1));
        y = uint16(temp(2, 1));
        % 变换后的位置判断是否越界
        if (x <= R) && (y <= C) && (x >= 1) && (y >= 1)
            res(i, j) = trans_pic(x, y);
      %  end
        end
    end
end;
axes(handles.axes_trans_show);%axes1是坐标轴的标示 
imshow(uint8(res));  % 显示图像
trans_pic1=res;
setappdata(0,'trans_pic1',trans_pic1)



% --- Executes during object creation, after setting all properties.
function rotate_slider_angle_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rotate_slider_angle (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


function zoom_edit_x_Callback(hObject, eventdata, handles)
% hObject    handle to zoom_edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zoom_edit_x as text
%        str2double(get(hObject,'String')) returns contents of zoom_edit_x as a double
Sx=get(hObject,'String');
Sx=str2double(Sx);
setappdata(0,'Sx',Sx);  %将获取的value储存为全局变量
% Sy=getappdata(0,'Sy');
% trans_pic=getappdata(0,'trans_pic');
%  [m,n,~]=size(trans_pic);
% 
% trans_pic= imresize(trans_pic, [m*Sy n*Sx], 'nearest'); %缩放 水平方向
% 
% %trans_pic=imread('01.bmp');
% disp(class(trans_pic));
% axes(handles.axes_trans_show);%axes1是坐标轴的标示 
% %cla%清除坐标系
% imshow(trans_pic);
% trans_pic1=trans_pic;
% setappdata(0,'trans_pic1',trans_pic1)


% --- Executes during object creation, after setting all properties.
function zoom_edit_x_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zoom_edit_x (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zoom_edit_y_Callback(hObject, eventdata, handles)
% hObject    handle to zoom_edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of zoom_edit_y as text
%        str2double(get(hObject,'String')) returns contents of zoom_edit_y as a double
Sy=get(hObject,'String');
Sy=str2double(Sy);
setappdata(0,'Sy',Sy);  %将获取的value储存为全局变量
% Sx=getappdata(0,'Sx');
% trans_pic=getappdata(0,'trans_pic');
%  [m,n,~]=size(trans_pic);
% 
% trans_pic= imresize(trans_pic, [m*Sy n*Sx], 'nearest'); %缩放 水平方向
% 
% %trans_pic=imread('01.bmp');
% disp(class(trans_pic));
% axes(handles.axes_trans_show);%axes1是坐标轴的标示 
% %cla%清除坐标系
% imshow(trans_pic);
% trans_pic1=trans_pic;
% setappdata(0,'trans_pic1',trans_pic1)

% --- Executes during object creation, after setting all properties.
function zoom_edit_y_CreateFcn(hObject, eventdata, handles)
% hObject    handle to zoom_edit_y (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rotate_edit_Sx_Callback(hObject, eventdata, handles)
% hObject    handle to rotate_edit_Sx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rotate_edit_Sx as text
%        str2double(get(hObject,'String')) returns contents of rotate_edit_Sx as a double
rotate_Sx=str2double(get(hObject,'String'));
setappdata(0,'rotate_Sx',rotate_Sx);

% --- Executes during object creation, after setting all properties.
function rotate_edit_Sx_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rotate_edit_Sx (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function rotate_edit_Sy_Callback(hObject, eventdata, handles)
% hObject    handle to rotate_edit_Sy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rotate_edit_Sy as text
%        str2double(get(hObject,'String')) returns contents of rotate_edit_Sy as a double
rotate_Sy=str2double(get(hObject,'String'));
setappdata(0,'rotate_Sy',rotate_Sy);

% --- Executes during object creation, after setting all properties.
function rotate_edit_Sy_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rotate_edit_Sy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in flip_pushbutton_lr.
function flip_pushbutton_lr_Callback(hObject, eventdata, handles)
% hObject    handle to flip_pushbutton_lr (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
trans_pic=getappdata(0,'trans_pic');
trans_pic=fliplr(trans_pic);
axes(handles.axes_trans_show);%axes1是坐标轴的标示 
%cla%清除坐标系
imshow(trans_pic);
trans_pic1=trans_pic;
setappdata(0,'trans_pic1',trans_pic1)


% --- Executes on button press in flip_pushbutton_ud.
function flip_pushbutton_ud_Callback(hObject, eventdata, handles)
% hObject    handle to flip_pushbutton_ud (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
trans_pic=getappdata(0,'trans_pic');
trans_pic=flipud(trans_pic);
axes(handles.axes_trans_show);%axes1是坐标轴的标示 
%cla%清除坐标系
imshow(trans_pic);
trans_pic1=trans_pic;
setappdata(0,'trans_pic1',trans_pic1)

% --------------------------------------------------------------------
function m_baiyewin_Callback(hObject, eventdata, handles)
% hObject    handle to m_baiyewin (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%Image=imread('02.bmp');
Image=getappdata(0,'trans_pic'); 
%Image=double(Image); 
imshow(Image);
%size_info=size(Image);    
%height=size_info(1);    %640 行
%width=size_info(2);    %960 列
[height,width,gg]=size(Image); 
Map=zeros(height, width,gg);  

for row_i=1:height  
    Map(row_i, :,:)=1-row_i/height;  
    
end  
figure;imshow(Map);  
  
H_shade=20;  
 imshow(Map);
for j=1:H_shade
    for i=1:H_shade:height
        Map(i+j-1,:,:)=Image(i+j-1,:,:);
    
    end;
    pause(0.01);
    imshow(uint8(Map));
end;




  
%for kk=1:3  
   % Image(:,:,kk)=Image(:,:,kk).*(1-mask)+Map.*mask;  
%end  
  
%figure(3), imshow(Image);  
%figure(1),imshow((image));  


% --- Executes on button press in FFT_pushbutton_trans.
function FFT_pushbutton_trans_Callback(hObject, eventdata, handles)
% hObject    handle to FFT_pushbutton_trans (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FFT_A=imread('FFT_02.bmp');
[m,n]=size(FFT_A); 
FFT_A(m+1:m+100,n+1:n+100)=0;
axes(handles.axes_FFT_1);%axes1是坐标轴的标示 
cla%清除坐标系
imshow(FFT_A);
%setappdata(0,'FFT_A',FFT_A); 
%FFT_A=getappdata(0,'FFT_A');
FFT_B=fft2(im2double(FFT_A)); %FFT
FFT_B=abs(FFT_B);
FFT_B=fftshift(FFT_B); %FFT频谱平移
FFT_B=uint8(FFT_B);
axes(handles.axes_FFT_2);%axes1是坐标轴的标示 
imshow(FFT_B);

% --- Executes on button press in FFT_pushbutton_rotate.
function FFT_pushbutton_rotate_Callback(hObject, eventdata, handles)
% hObject    handle to FFT_pushbutton_rotate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
axes(handles.axes_FFT_1);%axes1是坐标轴的标示 
cla%清除坐标系
FFT_A=imread('FFT_02.bmp');
FFT_A = imrotate(FFT_A,45);
% FFT_A=zeros(300,400);
% FFT_A(100:200, 100:200)=1;

imshow(FFT_A);
%setappdata(0,'FFT_A',FFT_A); 
%FFT_A=getappdata(0,'FFT_A');
FFT_B=fft2(im2double(FFT_A)); %FFT
FFT_B=abs(FFT_B);
FFT_B=fftshift(FFT_B); %FFT频谱平移
FFT_B=uint8(FFT_B);
axes(handles.axes_FFT_2);%axes1是坐标轴的标示 
imshow(FFT_B);

% --- Executes during object creation, after setting all properties.
function axes_FFT_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_FFT_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_FFT_1


% --- Executes during object creation, after setting all properties.
function axes_FFT_2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_FFT_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_FFT_2


% --- Executes on button press in FFT_pushbutton.
function FFT_pushbutton_Callback(hObject, eventdata, handles)
% hObject    handle to FFT_pushbutton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
FFT_A=imread('FFT_02.bmp');
% FFT_A=zeros(300,400);
% FFT_A(100:200, 100:200)=1;
axes(handles.axes_FFT_1);%axes1是坐标轴的标示 
cla%清除坐标系
imshow(FFT_A);
%setappdata(0,'FFT_A',FFT_A); 
%FFT_A=getappdata(0,'FFT_A');
FFT_B=fft2(im2double(FFT_A)); %FFT
FFT_B=abs(FFT_B);
FFT_B=fftshift(FFT_B); %FFT频谱平移
FFT_B=uint8(FFT_B);
axes(handles.axes_FFT_2);%axes1是坐标轴的标示 
imshow(FFT_B);

% --- Executes on mouse press over figure background, over a disabled or
% --- inactive control, or over an axes background.
% function figure1_WindowButtonDownFcn(hObject, eventdata, handles)
% % hObject    handle to figure1 (see GCBO)
% % eventdata  reserved - to be defined in a future version of MATLAB
% % handles    structure with handles and user data (see GUIDATA)
% f1=getappdata(0,'f1');
% g1=getappdata(0,'g1');
% f2=getappdata(0,'f2');
% g2=getappdata(0,'g2');
% %set(gcf,'WindowButtonDownFcn',@ButtonDownFcn);
% pt=get(gca,'CurrentPoint') ;%获得句柄
% x = pt(1,1);
% y = pt(1,2);
% disp(norm([x y]-[f1 g1]));disp(norm([x y]-[f2 g2]));
% if(x<125)
% %if norm([x y]-[f1 g1])<norm([x y]-[f2 g2])
%     f1=x;g1=y;
%     axes(handles.axes_FFT_3);
%     cla%清除坐标系
%     Curve(f1,g1,f2,g2);
%     axes(handles.axes_FFT_2);
%     Gray(f1,g2,f2,g2);  
% else
%     f2=x;g2=y;
%     axes(handles.axes_FFT_3);
%     cla%清除坐标系
%     Curve(f1,g1,f2,g2);
%     axes(handles.axes_FFT_2);
%     Gray(f1,g2,f2,g2); 
% end
% setappdata(0,'f1',f1);
% setappdata(0,'g1',g1);
% setappdata(0,'f2',f2);
% setappdata(0,'g2',g2);


% --------------------------------------------------------------------
function m_enhance_Callback(hObject, eventdata, handles)
% hObject    handle to m_enhance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set (handles.axes_trans_show,'Visible','off')  %显示 坐标系
set (handles.pushbutton_trans_pic,'Visible','off')  %显示 选择图片按钮
set (handles.translate_text1,'Visible','off')  
set (handles.translate_text2,'Visible','off')
set (handles.translate_text3,'Visible','off')
set (handles.tanslate_slider_x,'Visible','off')
set (handles.tanslate_slider_y,'Visible','off')
set (handles.zoom_text1,'Visible','off')  
set (handles.zoom_text2,'Visible','off')
set (handles.zoom_text3,'Visible','off')
set (handles.zoom_edit_x,'Visible','off')
set (handles.zoom_edit_y,'Visible','off')
set (handles.zoom_button_OK,'Visible','off')
set (handles.rotate_text1,'Visible','off')  
set (handles.rotate_text2,'Visible','off')
set (handles.rotate_text3,'Visible','off')
set (handles.rotate_text4,'Visible','off')
set (handles.rotate_text5,'Visible','off')
set (handles.rotate_text6,'Visible','off')
set (handles.rotate_edit_Sx,'Visible','off')
set (handles.rotate_edit_Sy,'Visible','off')
set (handles.rotate_slider_angle,'Visible','off')

set (handles.flip_text1,'Visible','off')  
set (handles.flip_pushbutton_ud,'Visible','off')  
set (handles.flip_pushbutton_lr,'Visible','off') 


%傅里叶
axes(handles.axes_FFT_1);
cla%清除坐标系
axes(handles.axes_FFT_2);
cla%清除坐标系
set (handles.axes_FFT_1,'Visible','off')  %显示 坐标系1
set (handles.axes_FFT_2,'Visible','off')  %显示 坐标系2
set (handles.FFT_pushbutton,'Visible','off')  %显示 按钮 傅里叶变换
set (handles.FFT_pushbutton_trans,'Visible','off')  %显示 按钮 平移一致性
set (handles.FFT_pushbutton_rotate,'Visible','off')  %显示 按钮 旋转一致性
%灰度
axes(handles.axes_FFT_1);
cla%清除坐标系
set (handles.axes_FFT_1,'Visible','off')  %显示 坐标系2

axes(handles.axes_FFT_2);
cla%清除坐标系
set (handles.axes_FFT_2,'Visible','off')  %显示 坐标系2

axes(handles.axes_FFT_3);
cla%清除坐标系
set (handles.axes_FFT_3,'Visible','off')  %显示 坐标系2


% --------------------------------------------------------------------
function m_kylb_Callback(hObject, eventdata, handles)
% hObject    handle to m_kylb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.enh_pushbutton_1,'Visible','on') 
set (handles.enh_popupmenu1,'Visible','on') 
set (handles.enh_slider1,'Visible','on') 
set (handles.enh_text6,'Visible','on') 
set (handles.enh_popupmenu2,'Visible','off')
set (handles.enh_slider2,'Visible','off') 
set (handles.enh_slider3,'Visible','off') 
set (handles.enh_text1,'Visible','off') 
set (handles.enh_text2,'Visible','off') 


% --------------------------------------------------------------------
function m_pylb_Callback(hObject, eventdata, handles)
% hObject    handle to m_pylb (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.enh_pushbutton_1,'Visible','on') 
set (handles.enh_popupmenu1,'Visible','off') 
set (handles.enh_slider1,'Visible','off') 
set (handles.enh_text6,'Visible','off') 
set (handles.enh_popupmenu2,'Visible','on')
set (handles.enh_slider2,'Visible','on') 
set (handles.enh_slider3,'Visible','on') 
set (handles.enh_text1,'Visible','on') 
set (handles.enh_text2,'Visible','on') 

% --------------------------------------------------------------------
function m_cstxzq_Callback(hObject, eventdata, handles)
% hObject    handle to m_cstxzq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.enh_pushbutton_1,'Visible','off') 
set (handles.enh_popupmenu1,'Visible','off') 
set (handles.enh_slider1,'Visible','off') 
set (handles.enh_text6,'Visible','off') 

set (handles.enh_popupmenu2,'Visible','off')
set (handles.enh_slider2,'Visible','off') 
set (handles.enh_slider3,'Visible','off') 
set (handles.enh_text1,'Visible','off') 
set (handles.enh_text2,'Visible','off') 

% --------------------------------------------------------------------
function m_cstxzq_1_Callback(hObject, eventdata, handles)
% hObject    handle to m_cstxzq_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
X=getappdata(0,'pic');
[M,N]=size(X);
for i= 1:M
    for j=1:N
        if X(i,j)<128
            Y(i,j,1:3)=[0 0 255];
        else
            Y(i,j,1:3)=[255 0 0];
        end
    end
end
axes(handles.axes_enhance_1);
imshow(Y);


% --------------------------------------------------------------------
function m_cstxzq_2_Callback(hObject, eventdata, handles)
% hObject    handle to m_cstxzq_2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
% [M,N]=size(X);
% L=255;
% f=double(X);
% f1=floor(f/64);
% % disp(f1);
% R=f1;G=f1;B=f1;
% for i=1:M
%     for j=1:N
%         switch f1(i,j)
%             case 0
%                 R(i,j)=0;G(i,j)=4*f(i,j);B(i,j)=L;
%             case 1
%                 R(i,j)=0;G(i,j)=L;B(i,j)=4*f(i,j)+2*L;
%             case 2
%                 R(i,j)=4*f(i,j)-2*L;G(i,j)=L;B(i,j)=0;
%             case 3
%                 R(i,j)=L;G(i,j)=4*f(i,j)+4*L;B(i,j)=0;
%         end
%     end
% end
R=pic(:,:,1);
G=pic(:,:,2);
B=pic(:,:,3);

X1=R;
X2=G;
X3=B;

R=X3;
G=X1;
B=X2;
g(:,:,1)=R;g(:,:,2)=G;g(:,:,3)=B;
g=uint8(g);
axes(handles.axes_enhance_1);
imshow(g);


% --------------------------------------------------------------------
function m_cstxzq_3_Callback(hObject, eventdata, handles)
% hObject    handle to m_cstxzq_3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
% R=pic;R(:,:,[2 3])=0;
% G=pic;G(:,:,[1 3])=0;
% B=pic;B(:,:,[1 2])=0;
% figure,imshow(R);
% figure,imshow(G);
% figure,imshow(B);
R=pic(:,:,1);
% subplot(222),imshow(R);title('真彩色图像的红色分量');
G=pic(:,:,2);
% subplot(223),imshow(G);title('真彩色图像的绿色分量');
B=pic(:,:,3);
% subplot(224);imshow(B);title('真彩色图像的蓝色分量');
R=imlincomb(1.5,R);
G=imlincomb(1.5,G);
B=imlincomb(1.5,B);
g(:,:,1)=R;g(:,:,2)=G;g(:,:,3)=B;
g=uint8(g);
axes(handles.axes_enhance_1);
imshow(g);

% --------------------------------------------------------------------
function m_open_Callback(hObject, eventdata, handles)
% hObject    handle to m_open (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
[filename,pathname]=uigetfile({'*.bmp';'*.jpg';'*.gif'},'选择图片');  %选择做几何变换的图像
if isequal(filename,0)
    disp('Users Selected Canceled');
else
pic_str=[pathname filename];
pic = imread(pic_str);
setappdata(0,'pic',pic);   %将选择的图像作为全局变量保存在pic中
set (handles.axes_enhance_1,'Visible','on')  %显示 坐标系2
axes(handles.axes_enhance_1);
imshow(pic);
end;


% --- Executes on button press in enh_pushbutton_1.
function enh_pushbutton_1_Callback(hObject, eventdata, handles)
% hObject    handle to enh_pushbutton_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
pic=imnoise(pic,'salt & pepper',0.1); 
axes(handles.axes_enhance_1);
imshow(pic);
setappdata(0,'pic',pic); 


% --- Executes during object creation, after setting all properties.
function axes_enhance_1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to axes_enhance_1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: place code in OpeningFcn to populate axes_enhance_1
%     h = figure(GUI_enh_zdy);
%     if(ishandle(h)==false)
%         pic=getappdata(0,'pic');
%         zdy_h=getappdata(GUI,'zdy_h');
%         disp(zdy_h);
%         A=imfilter(pic,zdy_h);
%         axes(handles.axes_enhance_1);
%         imshow(A);
%     end

% --- Executes on selection change in enh_popupmenu1.
function enh_popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to enh_popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enh_popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enh_popupmenu1
% global enh_type;
enh_popupmenu1 = get(handles.enh_popupmenu1, 'value');
switch enh_popupmenu1
    case 2
        enh_popupmenu1_type=0;   
    case 3        
        enh_popupmenu1_type=1; 
end 
disp(enh_popupmenu1_type);
setappdata(0,'enh_popupmenu1_type',enh_popupmenu1_type);

% --- Executes during object creation, after setting all properties.
function enh_popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enh_popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function enh_slider1_Callback(hObject, eventdata, handles)
% hObject    handle to enh_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
enh_slider_1=get(hObject,'Value');
if enh_slider_1<5
    enh_slider_1=3;
else
    if enh_slider_1<7
        enh_slider_1=5;
    else
        if enh_slider_1<9
            enh_slider_1=7;
        end
    end
end       
disp(enh_slider_1);
setappdata(0,'enh_slider_1',enh_slider_1);
enh_type=getappdata(0,'enh_popupmenu1_type');
 pic=getappdata(0,'pic');
if enh_type==0  %均值滤波
    gg=enh_slider_1*enh_slider_1;
    h1=ones(enh_slider_1,enh_slider_1)/gg;
    pic=imfilter(pic,h1);
end
if enh_type==1  %中值滤波
    pic= medfilt2(pic,[enh_slider_1 enh_slider_1]); 
end
axes(handles.axes_enhance_1);
g=pic;
imshow(g);
setappdata(0,'g',g);



% --- Executes during object creation, after setting all properties.
function enh_slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enh_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on selection change in enh_popupmenu2.
function enh_popupmenu2_Callback(hObject, eventdata, handles)
% hObject    handle to enh_popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns enh_popupmenu2 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from enh_popupmenu2
enh_popupmenu2 = get(handles.enh_popupmenu2, 'value');
switch enh_popupmenu2
    case 2
        enh_popupmenu2_type=0;   
    case 3        
        enh_popupmenu2_type=1; 
end 
disp(enh_popupmenu2_type);
setappdata(0,'enh_popupmenu2_type',enh_popupmenu2_type);

% --- Executes during object creation, after setting all properties.
function enh_popupmenu2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enh_popupmenu2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function enh_slider2_Callback(hObject, eventdata, handles)
% hObject    handle to enh_slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
enh_slider_2=get(hObject,'Value');
enh_slider_2=round(enh_slider_2);
setappdata(0,'enh_slider_2',enh_slider_2);
enh_type=getappdata(0,'enh_popupmenu2_type');
D0=getappdata(0,'enh_slider_3');
g=getappdata(0,'g');
pic=g;
%pic=getappdata(0,'pic');
f=pic;
n=enh_slider_2;
disp(n);
disp(D0);
if enh_type==0  %低通滤波
    f=im2double(f);
    F=fftshift(fft2(f));
    [M,N]=size(F);%     n=3;D0=20
    u0=floor(M/2);
    v0=floor(N/2);
    for u=1:M
        for v=1:N
            D=sqrt((u-u0)^2+(v-v0)^2);
            H=1/(1+(D/D0)^(2*n));
%             H1=1/(1+(D0/D)^(2*n));
            G(u,v)=H*F(u,v);
%             G1(u,v)=H1*F(u,v);
        end;
    end;
    g=ifft2(ifftshift(G));
    g=im2uint8(real(g));
end

if enh_type==1  %高通滤波
    f=im2double(f);
    F=fftshift(fft2(f));
    [M,N]=size(F);%     n=3;D0=20
    u0=floor(M/2);
    v0=floor(N/2);
    for u=1:M
        for v=1:N
            D=sqrt((u-u0)^2+(v-v0)^2);
%             H=1/(1+(D/D0)^(2*n));
            H=1/(1+(D0/D)^(2*n));
%             G(u,v)=H*F(u,v);
            G(u,v)=H*F(u,v);
        end;
    end;
    g=ifft2(ifftshift(G));
    g=im2uint8(real(g));
end
axes(handles.axes_enhance_1);
imshow(g);
% pic=g;
% setappdata(0,'pic',pic);

% --- Executes during object creation, after setting all properties.
function enh_slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enh_slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function enh_slider3_Callback(hObject, eventdata, handles)
% hObject    handle to enh_slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
enh_slider_3=get(hObject,'Value');
enh_slider_3=round(enh_slider_3);
setappdata(0,'enh_slider_3',enh_slider_3);
enh_type=getappdata(0,'enh_popupmenu2_type');
D0=enh_slider_3;%D0
n=getappdata(0,'enh_slider_2');%n
g=getappdata(0,'g');
pic=g;
%pic=getappdata(0,'pic');%pic
f=pic;
disp(n);
disp(D0);
if enh_type==0  %低通滤波
    f=im2double(f);
    F=fftshift(fft2(f));
    [M,N]=size(F);%     n=3;D0=20
    u0=floor(M/2);
    v0=floor(N/2);
    for u=1:M
        for v=1:N
            D=sqrt((u-u0)^2+(v-v0)^2);
            H=1/(1+(D/D0)^(2*n));
%             H1=1/(1+(D0/D)^(2*n));
            G(u,v)=H*F(u,v);
%             G1(u,v)=H1*F(u,v);
        end;
    end;
    g=ifft2(ifftshift(G));
    g=im2uint8(real(g));
end

if enh_type==1  %高通滤波
    f=im2double(f);
    F=fftshift(fft2(f));
    [M,N]=size(F);%     n=3;D0=20
    u0=floor(M/2);
    v0=floor(N/2);
    for u=1:M
        for v=1:N
            D=sqrt((u-u0)^2+(v-v0)^2);
%             H=1/(1+(D/D0)^(2*n));
            H=1/(1+(D0/D)^(2*n));
%             G(u,v)=H*F(u,v);
            G(u,v)=H*F(u,v);
        end;
    end;
    g=ifft2(ifftshift(G));
    g=im2uint8(real(g));
end
axes(handles.axes_enhance_1);
imshow(g);
pic=g;
setappdata(0,'pic',pic);

% --- Executes during object creation, after setting all properties.
function enh_slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to enh_slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function m_lbq_Callback(hObject, eventdata, handles)
% hObject    handle to m_lbq (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_sobel_Callback(hObject, eventdata, handles)
% hObject    handle to m_sobel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.axes_enhance_2,'Visible','on') ;
set (handles.axes_enhance_3,'Visible','on') ;
set (handles.enh_text3,'Visible','on') ;
set (handles.enh_text4,'Visible','on') ;
set (handles.enh_text5,'Visible','on') ;
pic=getappdata(0,'pic');
%水平锐化滤波
h1=[1 2 1; 0 0 0; -1 -2 -1];
A1=imfilter(pic,h1);
axes(handles.axes_enhance_2);
imshow(A1);
%垂直锐化滤波
h2=[1 0 -1;2 0 -2;1 0 -1];
A2=imfilter(pic,h2);
axes(handles.axes_enhance_3);
imshow(A2);
%45度锐化滤波
h3=[-2 -1 0;-1 0 1;0 1 2];
A3=imfilter(pic,h3);
axes(handles.axes_enhance_4);
imshow(A3);

% --------------------------------------------------------------------
function m_zdy_Callback(hObject, eventdata, handles)
% hObject    handle to m_zdy (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
%run GUI_enh_zdy;
%uiwait(handles.figure1);
%GG=0;% GG=getappdata(GUI,'GG');
   %  h = figure(GUI_enh_zdy);
    % if(ishandle(h)==false)   
         %a=GUI_enh_zdy;
         %zdy_h=a;
         zdy_h=GUI_GG;
         disp(zdy_h);          
         A=imfilter(pic,zdy_h);
         axes(handles.axes_enhance_1);
         imshow(A);
   %  end


% --------------------------------------------------------------------
function m_bianma_Callback(hObject, eventdata, handles)
% hObject    handle to m_bianma (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set (handles.enh_pushbutton_1,'Visible','off') 
set (handles.enh_popupmenu1,'Visible','off') 
set (handles.enh_slider1,'Visible','off') 
set (handles.enh_text6,'Visible','off') 
set (handles.enh_popupmenu2,'Visible','off')
set (handles.enh_slider2,'Visible','off') 
set (handles.enh_slider3,'Visible','off') 
set (handles.enh_text1,'Visible','off') 
set (handles.enh_text2,'Visible','off') 

set (handles.enh_text3,'Visible','off') 
set (handles.enh_text4,'Visible','off') 
set (handles.enh_text5,'Visible','off') 
axes(handles.axes_enhance_2);
cla%清除坐标系
axes(handles.axes_enhance_3);
cla%清除坐标系
axes(handles.axes_enhance_4);
cla%清除坐标系
set (handles.axes_enhance_2,'Visible','off') 
set (handles.axes_enhance_3,'Visible','off') 
set (handles.axes_enhance_4,'Visible','off') 
% --------------------------------------------------------------------
function m_xingchengbianm_Callback(hObject, eventdata, handles)
% hObject    handle to m_xingchengbianm (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.xcbm_pushbutton1,'Visible','on');
set(handles.xcbm_pushbutton2,'Visible','on');

% --- Executes on button press in xcbm_pushbutton1.
function xcbm_pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to xcbm_pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
pic_size=size(pic);
if numel(pic_size)==2
    pic_I=im2bw(pic,0.5);
    I1=pic_I(:)';
    I1len=length(I1);
    j=1;n=1;
    for z=1:(I1len-1)
        if I1(z)==I1(z+1)
            n=n+1;
        else
            pixel(j)=I1(z);
            numpixel(j)=n;
            j=j+1;
            n=1;
        end
    end
    pixel(j)=I1(z+1);
    numpixel(j)=n;
    pixel_len=length(pixel);
    CR=I1len/pixel_len;
    disp('压缩比：');
    disp(CR);
    disp('原图像数据长度：');
    disp(I1len);
    disp('压缩后的图像数据长度：');
    disp(pixel_len);
    setappdata(0,'pic_I',pic_I);
    setappdata(0,'pixel',pixel);
    setappdata(0,'numpixel',numpixel);
    setappdata(0,'pixel_len',pixel_len);
    GG=0;
    setappdata(0,'GG',GG);
    
    XX=[pixel;numpixel];
    XX=XX';
    xlswrite('gray_result.xls',XX);   % tt是矩阵的名字
    
    fid = fopen('gray_result.txt', 'wt'); %-t模式按照文本而非二进制模式读写 
    fprintf(fid,[repmat('%d\t', 1, size(XX,2)), '\n'], XX');%转置并适时(写完一列后)添加换行
    fclose(fid);
    
else
    R=pic(:,:,1); 
    G=pic(:,:,2);
    B=pic(:,:,3);
    R1=R(:)';
    G1=G(:)';
    B1=B(:)';
%红色通道压缩
    R1len=length(R1);
    j=1;n=1;
    for z=1:(R1len-1)
        if R1(z)==R1(z+1)
            n=n+1;
        else
            pixel_R(j)=R1(z);
            numpixel_R(j)=n;
            j=j+1;
            n=1;
        end
    end
    pixel_R(j)=R1(z+1);
    numpixel_R(j)=n;
    pixel_R_len=length(pixel_R);
    CR=R1len/pixel_R_len;
    disp('红色通道压缩比：');
    disp(CR);
    disp('原红色通道数据长度：');
    disp(R1len);
    disp('压缩后的红色通道数据长度：');
    disp(pixel_R_len);
        
    
%绿色通道压缩
    G1len=length(G1);
    j=1;n=1;
    for z=1:(G1len-1)
        if G1(z)==G1(z+1)
            n=n+1;
        else
            pixel_G(j)=G1(z);
            numpixel_G(j)=n;
            j=j+1;
            n=1;
        end
    end
    pixel_G(j)=G1(z+1);
    numpixel_G(j)=n;
    pixel_G_len=length(pixel_G);
    CR=G1len/pixel_G_len;
    disp('绿色通道压缩比：');
    disp(CR);
    disp('原绿色通道数据长度：');
    disp(G1len);
    disp('压缩后的绿色通道数据长度：');
    disp(pixel_G_len);
%蓝色色通道压缩
    B1len=length(B1);
    j=1;n=1;
    for z=1:(B1len-1)
        if B1(z)==B1(z+1)
            n=n+1;
        else
            pixel_B(j)=B1(z);
            numpixel_B(j)=n;
            j=j+1;
            n=1;
        end
    end
    pixel_B(j)=B1(z+1);
    numpixel_B(j)=n;
    pixel_B_len=length(pixel_B);
    CR=B1len/pixel_B_len;
    disp('蓝色通道压缩比：');
    disp(CR);
    disp('原蓝色通道数据长度：');
    disp(B1len);
    disp('压缩后的蓝色通道数据长度：');
    disp(pixel_B_len); 
    disp('图像压缩比：');
    disp((R1len+G1len+B1len)/(pixel_R_len+pixel_G_len+pixel_B_len));
    disp('原图像数据长度：');
    disp(R1len+G1len+B1len);
    disp('压缩后的图像数据长度：');
    disp(pixel_R_len+pixel_G_len+pixel_B_len);
    
    assignin('base','pixel_R',pixel_R); %输出到工作区  
    assignin('base','numpixel_R',numpixel_R);  
      
%     XX=XX';
%     xlswrite('rgb_result.xls',XX,'A1');   % tt是矩阵的名字
    XX=[pixel_R;numpixel_R];  
    fid = fopen('r_result.txt', 'wt'); %-t模式按照文本而非二进制模式读写 
    fprintf(fid,[repmat('%d\t', 1, size(XX,2)), '\n'], XX);%转置并适时(写完一列后)添加换行
    fclose(fid);
    
    XX=[pixel_G;numpixel_G];  
    fid = fopen('g_result.txt', 'wt'); %-t模式按照文本而非二进制模式读写 
    fprintf(fid,[repmat('%d\t', 1, size(XX,2)), '\n'], XX);%转置并适时(写完一列后)添加换行
    fclose(fid);
    
    XX=[pixel_B;numpixel_B];  
    fid = fopen('b_result.txt', 'wt'); %-t模式按照文本而非二进制模式读写 
    fprintf(fid,[repmat('%d\t', 1, size(XX,2)), '\n'], XX);%转置并适时(写完一列后)添加换行
    fclose(fid);

    setappdata(0,'pixel_R',pixel_R);     
    setappdata(0,'numpixel_R',numpixel_R);
    setappdata(0,'pixel_G',pixel_G);
    setappdata(0,'numpixel_G',numpixel_G);
    setappdata(0,'pixel_B',pixel_B);
    setappdata(0,'numpixel_B',numpixel_B);
    GG=1;
    setappdata(0,'GG',GG);
end



% --- Executes on button press in xcbm_pushbutton2.
function xcbm_pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to xcbm_pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
GG=getappdata(0,'GG');
if GG==0
    pixel=getappdata(0,'pixel');
    numpixel=getappdata(0,'numpixel');
    pixel_len=getappdata(0,'pixel_len');
    pic_I=getappdata(0,'pic_I');
    n=1;
    for a=1:pixel_len
        for b=1:numpixel(a)
            I2(n)=pixel(a);
            n=n+1;
        end;
    end;
    disp('解码后的图像数据长度：');
    disp(n);
    I2=reshape(I2,size(pic_I));
    axes(handles.axes_enhance_1);
    imshow(I2);
    
else
    R=pic(:,:,1); 
    G=pic(:,:,2);
    B=pic(:,:,3);
    pixel_R=getappdata(0,'pixel_R');
    numpixel_R=getappdata(0,'numpixel_R');
    pixel_G=getappdata(0,'pixel_G');
    numpixel_G=getappdata(0,'numpixel_G');
    pixel_B=getappdata(0,'pixel_B');
    numpixel_B=getappdata(0,'numpixel_B');
    
    pixel_R_len=length(pixel_R);
    pixel_G_len=length(pixel_G);
    pixel_B_len=length(pixel_B);
      
    n=1;
    for a=1:pixel_R_len
        for b=1:numpixel_R(a)
            I_R(n)=pixel_R(a);
            n=n+1;
        end
    end
    disp(n);
    R=reshape(I_R,size(R));


    n=1;
    for a=1:pixel_G_len
        for b=1:numpixel_G(a)
            I_G(n)=pixel_G(a);
            n=n+1;
        end
    end
    disp(n);
    G=reshape(I_G,size(G));

    
    n=1;
    for a=1:pixel_B_len
        for b=1:numpixel_B(a)
            I_B(n)=pixel_B(a);
            n=n+1;
        end;
    end;
    disp(n);
    B=reshape(I_B,size(B));
    
    

    g(:,:,1)=R;g(:,:,2)=G;g(:,:,3)=B;
    g=uint8(g);
    axes(handles.axes_enhance_1);
    imshow(g);    
    
    
    figure;
    subplot(131);imshow(R);title('红色通道解压');
    subplot(132);imshow(G);title('绿色通道解压');
    subplot(133);imshow(B);title('蓝色通道解压');
   
end



% --------------------------------------------------------------------
function m_fenge_Callback(hObject, eventdata, handles)
% hObject    handle to m_fenge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.xcbm_pushbutton1,'Visible','off');
set(handles.xcbm_pushbutton2,'Visible','off');

% --------------------------------------------------------------------
function m_bianyuanjiance_Callback(hObject, eventdata, handles)
% hObject    handle to m_bianyuanjiance (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
figure;
h1=[-1 0;0 1]; %水平roberts算子
% h1=[0 -1;1 0]; %垂直roberts算子
B1=imfilter(pic,h1);
subplot(1,3,1);imshow(B1);
title('roberts算子');

h2=[1 2 1; 0 0 0;-1 -2 -1]; %水平sobel算子
% h2=[1 0 -1;2 0 -2;1 0 -1]; %垂直sobel算子
B2=imfilter(pic,h2);
subplot(1,3,2);imshow(B2);
title('sobel算子');


h3=[0 -1 0; -1 4 -1; 0 -1 0];
B3=imfilter(pic,h3);
subplot(1,3,3);imshow(B3);
title('Laplacian算子');

% --------------------------------------------------------------------
function m_yuzhifenge_Callback(hObject, eventdata, handles)
% hObject    handle to m_yuzhifenge (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function m_yzfg1_Callback(hObject, eventdata, handles)
% hObject    handle to m_yzfg1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.tzfg_slider1,'Visible','on');
set(handles.tzfg_text1,'Visible','on');

% --------------------------------------------------------------------
function m_yzfg2_Callback(hObject, eventdata, handles)
% hObject    handle to m_yzfg2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
set(handles.tzfg_slider1,'Visible','off');
set(handles.tzfg_text1,'Visible','off');
pic=getappdata(0,'pic');
h=imhist(pic);
t=[];t(1)=128;MAX=500;
for i=1:MAX
    s1=0;s2=0;s3=0;s4=0;
    for k=1:t(i)
        s1=s1+h(k)*k; s2=s2+h(k);
    end
    for k=t(i)+1:256
        s3=s3+h(k)*k;
        s4=s4+h(k);
    end
    t(i+1)=floor((s1/s2+s3/s4)/2);
    if(abs(t(i+1)-t(i))<10^-7)
        break;
    end
end
tt=t(i+1);
yzfg_pic=pic;
yzfg_pic(yzfg_pic<tt)=0;
yzfg_pic(yzfg_pic>=tt)=255;
axes(handles.axes_enhance_1);
imshow(yzfg_pic);


% --- Executes on slider movement.
function tzfg_slider1_Callback(hObject, eventdata, handles)
% hObject    handle to tzfg_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
tzfg_slider1=get(hObject,'Value');
tzfg_slider1=roundn(tzfg_slider1,-1);
pic=getappdata(0,'pic');
yzfg_pic=im2bw(pic,tzfg_slider1);
axes(handles.axes_enhance_1);
imshow(yzfg_pic);



% --- Executes during object creation, after setting all properties.
function tzfg_slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to tzfg_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --------------------------------------------------------------------
function m_xtxcl_Callback(hObject, eventdata, handles)
% hObject    handle to m_xtxcl (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% set (handles.xtx_slider1,'Visible','on')
% set (handles.xtx_slider2,'Visible','on')
% set (handles.xtx_text1,'Visible','on')
% set (handles.xtx_text2,'Visible','on')

% --------------------------------------------------------------------
function m_pengzhang_Callback(hObject, eventdata, handles)
% hObject    handle to m_pengzhang (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
A=im2bw(pic);
sel=strel('square',3);
B=imdilate(A,sel);
axes(handles.axes_enhance_1);
imshow(B);
setappdata(0,'pic',B);



% --------------------------------------------------------------------
function m_fushi_Callback(hObject, eventdata, handles)
% hObject    handle to m_fushi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
A=im2bw(pic);
sel=strel('square',3);
B=imerode(A,sel);
axes(handles.axes_enhance_1);
imshow(B);
setappdata(0,'pic',B);

% --------------------------------------------------------------------
function m_kaiyunsuan_Callback(hObject, eventdata, handles)
% hObject    handle to m_kaiyunsuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
A=im2bw(pic);
sel=strel('square',2);
B=imopen(A,sel);
axes(handles.axes_enhance_1);
imshow(B);
setappdata(0,'pic',B);

% --------------------------------------------------------------------
function m_biyunsuan_Callback(hObject, eventdata, handles)
% hObject    handle to m_biyunsuan (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
pic=getappdata(0,'pic');
A=im2bw(pic);
sel=strel('square',7);
B=imclose(A,sel);
axes(handles.axes_enhance_1);
imshow(B);
setappdata(0,'pic',B);

% --- Executes on slider movement.
function xtx_slider1_Callback(hObject, eventdata, handles)
% hObject    handle to xtx_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
xtx_slider1=get(hObject,'Value');
xtx_slider1=round(xtx_slider1);
pic=getappdata(0,'pic');
A=im2bw(pic);
sel=strel('square',xtx_slider1);
B=imdilate(A,sel);
axes(handles.axes_enhance_1);
imshow(B);

% --- Executes during object creation, after setting all properties.
function xtx_slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xtx_slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function xtx_slider2_Callback(hObject, eventdata, handles)
% hObject    handle to xtx_slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
xtx_slider1=get(hObject,'Value');
xtx_slider1=round(xtx_slider1);
pic=getappdata(0,'pic');
A=im2bw(pic);
sel=strel('square',3);
B=imdilate(A,sel);
axes(handles.axes_enhance_1);
imshow(B);



% --- Executes during object creation, after setting all properties.
function xtx_slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xtx_slider2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in zoom_button_OK.
function zoom_button_OK_Callback(hObject, eventdata, handles)
% hObject    handle to zoom_button_OK (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
Sx=getappdata(0,'Sx');
Sy=getappdata(0,'Sy');
trans_pic=getappdata(0,'trans_pic');
 [m,n,~]=size(trans_pic);

trans_pic= imresize(trans_pic, [m*Sy n*Sx], 'nearest'); %缩放 水平方向

%trans_pic=imread('01.bmp');
disp(class(trans_pic));
axes(handles.axes_trans_show);%axes1是坐标轴的标示 
%cla%清除坐标系
imshow(trans_pic);
trans_pic1=trans_pic;
setappdata(0,'trans_pic1',trans_pic1)
