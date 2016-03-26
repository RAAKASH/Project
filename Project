 l1 = [81;100;48;81]; % Main data
 l2 = [81;48;100;81]; % Main data
%  l1 = [8;10;5;8];
%  l2 = [8;5;10;8];
 %l1 = [4;10;3;4];
 %l2 = [4;3;10;4];


t = 0;

[ B1,C1,f1,A1,D1 ] = Datacompiler( l1,t ) ;
[ B2,C2,f2,A2,D2 ] = Datacompiler( l2,t ) ;
[b2]=Branch(l2,B2);           % Finds other branches
[b1]=Branch(l1,B1);
%%  
alpha = 5;
x = 1;
y = 2;
J = 5;
B1 =b1*pi/180;
B2 =b2*pi/180;


%% Data compiler

A = [0,0,0,0];
f=0;
t2 = [0,30,50,30]*pi /180;

for i = 1:length(B1(:,1) )

 [t2,f] = NewtonRaphson2( l1 ,B1(i,:),l2,t2 );
    
if(f==0)
A (i,:) = t2;
else
 A(i,:) = [0,0,0,0];
fprintf('broke!!!!!!! at %d',i);
t2 = t2*180/pi;
t2 = mod(t2,360);
t2 = t2*pi/180;
t2(1) =0;
end

end
A = A*180/pi;
A= mod(A,360);

fprintf('I am in data compiler \n');

%%  CROSS CHECK ,Further analysis   
  A =A*pi/180;
  y =(- l2(2)*sin(A(:,2)+pi/2)+l1(2)*sin(B1(:,2)+pi/2));





