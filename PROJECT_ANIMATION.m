% Project Animation.
for i=1:length(J)
v(i)= find(J(1,:)==min(J(1,:)));

end
>> PROJECT_ANIMATION


for i = 1:length(B2(:,1) )
    [ d ] = Plot( l1,B1(j,:));
    axis([-100 200  -500 500]);
    hold on;
X = [0,l1(2)*cos(B1(j,2)+pi/2)];
Y = [0,l1(2)*sin(B1(j,2)+pi/2)];
plot(X,Y,'r-o');
hold on;
X1 =[l1(2)*cos(B1(j,2)+pi/2),l1(2)*cos(B1(j,2)+pi/2)- l2(2)*cos(B2(v(i),2)+pi/2)];
Y1 =[l1(2)*sin(B1(j,2)+pi/2),l1(2)*sin(B1(j,2)+pi/2)- l2(2)*sin(B2(v(i),2)+pi/2)];
plot(X1,Y1,'r-o');
x = [x,x+l2(2)*cos(B2(v(i),2)),x+l2(2)*cos(B2(v(i),2))+l2(3)*cos(B2(v(i),3)),x+l2(1),x];
y = [y,y+l2(2)*sin(B2(v(i),2)),y+l2(4)*sin(B2(v(i),4)),y,y];
g = max(l2);
plot(x,y,'r-o');
 pause(0);
 hold off;
end
