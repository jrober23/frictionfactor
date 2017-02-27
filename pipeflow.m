function [v, q] =pipeflow
%
format short g
clear all
clc
%help pipeflow
fprintf('Would you like to see a diagram of the average velocity?\n')
showdiag= input('(1)yes (2)no >');
if showdiag==1
    
    openfig('Fig1.fig','new')
    fprintf ('\nSee Figure 1 in window, V is the average velocity (area under parabola).\n\n')
end
%
Plosscount=1; % this initializes the pipe losses vector
Klosscount=1; % this initializes the fitting losses vector

while anotherloss==1
    type= input('Is your loss a pipe or fitting (1)pipe (2)fitting >');
    switch type;
        %%%%%%%%%%pipes%%%%%%%%
        case 1
            D(Plosscount)=input()
    end
end
end