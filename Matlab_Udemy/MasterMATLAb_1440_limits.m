%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Calculus and differential equations
%      VIDEO: Function limits
% Instructor: mikexcohen.com
%
%%

% create symbolic function
syms x
fx = (x-4)^2;

% plot it
figure(1), clf
fplot(fx,[-2 8],'linew',4)

% compute the limit as x->a
a = 3;
lim = limit(fx, x,a);

% plot that limit as red dashed cross-hairs
hold on
plot([1 1]*a, get(gca, 'ylim'), 'r--')
plot(get(gca, 'xlim'), [1 1]*lim,'r--')

%%

figure(2), clf

% define function and plot it
fx = (x^2-25) / (x^2+x-30);
fplot(fx, [-10 10], 'linew', 2)

% limit with no input; how to interpret the output?
limit(fx)
a = 5;
lim5 = limit(fx, a)
% compute limit as x->5


% plot that limit as red-dashed lines
hold on
plot([1 1]*a,get(gca,'ylim'),'r--')
plot(get(gca,'xlim'),[1 1]*lim5,'r--')


% determine what happens as f(x) approaches x=-6 from left and right
limit(fx, x, -6, 'left')
limit(fx, x, -6, 'right')

%%
