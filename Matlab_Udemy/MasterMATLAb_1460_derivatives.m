%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Calculus and differential equations
%      VIDEO: Function derivatives
% Instructor: mikexcohen.com
%
%%

% compute derivative of symbolic equation sin(x)
syms x
f  = sin(x);
df = diff(f);

% plot the function and its derivative
figure(1), clf
subplot(211)
fplot(f), hold on
fplot(df), hold on
% make the legend
legend({[ 'f(x) = ' char(f) ],[ 'df = ' char(df) ]})


% evaluate the function and derivative at a specified point
a = pi/3;
subs(f, a)
subs(df, a)



% now the same thing with numeric variables
t  = -5:.001:5;
q  = sint(t);
dq = diff(q);
subplot(212)
plot(t, q), hold on
plot(t, dq), hold on
legend({'f(q)','dq'})

%% a more difficult problem

% the function
f  = exp ( sin(x)^x / (3^x*cos(x)))

% its derivative
df = diff(f);

% make it look nicer
pretty(df)

% and plot everything
figure(2), clf
fplot(f,'linew',2), hold on
fplot(df,'linew',2)
legend({'f(x)';'df'})
set(gca,'ylim',[-300 300])

%%
