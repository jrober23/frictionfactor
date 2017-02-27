function [v, q] =pipeflow
%
format short g
clear all
clc
%help pipeflow
fprintf('Would you like to see a diagram of the average velocity?\n')
showdiag= input('(1)yes (2)no > ');
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
            D(Plosscount)=input('Enter the Diameter of the pipe in centimeters:>');
            L(Plosscount)=input('Enter the length of the pipe in meters:>');
            fprintf('----------------------------------------\n')
            fprintf('(1) Steel        - Roughness = 45.72 nm \n')
            fprintf('(2) Cast Iron    - Roughness = 254.  nm \n')
            fprintf('(3) PVC          - Roughness = 25.0  nm \n')
            fprintf('(4) Copper       - Roughness = 1.524 nm \n')
            fprintf('(5) Glass        - Roughness = .508  nm \n')
            fprintf('----------------------------------------\n')
            n=input('enter the value corresponding to your material :> ')
            fprintf('\n')
            switch n;
                case 1
                    r(Plosscount)=.00004572;
                case 2
                    r(Plosscount)=.000254;
                case 3
                    r(Plosscount)=.000025;
                case 4
                    r(Plosscount)=.000001524;
                case 5
                    r(Plosscount)=.000000508;
                case 6
                    r(Plosscount)=.000508
                otherwise
                    r(Plosscount)=0;%keeps program from crashing
            end
        case 2
            fprintf('------------------------\n')
            fprintf('(1) Gate Valve\n')
            fprintf('(2) Ball Valve\n')
            fprintf('(3) 90 deg elbow\n')
            fprintf('(4) 45 deg elbow\n')
            fprintf('(5) Reducer\n')
            fprintf('(6) Expansion\n')
            fprintf('(7) Tee\n')
            fprintf('------------------------\n')
            n=input('Enter the value corresponding to your fitting :>');
            fprintf('\n')
            switch n;
                case 1
                    K(Klosscount)=8; %Gate Valve
                case 2
                    K(Klosscount)=3; %Ball Valve
                case 3
                    K(Klosscount)=.9; %90 deg elbow
                case 4 
                    K(Klosscount)=.6; %45 deg elbow
                case 5
                    K(Klosscount)=.35; %reducer
                case 6
                    K(Klosscount)=.4; %expansion
                case 7
                    K(Klosscount)=.4; %tee
                otherwise
                    K(Klosscount)=0; %keeps program from crashing but gives garbage data
            end
    end
            
end