%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Time series analysis
%      VIDEO: Convolution
% Instructor: mikexcohen.com
%
%%

% number of time points
n = 10000;

% signal is Brownian motion
signal = cumsum(randn(n, 1));

% kernel is a Gaussian
k = 100;
kernel = exp(-(-k:k) .^2 / k);

% flip the kernel backwards
% kernelB = kernel(end:-1:1);
kernelB = zeros(2*k+1, 1);
for t = 0:length(kernel)-1
    kernelB(t+1) = kernel(2*k+1-t);
end
% plot the kernel
figure(1), clf
subplot(223)
plot(-k:k,kernel,'m','linew',2)
title('Convolution kernel')
xlabel('Time points'), ylabel('Amplitude')


% now for convolution:
convres = zeros(size(signal));
for ti=1+k:n-k
    
    % part of the signal
    littlesig = signal(ti-k:ti+k);
    
    % convolution at this point is the dot product
    convres(ti) = dot(kernelB, littlesig);
end
    
% plot the signal and result of convolution
subplot(211)
plot(1:n,signal, 1:n,convres,'linew',3)
xlabel('Time (a.u.)'), ylabel('Amplitude')
title('Time domain')

%% now in the frequency domain

% FFTs of signal and kernel
nconv = 
sigX = 
krnX = fft(
hz   = linspace(0,1,nconv); % normalized units

% convolution is inverse of multiplied spectra
convres2 = 
convres2 = convres2(k+1:end-k); % cut off "wings"


% plot normalized amplitude spectra
subplot(224)
plot(hz,,'linew',2)
hold on
plot(hz,,'linew',2)
set(gca,'xlim',[0 .2])
legend({'Signal';'Kernel'})
xlabel('Frequency (norm.)'), ylabel('Amplitude (norm.)')
title('Frequency domain')


% plot the result of convolution
subplot(211), hold on
plot
legend({'Signal';'Conv result (time)';'Conv result (freq)'})

%%
