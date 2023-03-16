%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Calculus and differential equations
%      VIDEO: Plotting functions with symbolic toolbox
% Instructor: mikexcohen.com
%
%%

%% using ezplot

figure(1), clf

fx = '10*sin(x) + tan(x/2)/10';
h = ezplot(fx);
set(h,'linew',2)

%% using fplot

fy = @(y) 10*sin(y) + tan(y/2)/10;
figure(2), clf
h = fplot(fy, [-15, 5] )
set(h,'linew',2)

%% plotting implicit functions

% define function as anonymous
fts = @(s, r, t) 2.^(t.*s) + r.*s - t.*s.^(1/3);

figure(4), clf
% also a nice one: cardioid-inspired function
%fts = @(t,a,b) 2*a.*(1-cos(t))+abs(b);

h = fimplicit3(fts);
rotate3d on, axis image
set(h,'linestyle','none')

%% polar plot

% cardioid as anonymous function
cardioid = @(t) 2*(1-cos(t));
figure(5), clf
h = ezpolar(cardioid);
set(h,'linew',2,'color','r')

%%
