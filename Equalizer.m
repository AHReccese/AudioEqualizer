
function varargout = Equalizer(varargin)
% Equalizer MATLAB code for Equalizer.fig
%      Equalizer, by itself, creates a new Equalizer or raises the existing
%      singleton*.
%
%      H = Equalizer returns the handle to a new Equalizer or the handle to
%      the existing singleton*.
%
%      Equalizer('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in Equalizer.M with the given input arguments.
%
%      Equalizer('Property','Value',...) creates a new Equalizer or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Equalizer_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Equalizer_OpeningFcn via varargin.
addpath(genpath('Audio_files'));
addpath(genpath('Functions'));
addpath(genpath('EQ_files'));
addpath(genpath('Modulator_sig'));

gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Equalizer_OpeningFcn, ...
                   'gui_OutputFcn',  @Equalizer_OutputFcn, ...
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


% --- Executes just before Equalizer is made visible.
function Equalizer_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Equalizer (see VARARGIN)

% Choose default command line output for Equalizer
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Equalizer wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = Equalizer_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton1 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider2_Callback(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%



% --- Executes during object creation, after setting all properties.
function slider2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider2 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider3_Callback(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Executes during object creation, after setting all properties.
function slider3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider3 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider4_Callback(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function slider4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider4 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider5_Callback(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function slider5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider5 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider6_Callback(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function slider6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider6 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider7_Callback(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function slider7_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider7 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider8_Callback(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function slider8_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider8 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider9_Callback(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function slider9_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider9 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function slider10_Callback(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Executes during object creation, after setting all properties.
function slider10_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider10 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

[name,fpath]=uigetfile({'*.*','All Files'},...
  'Select Audio');
  p = pwd;
  cd(fpath);
  [handles.y, handles.Fs]=audioread(name);
  cd(p);
  handles.player = audioplayer(handles.y, handles.Fs);
  % apply_Callback(handles.apply, 1, handles);
  plot(handles.axes1, handles.y);
  
  set(handles.pushbutton3,'Enable','on')
  set(handles.pushbutton4,'Enable','on')
  set(handles.load_modulating,'Enable','on')
  set(handles.apply,'Enable','on')
  
  handles.filters = [];
  guidata(hObject, handles);

  
% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
resume(handles.player)


% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

pause(handles.player)



% --- Executes on button press in loadeq.
function loadeq_Callback(hObject, eventdata, handles)
% hObject    handle to loadeq (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

[name,fpath]=uigetfile({'*.eq'},...
  'Select Equalizer File');
  p = pwd;
  cd(fpath);
  data = load(name, 'data', '-ascii');
  cd(p);
  set(handles.slider1, 'value', data(1));
  set(handles.slider2, 'value', data(2));
  set(handles.slider3, 'value', data(3));
  set(handles.slider4, 'value', data(4));
  set(handles.slider5, 'value', data(5));
  set(handles.slider6, 'value', data(6));
  set(handles.slider7, 'value', data(7));
  set(handles.slider8, 'value', data(8));
  set(handles.slider9, 'value', data(9));
  set(handles.slider10,'value', data(10));
  set(handles.slider11,'value', data(11));
  
  set(handles.delay, 'value', data(12));
  
  set(handles.revGain, 'value', data(13));
  
  set(handles.vibratoWidth, 'value', data(14));
  
  set(handles.freq, 'value', data(15));
  
  set(handles.enableReverb, 'value', data(16));
  
  set(handles.enableVib, 'value', data(17));

% --- Executes on button press in saveeq.
function saveeq_Callback(hObject, eventdata, handles)
% hObject    handle to saveeq (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

data = zeros(17, 1);
data(1) = get(handles.slider1, 'value');
data(2) = get(handles.slider2, 'value');
data(3) = get(handles.slider3, 'value');
data(4) = get(handles.slider4, 'value');
data(5) = get(handles.slider5, 'value');
data(6) = get(handles.slider6, 'value');
data(7) = get(handles.slider7, 'value');
data(8) = get(handles.slider8, 'value');
data(9) = get(handles.slider9, 'value');
data(10)= get(handles.slider10,'value');
data(11)= get(handles.slider11,'value');

data(12)= get(handles.delay, 'value');
data(13)= get(handles.revGain, 'value');
data(14)= get(handles.vibratoWidth, 'value');
data(15)= get(handles.freq, 'value');
data(16)= get(handles.enableReverb, 'value');
data(17)= get(handles.enableVib, 'value');

[file,p, index] = uiputfile({'*.eq'});
c = pwd;
cd(p);
save(file, 'data', '-ascii');
cd(c);


% --- Executes on button press in apply.
function apply_Callback(hObject, eventdata, handles)
% hObject    handle to apply (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

set(handles.loading, 'Visible', 'on');
pause(0); % For some reason the loading text only works when the program pauses for 0 seconds...
y = handles.y;
filters = zeros(3, 20);

%% Apply volume
  y = y * get(handles.slider11, 'value');
%% Apply low pass filter to lowest band
  G = (get(handles.slider1, 'value') - 0.5) * 32;
  fcb = 31;
  Q = sqrt(2);
  type = 'LOW_f';
  
  
  [b a] = LOW_HIGH_filt(G, fcb, handles.Fs, Q, type);
  
  filters(:, 1) = b;
  filters(:, 2) = a;
  
  y = filter(b,a, y);
%% Apply band pass filter to band 2
  G = (get(handles.slider2, 'value') - 0.5) * 32;
  fcb = 62;
  Q = sqrt(2);
  
  [b a] = BAND_filt(G, fcb, Q, handles.Fs);
  filters(:, 3) = b;
  filters(:, 4) = a;
  
  y = filter(b,a, y);
%% Apply band pass filter to band 3
  G = (get(handles.slider3, 'value') - 0.5) * 32;
  fcb = 125;
  Q = sqrt(2);
  [b a] = BAND_filt(G, fcb, Q, handles.Fs);
  filters(:, 5) = b;
  filters(:, 6) = a;
  
  y = filter(b,a, y);
%% Apply band pass filter to band 4
  G = (get(handles.slider4, 'value') - 0.5) * 32;
  fcb = 250;
  Q = sqrt(2);
  [b a] = BAND_filt(G, fcb, Q, handles.Fs);
  filters(:, 7) = b;
  filters(:, 8) = a;
  
  y = filter(b,a, y);
%% Apply band pass filter to band 5
  G = (get(handles.slider5, 'value') - 0.5) * 32;
  fcb = 500;
  Q = sqrt(2);
  [b a] = BAND_filt(G, fcb, Q, handles.Fs);
  filters(:, 9) = b;
  filters(:, 10) = a;
  
  y = filter(b,a, y);
%% Apply band pass filter to band 6
  G = (get(handles.slider6, 'value') - 0.5) * 32;
  fcb = 1000;
  Q = sqrt(2);
  [b a] = BAND_filt(G, fcb, Q, handles.Fs);
  filters(:, 11) = b;
  filters(:, 12) = a;
  
  y = filter(b,a, y);
%% Apply band pass filter to band 7
  G = (get(handles.slider7, 'value') - 0.5) * 32;
  fcb = 2000;
  Q = sqrt(2);
  [b a] = BAND_filt(G, fcb, Q, handles.Fs);
  filters(:, 13) = b;
  filters(:, 14) = a;
  
  y = filter(b,a, y);
%% Apply band pass filter to band 8
  G = (get(handles.slider8, 'value') - 0.5) * 32;
  fcb = 4000;
  Q = sqrt(2);
  [b a] = BAND_filt(G, fcb, Q, handles.Fs);
  filters(:, 15) = b;
  filters(:, 16) = a;
  
  y = filter(b,a, y);
%% Apply band pass filter to band 9
  G = (get(handles.slider9, 'value') - 0.5) * 32;
  fcb = 8000;
  Q = sqrt(2);
  [b a] = BAND_filt(G, fcb, Q, handles.Fs);
  filters(:, 17) = b;
  filters(:, 18) = a;
  
  y = filter(b,a, y);
%% Apply band pass filter to highest band
  G = (get(handles.slider10, 'value') - 0.5) * 32;
  fcb = 16000;
  Q = sqrt(2);
  type = 'HIGH_f';
  [b a] = LOW_HIGH_filt(G, fcb, handles.Fs, Q, type);
  filters(:, 19) = b;
  filters(:, 20) = a;
  
y = filter(b,a, y);
%% Apply Changes
  if get(handles.enableReverb, 'Value')
    x = y;
    Fs = handles.Fs;
    % Call Specific_Design reverberation
    %set delay of each parallel filter
    %set delay of each allpass filter in number of samples
    %Compute a random set of milliseconds and use sample rate
    
    rand('state',sum(100*clock))
    
    cd = floor(0.05*rand([1,6])*Fs);
    % set gains of 6 parallel pass filters
    g1 = 0.5*ones(1,6);
    %set feedback of each parallel filter
    g2 = 0.5*ones(1,6);
    % set input cg and cg1 for Specific_Design function see help Specific_Design
    cg = g2./(1-g1);
    cg1 = g1;
    %set gain of allpass filter
    ag = get(handles.revGain, 'value');
    %set delay of allpass filter
    ad = round(get(handles.delay, 'value')*Fs);
    %set direct signal gain
    k = 0.5;
    [y b a] = Specific_Design(x,cg,cg1,cd,ag,ad,k);
  end
  if get(handles.enableVib, 'Value')
      y = vibration(y, handles.Fs, get(handles.freq, 'value'), get(handles.vibratoWidth, 'value'));
  end
  handles.player = audioplayer(y, handles.Fs); 
  plot(handles.axes1, y);
  set(handles.freqResponse,'Enable','on')
  set(handles.combined,'Enable','on')
  handles.filters = filters;
  set(handles.loading, 'Visible', 'off');
  guidata(handles.apply, handles);



% --- Executes on slider movement.
function slider11_Callback(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function slider11_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider11 (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in load_modulating.
function load_modulating_Callback(hObject, eventdata, handles)
% hObject    handle to load_modulating (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

[name,fpath]=uigetfile({'*.*','All Files'},...
  'Select Audio');
  p = pwd;
  cd(fpath);
  [handles.yMod, handles.FsMod]=audioread(name);
  cd(p);
  plot(handles.axes3, handles.yMod);
  set(handles.applyMod,'Enable','on')
  guidata(hObject, handles);
  


% --- Executes on button press in applyMod.
function applyMod_Callback(hObject, eventdata, handles)
% hObject    handle to applyMod (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

set(handles.loading, 'Visible', 'on');
pause(0);
%% Load carrier signal
x = handles.y;
fsx = handles.Fs;
x = x(:, 1);

%% Load modulating signal
y = handles.yMod;
fsy = handles.FsMod;
y = y(:, 1);

%% make x and y with equal sampling rate
fs = max(fsx, fsy);
if fsx > fsy
    y = resample(y, fsx, fsy);
else
    x = resample(x, fsy, fsx);
end
%% make x and y with equal length
xlen = length(x);
ylen = length(y);
if xlen > ylen
    x = x(1:ylen);
else
    y = y(1:xlen);
end
%% define the analysis and synthesis parameters
wlen = 1024;
hop = wlen/4;
nfft = wlen;
%% perform time-frequency analysis

[X_stft, f] = stft(x, wlen, hop, nfft, fs);
[Y_stft, ~] = stft(y, wlen, hop, nfft, fs);

%% memory optimization
clear x y
%% extract spectral envelope of the carrier signal
X_stft_amp = abs(X_stft);
for k = 1:size(X_stft_amp, 2)
    X_env(:, k) = specenv(X_stft_amp(:, k), f);
end
%% extract spectral envelope of the modulating signal
Y_stft_amp = abs(Y_stft);
for k = 1:size(Y_stft_amp, 2)
    Y_env(:, k) = specenv(Y_stft_amp(:, k), f);
end
%% memory optimization
clear X_stft_amp Y_stft_amp Y_stft
%% cross-synthesis
Z_stft = X_stft./X_env.*Y_env;
z = rot90(istft(Z_stft, wlen, hop, nfft, fs), 3);
%% memory optimization
clear X_stft Z_stft X_env Y_env
set(handles.loading, 'Visible', 'off');
pause(0);

handles.playerMod = audioplayer(z, fs); 
handles.z = z;
handles.zfs = fs;
plot(handles.axes2, z);
set(handles.playMod,'Enable','on')
set(handles.pauseMod,'Enable','on')
set(handles.loadToEq,'Enable','on')
guidata(hObject, handles);


% --- Executes on button press in playMod.
function playMod_Callback(hObject, eventdata, handles)
% hObject    handle to playMod (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

resume(handles.playerMod)

% --- Executes on button press in pauseMod.
function pauseMod_Callback(hObject, eventdata, handles)
% hObject    handle to pauseMod (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
pause(handles.playerMod)

% --- Executes on button press in saveMod.
function saveMod_Callback(hObject, eventdata, handles)
% hObject    handle to saveMod (see GCBO)
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in freqResponse.
function freqResponse_Callback(hObject, eventdata, handles)
% hObject    handle to freqResponse (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
filters = handles.filters;
h = fvtool(filters(:, 1), filters(:, 2),...
         filters(:, 3), filters(:, 4),...
         filters(:, 5), filters(:, 6),...
         filters(:, 7), filters(:, 8),...
         filters(:, 9), filters(:, 10),...
         filters(:, 11), filters(:, 12),...
         filters(:, 13), filters(:, 14),...
         filters(:, 15), filters(:, 16),...
         filters(:, 17), filters(:, 18),...
         filters(:, 19), filters(:, 20));
set(h, 'FrequencyScale', 'Log');
set(h, 'NormalizedFrequency', 'Off');

% --- Executes on slider movement.
function delay_Callback(hObject, eventdata, handles)
% hObject    handle to delay (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


% --- Executes during object creation, after setting all properties.
function delay_CreateFcn(hObject, eventdata, handles)
% hObject    handle to delay (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function revGain_Callback(hObject, eventdata, handles)
% hObject    handle to revGain (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes during object creation, after setting all properties.
function revGain_CreateFcn(hObject, eventdata, handles)
% hObject    handle to revGain (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in enableReverb.
function enableReverb_Callback(hObject, eventdata, handles)
% hObject    handle to enableReverb (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: get(hObject,'Value') returns toggle state of enableReverb%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% --- Executes on button press in combined.
function combined_Callback(hObject, eventdata, handles)
% hObject    handle to combined (see GCBO)% handles    structure with handles and user data (see GUIDATA)
% Based on solution from https://stackoverflow.com/questions/15824401/how-to-combine-filter-coefficients-for-multiple-stop-band-filters-matlab

filters = handles.filters;
H1=dfilt.df2t(filters(:, 1), filters(:, 2));
H2=dfilt.df2t(filters(:, 3), filters(:, 4));
H3=dfilt.df2t(filters(:, 5), filters(:, 6));
H4=dfilt.df2t(filters(:, 7), filters(:, 8));
H5=dfilt.df2t(filters(:, 9), filters(:, 10));
H6=dfilt.df2t(filters(:, 11), filters(:, 12));
H7=dfilt.df2t(filters(:, 13), filters(:, 14));
H8=dfilt.df2t(filters(:, 15), filters(:, 16));
H9=dfilt.df2t(filters(:, 17), filters(:, 18));
H10=dfilt.df2t(filters(:, 19), filters(:, 20));
Hcas=dfilt.cascade(H1,H2,H3,H4,H5,H6,H7,H8,H9,H10);
h = fvtool(Hcas);
set(h, 'FrequencyScale', 'Log');
set(h, 'NormalizedFrequency', 'Off');


% --- Executes on button press in loadToEq.
function loadToEq_Callback(hObject, eventdata, handles)
% hObject    handle to loadToEq (see GCBO)
% handles    structure with handles and user data (see GUIDATA)
handles.y = handles.z;
handles.Fs = handles.zfs;
guidata(hObject, handles);
apply_Callback(hObject, eventdata, handles);


% --- Executes on slider movement.
function vibratoWidth_Callback(hObject, eventdata, handles)
% hObject    handle to vibratoWidth (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider                  %
% get(hObject,'Min') and get(hObject,'Max') to determine range of slider  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%r


% --- Executes during object creation, after setting all properties.
function vibratoWidth_CreateFcn(hObject, eventdata, handles)
% hObject    handle to vibratoWidth (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function freq_Callback(hObject, eventdata, handles)
% hObject    handle to freq (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hints: get(hObject,'Value') returns position of slider%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function freq_CreateFcn(hObject, eventdata, handles)
% hObject    handle to freq (see GCBO)
% handles    empty - handles not created until after all CreateFcns called

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: slider controls usually have a light gray background.%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in enableVib.
function enableVib_Callback(hObject, eventdata, handles)
% hObject    handle to enableVib (see GCBO)
% handles    structure with handles and user data (see GUIDATA)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Hint: get(hObject,'Value') returns toggle state of enableVib%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
