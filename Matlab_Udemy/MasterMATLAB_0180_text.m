%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Vectors and variables
%      VIDEO: Working with text (characters and strings)
% Instructor: mikexcohen.com
%
%%

wholetext = 'Hello my name is Raluca and I like green.';

% separate into a cell array based on spaces
wordsep = regexp(wholetext, ' ', 'split');

% remove any words with exactly 4 characters
numchars   = cellfun(@length, wordsep);
% use logical indexing - true for words different from 4
words2keep = numchars ~= 4;
wordsep2 = wordsep(words2keep);

% replace 'Mike' with your name and 'purple' with your favorite color
targname  = 'Raluca';
targcolor = 'green';

s1 = strfind(wholetext, targname);
s2 = strfind(wholetext, targcolor);

%concatenation
newtext = [ wholetext(1:(s1-1)) 'Robert' wholetext((s1 + length(targname)):(s2 - 1)) 'red' ...
    wholetext((s2 + length(targcolor)) : end)];
%%
