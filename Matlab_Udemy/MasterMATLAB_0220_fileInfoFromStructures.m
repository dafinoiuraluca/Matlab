%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Vectors and variables
%      VIDEO: File/folder information using structures
% Instructor: mikexcohen.com
%
%%

% get information about all files/folders
everything = dir; % it's called NON-SELECTIVE input => the first file in the current folder will be "." + the second one will be ".."

[everything.isdir]; % tells us if they're are directories
everything.name;

% [] => vector
% {} => cell array

% names of all folders
foldernames = {everything([everything.isdir]).name};

% filename lengths
cellfun(@length,foldernames);

% use selective query to extract filenames with *variable*
somethings = dir('*create*'); % contains this letters
somethings1 = dir('*cr');
somethings2 = dir('cr*');
{somethings.name};

%%
