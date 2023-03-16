%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: 2D plotting
%      VIDEO: Multidimensional data with colored scatter
% Instructor: mikexcohen.com
%
%%

% number of data points
n = 400;

% create a 3D dataset
x = linspace(-1, 1, n);
dim1 = x.^2;% x
dim2 = sin(3*x)% sin(3x)
dim3 = exp(-10*x.^2)% e^-10x^2

% combine data and add some noise (bonus)
y = [ dim1 ; dim2 ; dim3 ]; %+ randn(1,n)/10 to dim3 for noise

figure(1), clf
scatter(y(1,:), y(2,:), 50,y(3,:), 'filled')

% dimension labels
xlabel('y_1'), ylabel('y_2'), legend('y_3')

%%
