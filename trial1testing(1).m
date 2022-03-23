clc
close all;
clear

fs=48000;
load('100.mat')
load('122.mat')
load('169.mat')
load('130.mat')
title('DE_TIME')
mesure_normal=X100_DE_time;
Ball=X122_DE_time;
Inner=X169_DE_time;
Outer=X130_DE_time;
t=(0:length(mesure_normal)-1)/fs;
% figure(1);
% plot(t,mesure_normal)

window = 256;
overlap = round(window*0.8);
nfft = 2*window;
[S, F, T] = spectrogram(mesure_normal,window, overlap, nfft, fs);
figure(1)
pkurtosis(S, fs, F, window);
% figure(2)
% kurtogram(mesure_normal,fs);
N = length(mesure_normal);
% t = (0:N-1)/fs; 
figure(3)
subplot(2,1,1)
pspectrum(mesure_normal,fs,'Leakage',1,'FrequencyLimits',[8200,8700]);
subplot(2,1,2)
f1=8000;
f2=9000;

% pspectrum(mesure_normal,fs,'spectrogram','OverlapPercent',0, ...
%     'Leakage',1,'FrequencyLimits',[8000,9000],'TimeResolution', 10e-3)
% pspectrum(Ball,fs,'Leakage',1,'FrequencyLimits',[8000,9000]);
bpFilt = designfilt('bandpassfir', 'FilterOrder', 200, ...
             'CutoffFrequency1', f1, 'CutoffFrequency2', f2,...
             'SampleRate', fs);

sigfilt= filter(bpFilt,mesure_normal)  ;
fl1 = 1024;
[up1,lo1] = envelope(sigfilt,fl1,'analytic');
% fl2 = 30;
% [up2,lo2] = envelope(x,fl2,'analytic');
param_small = {'Color',[0.9 0.4 0.1],'Linewidth',2};
figure
plot(t,sigfilt)
hold on
p1 = plot(t,up1,param_small{:});
plot(t,lo1,param_small{:});

hold off
title('Analytic Envelope')
envspectrum(mesure_normal,fs);
figure
plot(sigf)