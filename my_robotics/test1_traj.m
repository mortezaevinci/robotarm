clc
coor{1}=[0 5 -4 10 -13 15];
vx=[0 8 10 12 10 0];
coor{2}=[0 2 -5 -8 -11 -14];
coor{3}=[0 2 6 8 12 14];
n=[0 100 200 300 400 500];
Ts=.01;

[t,traj]=trajectorygen(coor{2},vx,n,Ts);
traj
plot(traj)