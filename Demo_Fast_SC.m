clear
close all
L = 1e5;
x = randn(L,1);
x = x.*(1 + sin(2*pi*(0:L-1)'/100));

% Analysis parameters to be fixed by the user
% ===========================================
Fs = 1;             % sampling frequency
Nw = 2^7;           % window length
alpha_max = .03;     % maximum cyclic frequency to scan (in Hz)
opt.coh = 1;         % compute sepctral coherence? (yes=1, no=0)


[S,alpha,f,Nv] = Fast_SC(x,Nw,alpha_max,Fs,opt);


figure,subplot(211)
imagesc(alpha(2:end),f,abs(S(:,2:end)));axis xy,colorbar
xlabel('cyclic frequency \alpha (Hz)'),ylabel('f (Hz)'),
xlim([0 alpha_max])

screen_resolution = 1080;
Na = length(alpha);
N = round(Na/screen_resolution);
w = hamming(2*N+1);
if N > 1
    Smooth = zeros(Nw/2+1,Na);
    for k = 1:Nw/2+1
        Smooth(k,:) = conv(abs([0 S(k,2:end)]),w,'same');
    end
end

subplot(212)
imagesc(alpha(2:end),f,Smooth);axis xy,colorbar
xlabel('cyclic frequency \alpha (Hz)'),ylabel('f (Hz)'),
xlim([0 alpha_max])