th1=states0(1);
th2=states0(2);
th3=states0(3);
th4=states0(4);
%inertia
%Ie=diag([I4 I1 I2 I3]);
%Me=diag([m4 m1 m2 m3]);

%positions
Pe=[
    cos(th4)*[0 l1*cos(th1) l1*cos(th1)+l2*cos(th1+th2) l1*cos(th1)+l2*cos(th1+th2)+l3*cos(th1+th2+th3) ];
    sin(th4)*[0 l1*cos(th1) l1*cos(th1)+l2*cos(th1+th2) l1*cos(th1)+l2*cos(th1+th2)+l3*cos(th1+th2+th3) ];
    [l4 l4+l1*sin(th1) l4+l1*sin(th1)+l2*sin(th1+th2) l4+l1*sin(th1)+l2*sin(th1+th2)+l3*sin(th1+th2+th3) ];
    [0 0 0 0];
    ].';

%velocities
%temp=diff(Pe,t);
%Ve=(temp(:,1).^2+temp(:,2).^2+temp(:,3).^2).^0.5

%Ve=subs2t((subs2c(Ve)));

%omege=[sqrt(diff(th1,t)^2+diff(th4,t)^2) sqrt((diff(th1,t)+diff(th2,t))^2+diff(th4,t)^2) sqrt((diff(th1,t)+diff(th2,t)+diff(th3,t))^2+diff(th4,t)^2) diff(th4,t)].'

%forward kinematics
  e=[cos(th4)*(l1*cos(th1)+l2*cos(th1+th2)+l3*cos(th1+th2+th3));
     sin(th4)*( l1*cos(th1)+l2*cos(th1+th2)+l3*cos(th1+th2+th3));
      l4+l1*sin(th1)+l2*sin(th1+th2)+l3*sin(th1+th2+th3)
      th1+th2+th3];


x=Pe(:,1);
y=Pe(:,2);
z=Pe(:,3);

hold on
plot3(x,y,z,'-o','linewidth',3)
hold on
plot3(x,y,zeros(size(z)),'--','linewidth',1)
grid on
sgrid
axis([-l1-l2-l3 l1+l2+l3 -l1-l2-l3 l1+l2+l3 -l1-l2-l3 l1+l2+l3])
%axis equal
view ([5 -5 5])%([0 -5 0])%
%hold off