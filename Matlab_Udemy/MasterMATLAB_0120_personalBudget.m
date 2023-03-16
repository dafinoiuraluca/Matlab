%% 
%     COURSE: Master MATLAB through guided problem-solving
%    SECTION: Getting started
%      VIDEO: Using MATLAB for a personal budget
% Instructor: mikexcohen.com
%
%%

% monthly income (post-tax)
income = 2500;


% list monthly expenses
rent  = 1200;
utils =  300; % water, electricity, internet, etc.
car   =  250; % gas and insurance
food  =  300; % assuming 75/week
phone =   50; % gotta have unlimited downloads!
retirement = .1 * income; % you should be saving 10% of your income!


% total monthly expenditures
outflow = rent + utils + car + food + phone + retirement;

% amount left over for nonessential expenses
nonessentials = income - outflow;


% how much can you spend per day?
perday = nonessentials / 30;
disp([ 'I can spend ' num2str(perday) ' extra each day.' ])

perweek = nonessentials / (30/7); %you put 30 days in a months, thats why booboo
inThirds = perweek / 3;
disp(['I can spend ' num2str(inThirds*2) ' in the weekend, and ' num2str(inThirds / 5) ' during the week']);

% what if you spend twice as much during the weekend as during the week?


%%
