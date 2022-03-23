% load('122.mat');
% spectre=fftshift(fft(X122_DE_time));
% % specgram(mySpeech,512,Fs,kaiser(500,5),475)
% 
% % bande utile sur 3000 Hz
% figure
% plot(spectre);
%       Fs = 10e3;
%       t = 0:1/Fs:2;
%       x1 = vco(sawtooth(2*pi*t,0.5),[0.1 0.4]*Fs,Fs);
      spectrogram(x1,kaiser(256,5),220,512,48000);
      view(-45,65)
      colormap bone