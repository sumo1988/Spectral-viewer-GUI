function varargout = svgui(varargin)
% SVGUI MATLAB code for svgui.fig
%      SVGUI, by itself, creates a new SVGUI or raises the existing
%      singleton*.
%
%      H = SVGUI returns the handle to a new SVGUI or the handle to
%      the existing singleton*.
%
%      SVGUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in SVGUI.M with the given input arguments.
%
%      SVGUI('Property','Value',...) creates a new SVGUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before svgui_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to svgui_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help svgui

% Last Modified by GUIDE v2.5 29-Sep-2017 16:35:19

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @svgui_OpeningFcn, ...
                   'gui_OutputFcn',  @svgui_OutputFcn, ...
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

% --- Executes just before svgui is made visible.
function svgui_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to svgui (see VARARGIN)

% Choose default command line output for svgui
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% This sets up the initial plot - only do when we are invisible
% so window can get raised using svgui.
if strcmp(get(hObject,'Visible'),'off')
    F= 0;
    G= 0;
    plot(G,F)
    axis([700 1000 0 50])
end

% UIWAIT makes svgui wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = svgui_OutputFcn(hObject, eventdata, handles)
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
axes(handles.axes1);
cla;

popup_sel_index = get(handles.popupmenu1, 'Value');
switch popup_sel_index
    case 1
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Alexa350.txt');
        plot(x_data, y_data)
    case 2
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Alexa488.txt');
        plot(x_data, y_data)
    case 3
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Alexa568.txt');
        plot(x_data, y_data)
    case 4
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Alexa594.txt');
        plot(x_data, y_data)
    case 5
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Bodipy.txt');
        plot(x_data, y_data)
    case 6
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\CaCrimson.txt');
        plot(x_data, y_data)
    case 7
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\CaGreen.txt');
        plot(x_data, y_data)
    case 8
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\CaOrange.txt');
        plot(x_data, y_data)
    case 9
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\CascadeBlue.txt');
        plot(x_data, y_data)
    case 10
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Coumarin307.txt');
        plot(x_data, y_data)
    case 11
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\DAPI.txt');
        plot(x_data, y_data)
    case 12
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\DiI.txt');
        plot(x_data, y_data)
    case 13
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\eGFP.txt');
        plot(x_data, y_data)
    case 14
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Fluo3.txt');
        plot(x_data, y_data)
    case 15
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Fluorescein.txt');
        plot(x_data, y_data)
    case 16
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\LuciferYellow.txt');
        plot(x_data, y_data)
    case 17
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\NADH GLY.txt');
        plot(x_data, y_data)
    case 18
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Pyrene.txt');
        plot(x_data, y_data)
    case 19
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\RhodamineB.txt');
        plot(x_data, y_data)
    case 20
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\Sapphire.txt');
        plot(x_data, y_data)
    case 21
        [x_data, y_data] =load_txt_file('\\apollo\facial$\Suresh Mohan\Spectral Viewer GUI\2p-xsections\wtGFP.txt');
        plot(x_data, y_data)    
end


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

set(hObject, 'String', {'Alexa350', 'Alexa488', 'Alexa568', 'Alexa594', 'Bodipy', 'CaCrimson', 'CaGreen', 'CaOrange', 'CascadeBlue', 'Coumarin307', 'DAPI', 'DiI', 'eGFP', 'Fluo3', 'Fluorescein', 'LuciferYellow', 'NADH GLY', 'Pyrene', 'RhodamineB', 'Sapphire', 'wtGFP'});
