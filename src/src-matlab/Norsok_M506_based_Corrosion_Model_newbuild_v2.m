function varargout = Norsok_M506_based_Corrosion_Model_newbuild_v2(varargin)
% NORSOK_M506_BASED_CORROSION_MODEL_NEWBUILD_V2 MATLAB code for Norsok_M506_based_Corrosion_Model_newbuild_v2.fig
%      NORSOK_M506_BASED_CORROSION_MODEL_NEWBUILD_V2, by itself, creates a new NORSOK_M506_BASED_CORROSION_MODEL_NEWBUILD_V2 or raises the existing
%      singleton*.
%
%      H = NORSOK_M506_BASED_CORROSION_MODEL_NEWBUILD_V2 returns the handle to a new NORSOK_M506_BASED_CORROSION_MODEL_NEWBUILD_V2 or the handle to
%      the existing singleton*.
%
%      NORSOK_M506_BASED_CORROSION_MODEL_NEWBUILD_V2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NORSOK_M506_BASED_CORROSION_MODEL_NEWBUILD_V2.M with the given input arguments.
%
%      NORSOK_M506_BASED_CORROSION_MODEL_NEWBUILD_V2('Property','Value',...) creates a new NORSOK_M506_BASED_CORROSION_MODEL_NEWBUILD_V2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Norsok_M506_based_Corrosion_Model_newbuild_v2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Norsok_M506_based_Corrosion_Model_newbuild_v2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Norsok_M506_based_Corrosion_Model_newbuild_v2

% Last Modified by GUIDE v2.5 13-Aug-2020 14:51:07

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Norsok_M506_based_Corrosion_Model_newbuild_v2_OpeningFcn, ...
                   'gui_OutputFcn',  @Norsok_M506_based_Corrosion_Model_newbuild_v2_OutputFcn, ...
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


% --- Executes just before Norsok_M506_based_Corrosion_Model_newbuild_v2 is made visible.
function Norsok_M506_based_Corrosion_Model_newbuild_v2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Norsok_M506_based_Corrosion_Model_newbuild_v2 (see VARARGIN)

% Choose default command line output for Norsok_M506_based_Corrosion_Model_newbuild_v2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Norsok_M506_based_Corrosion_Model_newbuild_v2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Norsok_M506_based_Corrosion_Model_newbuild_v2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function operatingTemperatureStartPoint_Callback(hObject, eventdata, handles)
% hObject    handle to operatingTemperatureStartPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operatingTemperatureStartPoint as text
%        str2double(get(hObject,'String')) returns contents of operatingTemperatureStartPoint as a double


% --- Executes during object creation, after setting all properties.
function operatingTemperatureStartPoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operatingTemperatureStartPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function operatingPressureStartPoint_Callback(hObject, eventdata, handles)
% hObject    handle to operatingPressureStartPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operatingPressureStartPoint as text
%        str2double(get(hObject,'String')) returns contents of operatingPressureStartPoint as a double


% --- Executes during object creation, after setting all properties.
function operatingPressureStartPoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operatingPressureStartPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function gasRate_Callback(hObject, eventdata, handles)
% hObject    handle to gasRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of gasRate as text
%        str2double(get(hObject,'String')) returns contents of gasRate as a double


% --- Executes during object creation, after setting all properties.
function gasRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to gasRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function condensateRate_Callback(hObject, eventdata, handles)
% hObject    handle to condensateRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of condensateRate as text
%        str2double(get(hObject,'String')) returns contents of condensateRate as a double


% --- Executes during object creation, after setting all properties.
function condensateRate_CreateFcn(hObject, eventdata, handles)
% hObject    handle to condensateRate (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function condensateAPI_Callback(hObject, eventdata, handles)
% hObject    handle to condensateAPI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of condensateAPI as text
%        str2double(get(hObject,'String')) returns contents of condensateAPI as a double


% --- Executes during object creation, after setting all properties.
function condensateAPI_CreateFcn(hObject, eventdata, handles)
% hObject    handle to condensateAPI (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function co2Content_Callback(hObject, eventdata, handles)
% hObject    handle to co2Content (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of co2Content as text
%        str2double(get(hObject,'String')) returns contents of co2Content as a double


% --- Executes during object creation, after setting all properties.
function co2Content_CreateFcn(hObject, eventdata, handles)
% hObject    handle to co2Content (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function mixtureMolecularWeight_Callback(hObject, eventdata, handles)
% hObject    handle to mixtureMolecularWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of mixtureMolecularWeight as text
%        str2double(get(hObject,'String')) returns contents of mixtureMolecularWeight as a double


% --- Executes during object creation, after setting all properties.
function mixtureMolecularWeight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to mixtureMolecularWeight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pipeOD_Callback(hObject, eventdata, handles)
% hObject    handle to pipeOD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pipeOD as text
%        str2double(get(hObject,'String')) returns contents of pipeOD as a double


% --- Executes during object creation, after setting all properties.
function pipeOD_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pipeOD (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pipeWT_Callback(hObject, eventdata, handles)
% hObject    handle to pipeWT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pipeWT as text
%        str2double(get(hObject,'String')) returns contents of pipeWT as a double


% --- Executes during object creation, after setting all properties.
function pipeWT_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pipeWT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function pipeRoughness_Callback(hObject, eventdata, handles)
% hObject    handle to pipeRoughness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of pipeRoughness as text
%        str2double(get(hObject,'String')) returns contents of pipeRoughness as a double


% --- Executes during object creation, after setting all properties.
function pipeRoughness_CreateFcn(hObject, eventdata, handles)
% hObject    handle to pipeRoughness (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function designLife_Callback(hObject, eventdata, handles)
% hObject    handle to designLife (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of designLife as text
%        str2double(get(hObject,'String')) returns contents of designLife as a double


% --- Executes during object creation, after setting all properties.
function designLife_CreateFcn(hObject, eventdata, handles)
% hObject    handle to designLife (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function upset_Callback(hObject, eventdata, handles)
% hObject    handle to upset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of upset as text
%        str2double(get(hObject,'String')) returns contents of upset as a double


% --- Executes during object creation, after setting all properties.
function upset_CreateFcn(hObject, eventdata, handles)
% hObject    handle to upset (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in calculateButton.
function calculateButton_Callback(hObject, eventdata, handles)
% hObject    handle to calculateButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Assumptions and Declaration
    MAXIMUM_LINSPACE_VALUE = 24;
    x = linspace(0,MAXIMUM_LINSPACE_VALUE);
    %Recording variables    
        operatingPressureArray = zeros(1,100);
        operatingTemperatureArray = zeros(1,100);
        pHArray = zeros(1,100);
        corrosionRate = zeros(1,100);
    
%Get Handles Section
    operatingTemperatureStartPoint  =   str2double(get(handles.operatingTemperatureStartPoint,'string'));
    operatingTemperatureEndPoint    =   str2double(get(handles.operatingTemperatureEndPoint,'string'));
    operatingPressureStartPoint     =   str2double(get(handles.operatingPressureStartPoint,'string'));
    operatingPressureEndPoint       =   str2double(get(handles.operatingPressureEndPoint,'string'));
    gasRate                         =   str2double(get(handles.gasRate,'string'));
    condensateRate                  =   str2double(get(handles.condensateRate,'string'));
    condensateAPI                   =   str2double(get(handles.condensateAPI,'string'));
    co2Content                      =   str2double(get(handles.co2Content,'string'));
    pipeOD                          =   str2double(get(handles.pipeOD,'string'));
    pipeWT                          =   str2double(get(handles.pipeWT,'string'));
    pipeRoughness                   =   str2double(get(handles.pipeRoughness,'string'));
    mixtureMolecularWeight          =   str2double(get(handles.mixtureMolecularWeight,'string'));
    upset                           =   str2double(get(handles.upset,'string'));
    designLife                      =   str2double(get(handles.designLife,'string'));
    inhibitorAvailability           =   str2double(get(handles.inhibitorAvailability,'string'));
    inhibitorEfficiency             =   str2double(get(handles.inhibitorEfficiency,'string'));
    
%Update Recording variables    
    operatingTemperatureArray       =   linspace(operatingTemperatureStartPoint, operatingTemperatureEndPoint);
    operatingPressureArray          =   linspace(operatingPressureStartPoint, operatingPressureEndPoint);
    
%Iteration Calculation
    for i = (1 : length(corrosionRate))
        % CO2 fugacity
            fug = Fugacity(operatingPressureArray(i), operatingTemperatureArray(i), co2Content);
        % Z Factor 
            Z_Factor = Z_determine(mixtureMolecularWeight, operatingPressureArray(i), operatingTemperatureArray(i));
        % Kt Constant
            Kt = Kt_determine(operatingTemperatureArray(i));
        %Shear
            ShearStress = Shear_determine(mixtureMolecularWeight, gasRate, condensateRate, condensateAPI, pipeOD, pipeWT, pipeRoughness, operatingPressureArray(i), operatingTemperatureArray(i), Z_Factor);
        %f(pH) and pH
            pHArray(i) = pH_determine(operatingTemperatureArray(i), operatingPressureArray(i), fug);
            fpH = fpH_determine(operatingTemperatureArray(i), fug, pHArray(i));
        %Corrosion rate
            corrosionRate(i) = Corrosion_determine(Kt, fug, ShearStress, fpH, operatingTemperatureArray(i));
    end
    
%Metal Loss
    DAYS_IN_YEAR = 365;
    
    %Metal Loss reduced by the use of inhibitor
    inhibitorMetalLoss = max(corrosionRate) * inhibitorAvailability/100 * inhibitorEfficiency/100 * designLife;
    
    %Actual Metal Loss
    metalLoss = max(corrosionRate) * designLife - inhibitorMetalLoss;
    metalLossUpset = metalLoss * upset/DAYS_IN_YEAR;
    
%Set Handles and Plot
    set(handles.MAXIMUM_CORROSION_RATE,'string',max(corrosionRate));
    set(handles.MINIMUM_CORROSION_RATE,'string',min(corrosionRate));
    set(handles.METAL_LOSS,'string',metalLoss);
    set(handles.METAL_LOSS_UPSET,'string',metalLossUpset);
    set(handles.plottype,'value', 1);
    
% Plot
    xAxes = operatingTemperatureArray;
    yAxes = corrosionRate;
    plot(handles.corrosionProfile, xAxes, yAxes);
    xlabel(handles.corrosionProfile, 'Operating Temperature (oC)');
    ylabel(handles.corrosionProfile, 'Corrosion Rate (mm/y)');
    grid(handles.corrosionProfile, 'minor');
    pan(handles.corrosionProfile, 'on');
    datacursormode on;
        
%Set Application Data
    setappdata(0, 'corrosionRate', corrosionRate);
    setappdata(0, 'operatingTemperatureArray', operatingTemperatureArray);
    setappdata(0, 'operatingPressureArray', operatingPressureArray);
    setappdata(0, 'pHArray', pHArray);
    

function edit28_Callback(hObject, eventdata, handles)
% hObject    handle to MINIMUM_CORROSION_RATE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of MINIMUM_CORROSION_RATE as text
%        str2double(get(hObject,'String')) returns contents of MINIMUM_CORROSION_RATE as a double


% --- Executes during object creation, after setting all properties.
function MINIMUM_CORROSION_RATE_CreateFcn(hObject, eventdata, handles)
% hObject    handle to MINIMUM_CORROSION_RATE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit29_Callback(hObject, eventdata, handles)
% hObject    handle to METAL_LOSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of METAL_LOSS as text
%        str2double(get(hObject,'String')) returns contents of METAL_LOSS as a double


% --- Executes during object creation, after setting all properties.
function METAL_LOSS_CreateFcn(hObject, eventdata, handles)
% hObject    handle to METAL_LOSS (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to METAL_LOSS_UPSET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of METAL_LOSS_UPSET as text
%        str2double(get(hObject,'String')) returns contents of METAL_LOSS_UPSET as a double


% --- Executes during object creation, after setting all properties.
function METAL_LOSS_UPSET_CreateFcn(hObject, eventdata, handles)
% hObject    handle to METAL_LOSS_UPSET (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function operatingTemperatureEndPoint_Callback(hObject, eventdata, handles)
% hObject    handle to operatingTemperatureEndPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operatingTemperatureEndPoint as text
%        str2double(get(hObject,'String')) returns contents of operatingTemperatureEndPoint as a double


% --- Executes during object creation, after setting all properties.
function operatingTemperatureEndPoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operatingTemperatureEndPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function operatingPressureEndPoint_Callback(hObject, eventdata, handles)
% hObject    handle to operatingPressureEndPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of operatingPressureEndPoint as text
%        str2double(get(hObject,'String')) returns contents of operatingPressureEndPoint as a double


% --- Executes during object creation, after setting all properties.
function operatingPressureEndPoint_CreateFcn(hObject, eventdata, handles)
% hObject    handle to operatingPressureEndPoint (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupTemperatureModel.
function popupTemperatureModel_Callback(hObject, eventdata, handles)
% hObject    handle to popupTemperatureModel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupTemperatureModel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupTemperatureModel


% --- Executes during object creation, after setting all properties.
function popupTemperatureModel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupTemperatureModel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in popupPressureModel.
function popupPressureModel_Callback(hObject, eventdata, handles)
% hObject    handle to popupPressureModel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: contents = cellstr(get(hObject,'String')) returns popupPressureModel contents as cell array
%        contents{get(hObject,'Value')} returns selected item from popupPressureModel


% --- Executes during object creation, after setting all properties.
function popupPressureModel_CreateFcn(hObject, eventdata, handles)
% hObject    handle to popupPressureModel (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



% --- Executes on selection change in plottype.
function plottype_Callback(hObject, eventdata, handles)
% hObject    handle to plottype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


    

% Hints: contents = cellstr(get(hObject,'String')) returns plottype contents as cell array
%        contents{get(hObject,'Value')} returns selected item from plottype


% --- Executes during object creation, after setting all properties.
function plottype_CreateFcn(hObject, eventdata, handles)
% hObject    handle to plottype (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: popupmenu controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in updatePlotButton.
function updatePlotButton_Callback(hObject, eventdata, handles)
% hObject    handle to updatePlotButton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

%Get plottype
plottype = get(handles.plottype, 'Value');


%Switching suitable plot type
switch plottype
    %Case 1: Temperature & Corrosion Rate
    case 1
        xAxis = getappdata(0, 'operatingTemperatureArray');
        yAxis = getappdata(0, 'corrosionRate');
        plot(handles.corrosionProfile, xAxis, yAxis);
        xlabel(handles.corrosionProfile, 'Operating Temperature (oC)');
        ylabel(handles.corrosionProfile, 'Corrosion Rate (mm/y)');
        grid(handles.corrosionProfile, 'minor');
    %Case 2: Pressure & Corrosion Rate
    case 2
        xAxis = getappdata(0, 'operatingPressureArray');
        yAxis = getappdata(0, 'corrosionRate');
        plot(handles.corrosionProfile, xAxis, yAxis);
        xlabel(handles.corrosionProfile, 'Operating Pressure (bar)');
        ylabel(handles.corrosionProfile, 'Corrosion Rate (mm/y)');
        grid(handles.corrosionProfile, 'minor');
    %Case 3: Temperature & pH
    case 3
        xAxis = getappdata(0, 'operatingTemperatureArray');
        yAxis = getappdata(0, 'pHArray');
        plot(handles.corrosionProfile, xAxis, yAxis);
        xlabel(handles.corrosionProfile, 'Operating Temperature (oC)');
        ylabel(handles.corrosionProfile, 'pH');
        grid(handles.corrosionProfile, 'minor');
    %Case 4: Pressure & pH
    case 4
        xAxis = getappdata(0, 'operatingPressureArray');
        yAxis = getappdata(0, 'pHArray');
        plot(handles.corrosionProfile, xAxis, yAxis);
        xlabel(handles.corrosionProfile, 'Operating Pressure (bar)');
        ylabel(handles.corrosionProfile, 'pH');
        grid(handles.corrosionProfile, 'minor');
end



function inhibitorAvailability_Callback(hObject, eventdata, handles)
% hObject    handle to inhibitorAvailability (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of inhibitorAvailability as text
%        str2double(get(hObject,'String')) returns contents of inhibitorAvailability as a double


% --- Executes during object creation, after setting all properties.
function inhibitorAvailability_CreateFcn(hObject, eventdata, handles)
% hObject    handle to inhibitorAvailability (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function inhibitorEfficiency_Callback(hObject, eventdata, handles)
% hObject    handle to inhibitorEfficiency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)




% --- Executes during object creation, after setting all properties.
function inhibitorEfficiency_CreateFcn(hObject, eventdata, handles)
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on selection change in sensitivityStudyParameter.
function sensitivityStudyParameter_Callback(hObject, eventdata, handles)
% hObject    handle to sensitivityStudyParameter (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% --- Executes during object creation, after setting all properties.
function sensitivityStudyParameter_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in sensitivityStudyButton.
function sensitivityStudyButton_Callback(hObject, eventdata, handles)
sensitivityStudyParameter = get(handles.sensitivityStudyParameter,'value');
%Waitbar Declaration
    %waitbarWindow = waitbar(0,'Iterative Calculation in progress...')
switch sensitivityStudyParameter
    %Case 1: Gas Flow Rate and Corrosion Rate
    case 1
        %Get appdata and handles
        corrosionRateOriginal = getappdata(0,'corrosionRate')
        gasRateOriginal = str2double(get(handles.gasRate, 'string'))
        
        %Declare original point from first calculation
        originalPoint = [gasRateOriginal max(corrosionRateOriginal)]
        
        %Getting range factor for GAS_RATE_END_POINT
        if (isempty(get(handles.rangeFactor,'string')) == 1)
            fprintf('Range Factor is automatically set to: 2');
            rangeFactor = 2;
        else
            rangeFactor = str2double(get(handles.rangeFactor,'string'))
        end
        
        % Gas Rates Matrix
        GAS_RATE_START_POINT = 0;
        GAS_RATE_END_POINT = gasRateOriginal * rangeFactor;
        gasRateMatrix = linspace(GAS_RATE_START_POINT, GAS_RATE_END_POINT)
        
        %Normalizing gas rate
        %gasRateMatrixNormalized = gasRateMatrix / gasRate;
        
        % Corrosion Rate
        corrosionRateMatrix = zeros(1,100);
            
        % Loop for every Gas Flow Rate Change
        fprintf('Iterative calculation in process... ')
        for ITERATING_INDEX = (1:100)
            %Update progress
            fprintf('%d %%',ITERATING_INDEX);
            
            %Iterative calculation
            set(handles.gasRate, 'string', gasRateMatrix(ITERATING_INDEX));
            calculateButton_Callback(hObject, eventdata, handles);
            placeholder = getappdata(0, 'corrosionRate');
            corrosionRateMatrix(ITERATING_INDEX) = max(placeholder);
            
            %Update progress
            if ITERATING_INDEX <= 9
                fprintf('\b\b\b');
            elseif ITERATING_INDEX <= 99
                fprintf('\b\b\b\b');
            else
                fprintf('\b\b\b\b\bDONE!!!\n')
            end
            %waitbar(ITERATING_INDEX / 100, waitbarWindow);
        end
        
        % Normalizing corrosion Rate
%             corrosionRateMatrix(MIDDLE_POINT) = CORROSION_RATE_MIDDLE_POINT;
%             corrosionRateNormalizedParameter = CORROSION_RATE_MIDDLE_POINT;
%             corrosionRateMatrixNormalized = corrosionRateMatrix / corrosionRateNormalizedParameter;
        
        %Plotting Section
        fprintf('Plotting...\n');
        %MainPlot
            plot(handles.sensitivityStudy, gasRateMatrix, corrosionRateMatrix);
            grid(handles.sensitivityStudy, 'minor');
            %xlim(handles.sensitivityStudy, [0 2]);
            %ylim(handles.sensitivityStudy, [0 2]);
            xlabel(handles.sensitivityStudy, 'Gas Rate');
            ylabel(handles.sensitivityStudy, 'Corrosion Rate');
            pan(handles.sensitivityStudy, 'on');
            datacursormode on;
        %Plot original point
            hold on;
            plot(handles.sensitivityStudy, originalPoint(1), originalPoint(2), 'o')
            hold off;
        
        %Reset initial handles states
        set(handles.gasRate, 'string', gasRateOriginal);
        calculateButton_Callback(hObject, eventdata, handles);
        
        %Set appdata
        setappdata(0, 'corrosionRateMatrix', corrosionRateMatrix);
        %setappdata(0, 'corrosionRateMatrixNormalized' , corrosionRateMatrixNormalized);
        setappdata(0, 'gasRateMatrix', gasRateMatrix);
        %setappdata(0, 'gasRateMatrixNormalized', gasRateMatrixNormalized);
        setappdata(0,'originalDataPoint', originalPoint)
        fprintf('Done!\n');
        
    %Case 2: Temperature, CO2 Fugacity and pH
    case 2
        %Get the data from handles
        operatingTemperatureStartPoint  =   str2double(get(handles.operatingTemperatureStartPoint,'string'));
        operatingTemperatureEndPoint    =   str2double(get(handles.operatingTemperatureEndPoint,'string'));
        operatingPressureStartPoint     =   str2double(get(handles.operatingPressureStartPoint,'string'));
        operatingPressureEndPoint       =   str2double(get(handles.operatingPressureEndPoint,'string'));
        co2Content = str2double(get(handles.co2Content,'string'));
        
        %Get the reference values
        operatingTemperatureReferencedArray     =   getappdata(0, 'operatingTemperatureArray');
        operatingPressureReferencedArray        =   getappdata(0, 'operatingPressureArray');
        pHArrayReferencedArray                  =   getappdata(0, 'pHArray');
        co2FugacityReferencedArray              =   operatingPressureReferencedArray / co2Content;
        
        %Declaration of the arrays for plotting
        operatingTemperatureFullArray           =   linspace(operatingTemperatureStartPoint , operatingTemperatureEndPoint);
        operatingPressureFullArray              =   linspace(operatingPressureStartPoint , operatingPressureEndPoint);
        co2FugacityFullArray                    =   zeros(1,100);
        pHFullArray                             =   zeros(100, 100);
        
        %Iterative Calculation
        TEMPERATURE_ITERATING_INDEX = 1;
        PRESSURE_ITERATING_INDEX = 1;
        fprintf('Iterative calculation in process... ')
        for TEMPERATURE_ITERATING_INDEX = (1: 100)
            %Update progress
            fprintf('%d %%',TEMPERATURE_ITERATING_INDEX);
            for PRESSURE_ITERATING_INDEX = (1: 100)
                co2FugacityFullArray(PRESSURE_ITERATING_INDEX) = Fugacity(operatingTemperatureFullArray(TEMPERATURE_ITERATING_INDEX), operatingPressureFullArray(PRESSURE_ITERATING_INDEX), co2Content);
                % C. de Waard Corrosion Model for Wet Gas 1991
                pHFullArray(TEMPERATURE_ITERATING_INDEX, PRESSURE_ITERATING_INDEX) = pH_determine(operatingTemperatureFullArray(TEMPERATURE_ITERATING_INDEX), operatingPressureFullArray(PRESSURE_ITERATING_INDEX), co2FugacityFullArray(PRESSURE_ITERATING_INDEX));
                %3.71 + 0.00417 * operatingTemperatureFullArray(TEMPERATURE_ITERATING_INDEX) - 0.5 * log(co2FugacityFullArray(PRESSURE_ITERATING_INDEX));
            end
            %Update progress
            if TEMPERATURE_ITERATING_INDEX <= 9
                fprintf('\b\b\b');
            elseif TEMPERATURE_ITERATING_INDEX <= 99
                fprintf('\b\b\b\b');
            else
                fprintf('\b\b\b\b\bDONE!!!\n')
            end
            %waitbar(TEMPERATURE_ITERATING_INDEX /100, waitbarWindow);
        end
        
        % Plotting Section
        fprintf('Plotting...\n');
        surf(handles.sensitivityStudy, operatingTemperatureFullArray, co2FugacityFullArray, pHFullArray, 'linestyle', 'none');
        colorbar(handles.sensitivityStudy);
        xlabel(handles.sensitivityStudy, 'Temperature');
        ylabel(handles.sensitivityStudy, 'CO2 Fugacity');
        zlabel(handles.sensitivityStudy, 'pH');
        grid(handles.sensitivityStudy, 'minor');
        
        %Keeping the reference value
        %hold on;
        %plot(operatingTemperatureReferencedArray, operatingPressureReferencedArray);
        %hold off;
        
        %Set appdata
        setappdata(0, 'operatingTemperatureFullArray', operatingTemperatureFullArray);
        setappdata(0, 'operatingPressureFullArray', operatingPressureFullArray);
        setappdata(0, 'co2FugacityFullArray', co2FugacityFullArray);
        setappdata(0, 'pHFullArray', pHFullArray);
        fprintf('Done!\n');
        
end


% --- Executes on button press in panTool.
function panTool_Callback(hObject, eventdata, handles)
pan('on');



% --- Executes on button press in zoomTool.
function zoomTool_Callback(hObject, eventdata, handles)
zoom('on');

% --- Executes on button press in dataCursorTool.
function dataCursorTool_Callback(hObject, eventdata, handles)
datacursormode on;


% --- Executes on button press in exportDataButton.
function exportDataButton_Callback(hObject, eventdata, handles)
sensitivityStudyParameter = get(handles.sensitivityStudyParameter,'value');
switch sensitivityStudyParameter
    %Case 1: Gas Flow Rate and Corrosion Rate
    case 1
        %corrosionRateMatrixNormalized = getappdata(0, 'corrosionRateMatrixNormalized');
        %gasRateMatrixNormalized = getappdata(0, 'gasRateMatrixNormalized');
        corrosionRateMatrix = getappdata(0, 'corrosionRateMatrix');
        gasRateMatrix = getappdata(0, 'gasRateMatrix');
        originalDataPoint = getappdata(0, 'originalDataPoint');
        %assignin('base', 'corrosionRateMatrixNormalized', corrosionRateMatrixNormalized);
        %assignin('base', 'gasRateMatrixNormalized', gasRateMatrixNormalized);
        assignin('base', 'corrosionRateMatrix', corrosionRateMatrix);
        assignin('base', 'gasRateMatrix', gasRateMatrix);
        assignin('base', 'originalDataPoint', originalDataPoint);
    %Case 2: Temperature, CO2 Fugacity and pH
    case 2
        %Get Appdata
        operatingTemperatureFullArray = getappdata(0, 'operatingTemperatureFullArray');
        operatingPressureFullArray = getappdata(0, 'operatingPressureFullArray');
        co2FugacityFullArray = getappdata(0, 'co2FugacityFullArray');
        pHFullArray = getappdata(0, 'pHFullArray');
        
        %Export to Workspace
        assignin('base', 'operatingTemperatureFullArray', operatingTemperatureFullArray);
        assignin('base', 'operatingPressureFullArray', operatingPressureFullArray);
        assignin('base', 'co2FugacityFullArray', co2FugacityFullArray);
        assignin('base', 'pHFullArray', pHFullArray);
        
end


% --- Executes on button press in threeDRotateToolButton.
function threeDRotateToolButton_Callback(hObject, eventdata, handles)
rotate3d on;



function rangeFactor_Callback(hObject, eventdata, handles)
% hObject    handle to rangeFactor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of rangeFactor as text
%        str2double(get(hObject,'String')) returns contents of rangeFactor as a double


% --- Executes during object creation, after setting all properties.
function rangeFactor_CreateFcn(hObject, eventdata, handles)
% hObject    handle to rangeFactor (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
