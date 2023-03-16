%%
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: 2D plotting
%      VIDEO: Histograms
% Instructor: mikexcohen.com
%
%%

% number of data points
n = 1000;

% number of histogram bins
k = 40;

% generate log-normal distribution
r = randn(n,1);
data = exp( r/2 );


figure(1), clf

% one way to show a histogram
histogram(data, k)

% another option
[y,x] = hist(data, k); %dont use hist
plot(x,y,'s-','linew',2,'markersize',16,'markerfacecolor','g')
xlabel('Value')
ylabel('Count')

%% try the Freedman-Diaconis rule

r = 2*iqr(data)*n^(-1/3);
b = ceil( (max(data) - min(data))/r );

histogram(data,b, 'BinMethod','fd')
xlabel('Value'), ylabel('Count')
title([ 'F-D "rule" using ' num2str(b) ' bins' ])

%% movie showing histograms with increasing bins

bins2try = round( linspace( 5, n/2, 30) );

h = plot(x,y,'s-','linew',2,'markersize',16,'markerfacecolor','g');
xlabel('Value'), ylabel('Count')

for bini=1:length(bins2try)
    % use hist to get histogram graph data for this bin count
    [y,x] = hist(data,bins2try(bini));
    
    % update xdata and ydata
    set(h, 'XData', x, ...
        'YData', y);
    
    % update title
    title([ 'Histrogram with ' num2str(bins2try(bini)) 'bins.'])
    pause(.5)
end    

%%
