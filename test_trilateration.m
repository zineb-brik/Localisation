clear all; 																																																																																																																																																																																																																																																					
%Reference points
P1 =[	34.528	4.145	-17.561]';
P2 =[	9.983	-2.037	20.792]';
P3 =[	-58.927	-4.952	13.863]';
P4 =[	-2.425	23.983	10.158]';
%distances
s1= 26.235;  % distance to P1
s2 = 22.013; % distance to P2
s3= 78.191;% distance to P3
s4= 27.352;
P =[P1 P2 P3 P4]; % Reference points matrix
S = [s1 s2 s3 s4]; % Distance vector
fprintf('\n Trilateration \n');
[N1 N2] = Trilateration([P1 P2 P3 P4],[s1 s2 s3 s4], diag(ones(1,4  )));
%Solutions
Nsol1 = N1(2:4,1);
fprintf('\n Solution: \n');
disp(Nsol1)

