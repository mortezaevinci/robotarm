function varargout = GUI_4DOF_resolvedmotionrate(varargin)
clc
%global sth1_ sth2_ sth3_ sth4_
% GUI_4DOF_resolvedmotionrate M-file for GUI_4DOF_resolvedmotionrate.fig
%      GUI_4DOF_resolvedmotionrate, by itself, creates a new GUI_4DOF_resolvedmotionrate or raises the existing
%      singleton*.
%
%      H = GUI_4DOF_resolvedmotionrate returns the handle to a new GUI_4DOF_resolvedmotionrate or the handle to
%      the existing singleton*.
%
%      GUI_4DOF_resolvedmotionrate('CALLBACK',hObject,eventData,handles,...
%      ) calls the local
%      function named CALLBACK in GUI_4DOF_resolvedmotionrate.M with the given input arguments.
%
%      GUI_4DOF_resolvedmotionrate('Property','Value',...) creates a new GUI_4DOF_resolvedmotionrate or raises the
%      existing singleton*.  Starting from the left, property value pairs
%      are
%      applied to the GUI before GUI_4DOF_resolvedmotionrate_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_4DOF_resolvedmotionrate_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI_4DOF_resolvedmotionrate

% Last Modified by GUIDE v2.5 11-Aug-2010 16:38:06

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',        mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_4DOF_resolvedmotionrate_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_4DOF_resolvedmotionrate_OutputFcn, ...
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

% --- Executes just before GUI_4DOF_resolvedmotionrate is made visible.
function GUI_4DOF_resolvedmotionrate_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI_4DOF_resolvedmotionrate (see VARARGIN)

% Choose default command line output for GUI_4DOF_resolvedmotionrate
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% This sets up the initial plot - only do when we are invisible
% so window can get raised using GUI_4DOF_resolvedmotionrate.
if strcmp(get(hObject,'Visible'),'off')
    %plot(rand(5));
end

% UIWAIT makes GUI_4DOF_resolvedmotionrate wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_4DOF_resolvedmotionrate_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes on button press in pushbutton1.
function stop_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% axes(handles.axes1);
% cla;
% 
% popup_sel_index = get(handles.popupmenu1, 'Value');
% switch popup_sel_index
%     case 1
%         plot(rand(5));
%     case 2
%         plot(sin(1:0.01:25.99));
%     case 3
%         bar(1:.5:10);
%     case 4
%         plot(membrane);
%     case 5
%         surf(peaks);
% end
%toggle the flag variable so that the other process will stop

% --------------------------------------------------------------------
function FileMenu_Callback(hObject, eventdata, handles)
% hObject    handle to FileMenu (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function OpenMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to OpenMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
file = uigetfile('*.fig');
if ~isequal(file, 0)
    open(file);
end

% --------------------------------------------------------------------
function PrintMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to PrintMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
printdlg(handles.figure1)

% --------------------------------------------------------------------
function CloseMenuItem_Callback(hObject, eventdata, handles)
% hObject    handle to CloseMenuItem (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
selection = questdlg(['Close ' get(handles.figure1,'Name') '?'],...
                     ['Close ' get(handles.figure1,'Name') '...'],...
                     'Yes','No','Yes');
if strcmp(selection,'No')
    return;
end

delete(handles.figure1)


% --- Executes on selection change in popupmenu1.
function popupmenu1_Callback(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = get(hObject,'String') returns popupmenu1 contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupmenu1


% --- Executes during object creation, after setting all properties.
function popupmenu1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupmenu1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
     set(hObject,'BackgroundColor','white');
end

set(hObject, 'String', {'plot(rand(5))', 'plot(sin(1:0.01:25))', 'bar(1:.5:10)', 'plot(membrane)', 'surf(peaks)'});


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.text5,'String',get(hObject,'Value'))
guidata(hObject, handles);


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
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.text6,'String',get(hObject,'Value'))
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.text7,'String',get(hObject,'Value'))
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
set(handles.text8,'String',get(hObject,'Value'))
guidata(hObject, handles);

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
%set(handles.start_pushbutton,'UserData',1); 

 %handles.start_pushbutton=1;

   % guidata(hObject, handles);
 
%get the info from lagrange_solver_4DOF copy-pasted
dynamics_4DOF_init

%Ghat=simplify(Mmat^-1*G)
%Vhat=simplify(Mmat^-1*V)

%initial states;
%states=[th1_ th2_ th3_ th4_ thdot1_ thdot2_ thdot3_ thdot4_]';
se1_=get(handles.slider1,'Value');
se2_=get(handles.slider3,'Value');
se3_=get(handles.slider4,'Value');
se4_=get(handles.slider5,'Value');

init=ikinematics_4DOF_fun([se1_;se2_;se3_;se4_]);

init=[init' 0 0 0 0 0]';

%tau=[tau1 tau2 tau3 tau4]';

states0=init;
kinematics_4DOF_fun




%do in loop

cnt=0;

while (get(handles.Stop,'Value')==0)
  tic
    se1_=get(handles.slider1,'Value');
    se2_=get(handles.slider3,'Value');
    se3_=get(handles.slider4,'Value');
    se4_=get(handles.slider5,'Value');
    edesired=[se1_ se2_ se3_ se4_]';
    
 dynamics_4DOF_loop_resolvedmotionrate
 
 dynamics_4DOF_out

tt=toc

%view
if mod(cnt,2)==0
    axes(handles.axes1);
     cla;
    kinematics_4DOF_fun
    hold off
    
    axes(handles.axes2);
     cla;
     hold on
plot(x*cos(th4_)+y*sin(th4_),z,'-o','linewidth',3)
grid on
axis([-l1-l2-l3 l1+l2+l3+l4 -l1-l2-l3 l1+l2+l3+l4]);
view([0 0 10])
hold off

    pause (Ts*2-tt)
end
%end of view

end
%while the flag variable is one, the loop continues

guidata(hObject, handles);


% --- Executes on button press in Stop.
function Stop_Callback(hObject, eventdata, handles)
% hObject    handle to Stop (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of Stop


% --- Executes on button press in wall.
function wall_Callback(hObject, eventdata, handles)
% hObject    handle to wall (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of wall
