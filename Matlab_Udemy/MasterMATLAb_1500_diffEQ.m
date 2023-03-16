%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Calculus and differential equations
%      VIDEO: Solving differential equations
% Instructor: mikexcohen.com
%
%%

% state the problem
syms y(t)
eq = diff(y) == exp(-t) - 2*y;

% find the general solution
dsolve( eq )

% find the particular solution, given a specific initial condition
dsolve(eq, y(0) == 2)

%% draw the solutions

% now slope curves
[tt,yy] = meshgrid(linspace(-2,3,30),linspace(-1,2,32));
sol = exp(-tt) - 2*yy;

% now divide by length for normalized vectors
figure(2), clf, hold on
L = sqrt(1+sol.^2); %just a normalization factor
h = quiver(tt,yy,1./L,sol./L,.5);
set(h,'linew',2,'color',[.8 .8 .8])


% specify initial values for the solution y at t=0
initvals = [ 2 1 .75 .5 ];

% draw solution curves for those initial values
h1 = zeros(size(initvals));
for i=1:length(initvals)
    h1(i) = ezplot(dsolve(eq, y(0) == initvals(i)), [min(tt(:)) max(tt(:))])
end

% set axes limits
axis([min(tt(:)) max(tt(:)) min(yy(:)) max(yy(:))])
set(h1,'linew',2)

%%
