%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: 2D plotting
%      VIDEO: Dots
% Instructor: mikexcohen.com
%
%%

% generate 2D data
n = 1000;

% dimension 1 is e^x
data = exp( linspace(-1,3,n) );
data(2, :) = randn(1, n);
% dimension 2 is random ~N(0,1)

figure(1), clf

% use a plot handle to specify options
h = plot(data(1,:), data(2,:));

% have a look at the options to set
get(h)

% use set to make the plot look more interesting
set(h,'marker','p')
set(h, 'LineStyle', 'none', 'MarkerSize', 10, 'MarkerFaceColor', 'r', 'MarkerEdgeColor', 'b')

%% scatter

% basic use
scatter(data(1,:),data(2,:)) %plot(data(1,:), data(2,:), 'o') - you cant specify color for each point


% include marker size and filled
scatter(data(1,:),data(2,:),120,'filled')
scatter(data(1,:),data(2,:),80, log(1:n),'filled')
scatter(data(1,:),data(2,:),80, randn(1,n),'filled')

% include color as 4th option


%%
