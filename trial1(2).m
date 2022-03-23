clc
close all;
clear all;

fs=48000;
load('100.mat')
title('DE_TIME')
mesure_normal=X100_DE_time;
t=(0:length(mesure_normal)-1)/fs;
plot(t,mesure_normal)
% f1=8100;
% f2=8700;
% figure(1)
% spectrogram(mesure_normal,hamming(256,'periodic'),[],512,fs,'yaxis')
% bpFilt = designfilt('bandpassfir', 'FilterOrder', 200, ...
%              'CutoffFrequency1', f1, 'CutoffFrequency2', f2,...
%              'SampleRate', fs);
% sigfilt= filter(bpFilt,mesure_normal)   
% [U,~] = envelope(sigfilt,50,'analytic');
% figure
% plot(t,sigfilt)
% title('signal filtered')



figure(1);
% fs=48000;
% v1=spectrum.welch('hamming',length(mesure_normal),50);%% Hs = spectrum.welch(WindowName,SegmentLength,OverlapPercent)
% w1=psd(v1,mesure_normal,'Fs',fs);
% v2=spectrum.welch('hamming',4096,50);
% w2=periodogram(mesure_normal,[],256,fs,'power','reassigned');
window = 256;
    overlap = round(window*0.8);
    nfft = 2*window;
[S, F, T] = spectrogram(mesure_normal,window, overlap, nfft, fs);
figure(2)
pkurtosis(S, fs, F, window);
figure(3)
kurtogram(mesure_normal,fs)%% Hs = spectrum.welch(WindowName,SegmentLength,OverlapPercent)
% w2=psd(v2,mesure_normal,'Fs',fs);
% v3=spectrum.welch('hamming',100,50);%% Hs = spectrum.welch(WindowName,SegmentLength,OverlapPercent)
% w3=psd(v3,mesure_normal,'Fs',fs);
% v4=spectrum.welch('hamming',10,50);%% Hs = spectrum.welch(WindowName,SegmentLength,OverlapPercent)
% w4=psd(v4,mesure_normal,'Fs',fs);
% fs=12000;
% f1=8100;
% f2=8700;
% figure(1)
% s=spectrogram(mesure_normal,hamming(256,'periodic'),[],512,fs,'yaxis');
% bpFilt = designfilt('bandpassfir', 'FilterOrder', 200, ...
%              'CutoffFrequency1', f1, 'CutoffFrequency2', f2,...
%              'SampleRate', fs);
%          sigfilt= filter(bpFilt,mesure_normal)   
% [U,~] = envelope(sigfilt,50,'analytic');
% figure
% plot(t,sigfilt)

% figure(2)
% title('hamming window over 50%');
% subplot(2,2,1);
% plot(w1)
% title('hamming length');
% subplot(2,2,2);
% plot(w2);
% title('hamming 4096');
% subplot(2,2,3);
% plot(w3);
% title('hamming 100');
% subplot(2,2,4);
% plot(w4);
% title('hamming 10');


% hilberdtransform=hilbert(sigfilt)
% figure(3)
% title('real part of the hilbert transform')
% 
% plot(t,real(hilberdtransform))
% figure(4)
% title('imaginair part of the signal')
% plot(t,imag(hilberdtransform))
% 
% %legend('Real Part','Imaginary Part')
% %analytic signal
% sigana=sigfilt+i*(hilberdtransform);
% figure
% 
% plot(t,sigana)
% [ lower,upper] = envelope(abs(sigana));
% hold on
% plot(t,lower,t,upper,'linewidth',1.5)
% legend('upper')
% hold off
% 
% 
% figure
% 
% plot(t,envelope(sigfilt),t,-envelope(sigfilt))
% 
% title('dgsgxsw')