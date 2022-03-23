close all
clear all
clc
load('100.mat');
mesure_normal=X100_DE_time(:,1);
load('122.mat');
mesure_B007_3=X122_DE_time(:,1);
% load('169.mat');
% mesure_IR007_3=X169_DE_time(:,1);
% load('130.mat');
% mesure_OR007_3=X130_DE_time(:,1);
fs=48000;

v1=spectrum.welch('hamming',100,50);%% Hs = spectrum.welch(WindowName,SegmentLength,OverlapPercent)
w1=psd(v1,mesure_normal,'Fs',fs);
v2=spectrum.welch('hamming',100,50);%% Hs = spectrum.welch(WindowName,SegmentLength,OverlapPercent)
w2=psd(v2,mesure_B007_3,'Fs',fs);
figure(1)
plot(w1)
figure(2)
plot(w2)