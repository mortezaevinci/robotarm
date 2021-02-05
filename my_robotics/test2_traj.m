clc
coor{1}=[0 0 .3 -.4 .10 -1.3 .15 .15];
coor{2}=[0 2 -5 -8 -11 -14];
coor{3}=[0 2 6 8 12 14];
n=[0 20 200 300 400 500 600 620];
Ts=.01;

[t,traj]=bendtraj(coor{1},n,Ts);
traj
plot(traj{1},traj{3})