function th=ikinematics(e)

dynamics_4DOF_init

th4=acos(e(1)/sqrt((e(1)^2+e(2)^2)))

rw=e(1)*cos(th4)+e(2)*sin(th4)-l3*cos(e(4));
zw=e(3)-l3*sin(e(4))-l4;

alpha=atan(zw/rw);

betta=acos((l1^2+l2^2-rw^2-zw^2)/2/l1/l2);

th2=-pi+betta

gamma=acos((rw^2+zw^2+l1^2-l2^2)/2/l1/sqrt(zw^2+rw^2));

th1=alpha+gamma

th3=e(4)-th1-th2

if ~isreal(th1)
    th1=0;
end

if ~isreal(th2)
    th2=0;
end

if ~isreal(th3)
    th3=0;
end

if ~isreal(th4)
    th4=0;
end

th=[th1 th2 th3 th4]';

end