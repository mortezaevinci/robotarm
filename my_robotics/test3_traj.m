clc
coor{1}=[0 5 -4 10 -13 15 0 0 0 0 0 0];
coor{2}=[0 2 -5 -8 -11 -14 0 0 0 0 0 0];
coor{3}=[0 2 6 8 12 14 0 0 0 0 0 0];
n=[0 100 200 300 400 500 600 601 602 603 604 605];
Ts=.01;

[t,traj]=trajectorygen4567(coor,n,Ts);
traj
plot((traj{1}))