clc

%get the info from lagrange_solver_4DOF copy-pasted
dynamics_4DOF_init


%Ghat=simplify(Mmat^-1*G)
%Vhat=simplify(Mmat^-1*V)

%initial states;
%states=[th1_ th2_ th3_ th4_ thdot1_ thdot2_ thdot3_ thdot4_]';
init=[pi/6 pi/12 pi/12 pi/3 0 0 0 0]';
%tau=[tau1 tau2 tau3 tau4]';

edesired=[0.25 0.25 0.25 pi/4]';

states0=init;
    kinematics_4DOF_fun
%do in loop

cnt=0;

while (1>.1)
    th1_=states0(1);th2_=states0(2);th3_=states0(3);th4_=states0(4);
    thdot1_=states0(5);thdot2_=states0(6);thdot3_=states0(7);thdot4_=states0(8);
    cnt=cnt+1;
%draw
%kinematics_4DOF_fun


dynamics_4DOF_loop_resolvedmotionrate

if mod(cnt,10)==0
    hold on
    kinematics_4DOF_fun
    hold off
pause (Ts)
end
end