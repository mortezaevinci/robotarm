%init

Ts=.02;

j=500*[zeros(1,20) ones(1,10) zeros(1,20) -ones(1,10) zeros(1,15) -ones(1,10) zeros(1,20) +ones(1,10) zeros(1,200)];

a=cumsum(j)*Ts;

v=cumsum(a)*Ts;
x=cumsum(v)*Ts;

t=0:Ts:(numel(j)-1)*Ts;

plot(t,x);

M=1;

B=5;
K=50;

sys1=tf(1,[M B K]);

gc=tf([354.25 88.4],[1 0]);

kp=2547;
kd=5;
kv=0;
ka=1053;
ki=5;
ki2=1542;