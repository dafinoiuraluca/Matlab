%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Translate formulas into code
%      VIDEO: Trig functions and Gaussians
% Instructor: mikexcohen.com
%
%%

% sine wave parameters
time = 0:.01:4*pi;
ampl = 3;
phas = pi/3;
frex = 1;

% compute sine wave
% wave = ampl * sin(2*pi*frex*time + phas);

% compute cosine
% wave = ampl * cos(2*pi*frex*time + phas);

% % compute tangent
trigf = ampl * tan(2*pi*frex*time + phas);


% plot
figure(1), clf
plot(time,wave,'s-', 'linew' ,2)
xlabel('Time (rad.)')
ylabel('Amplitude')
set(gca,'xtick',0:pi/2:time(end),'fontsize',15)

%% Gaussian

% parameters 
x    = 0:.1:10; % x-axis coordinates
ampl = 3;       % amplitude
cent = 5;       % center of peak
width = .01;      % width of Gaussian

% define numerator and denominator of exponential
num = -(x - cent) .^ 2;
den = 2*width^2;

% the Gaussian.
gaus = ampl * exp(num ./ den);

% and plot.
figure(2), clf
plot(x,gaus,'linew',2)
xlabel('X'), ylabel('Y')

%% bonus: Gaussian-tapered tangent

%list some parameters of the simulation
fs   = 8000; % Hz - sampling rate
time = 0:1/fs:3-1/fs;
ampl = 3;
cent = 1.5;
widt = .3;

num = -(time - cent).^2;
den = 2*widt^2;

% Gaussian
gaus = ampl* exp(num / den);

% Tangent function
trigf = tan(2*pi*time*2);
% combine into one signal
wave = trigf .* gaus;

figure(3), clf
plot(time,wave, 'k','linew',2)

%%
