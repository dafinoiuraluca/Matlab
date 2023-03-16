%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Command statements
%      VIDEO: Random count-down timer (Poisson-like)
% Instructor: mikexcohen.com
%
%%

% set threshold
thresh = exp(-10);

% initialize initial value
[currval,startval] = deal( 10 );

%number of repetitions
nRep = 100;

% decay process
decayvar = nan(nRep,1000); %nan instead of zeros bc we dont know the length of the vector

for repi = 1:nRep
% stay in loop as long as needed
while currval>thresh
    
    %reset the current value to be the start value
    currval = startval;

    %reset the counter
    counter = 0;

    % increase counter
    counter = counter + 1;
    
     % update decay variable
    decayvar(counter+1) = currval;

    % decrease target by random fraction ([0 1])
    currval = currval * rand^(1/2);
    
end 
end

decayvarAve = zeros(1, size(decayvar, 2));
%without the stats toolbox
for i = 1:size(decayvar, 2)
    decayvarAve = mean(decayvar(isfinite(decayvar(:, i)), i));
end
% plot the results
figure(1), clf
plot(nanmean(decayvar, 1),'ks-','linew',2,'markersize',15,'markerfacecolor','w')
xlabel('Iterations'), ylabel('Value')
title([ num2str(counter) ' iterations until threshold' ])

%%
