clc
clear all
close all

l1=1 ;l2=2; l3=.5; l4=.1;

th1=pi/3;th2=-pi/12;; th3=-pi/12; th4=pi/3
states0=[th1 th2 th3 th4];

%inertia
%Ie=diag([I4 I1 I2 I3]);
%Me=diag([m4 m1 m2 m3]);

%positions
Pe=[
    cos(th4)*[0 l4+l1/2*cos(th1) l1*cos(th1)+l2/2*cos(th1+th2) l1*cos(th1)+l2*cos(th1+th2)+l3/2*cos(th1+th2+th3) ];
    sin(th4)*[0 l4+l1/2*cos(th1) l1*cos(th1)+l2/2*cos(th1+th2) l1*cos(th1)+l2*cos(th1+th2)+l3/2*cos(th1+th2+th3) ];
    [l4 l4+l1/2*sin(th1) l4+l1*sin(th1)+l2/2*sin(th1+th2) l4+l1*sin(th1)+l2*sin(th1+th2)+l3/2*sin(th1+th2+th3) ];
    [0 0 0 0];
    ].'

%velocities
%temp=diff(Pe,t);
%Ve=(temp(:,1).^2+temp(:,2).^2+temp(:,3).^2).^0.5

%Ve=subs2t((subs2c(Ve)));

%omege=[sqrt(diff(th1,t)^2+diff(th4,t)^2) sqrt((diff(th1,t)+diff(th2,t))^2+diff(th4,t)^2) sqrt((diff(th1,t)+diff(th2,t)+diff(th3,t))^2+diff(th4,t)^2) diff(th4,t)].'

%forward kinematics
e=[cos(states0(4))*(l1*cos(states0(1))+l2*cos(states0(1)+states0(2))+l3*cos(states0(1)+states0(2)+states0(3)));
   sin(states0(4))*( l1*cos(states0(1))+l2*cos(states0(1)+states0(2))+l3*cos(states0(1)+states0(2)+states0(3)));
    l4+l1*sin(states0(1))+l2*sin(states0(1)+states0(2))+l3*sin(states0(1)+states0(2)+states0(3))
    states0(1)+states0(2)+states0(3)];

x=Pe(:,1);
y=Pe(:,2);
z=Pe(:,3);

plot3(x,y,z,'-o')

axis equal