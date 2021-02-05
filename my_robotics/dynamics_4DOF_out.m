J0=[

[ -cos(th4_)*(l2*sin(th1_ + th2_) + l1*sin(th1_) + l3*sin(th1_ + th2_ + th3_)), -cos(th4_)*(l2*sin(th1_ + th2_) + l3*sin(th1_ + th2_ + th3_)), -l3*sin(th1_ + th2_ + th3_)*cos(th4_), -sin(th4_)*(l2*cos(th1_ + th2_) + l1*cos(th1_) + l3*cos(th1_ + th2_ + th3_))];
[ -sin(th4_)*(l2*sin(th1_ + th2_) + l1*sin(th1_) + l3*sin(th1_ + th2_ + th3_)), -sin(th4_)*(l2*sin(th1_ + th2_) + l3*sin(th1_ + th2_ + th3_)), -l3*sin(th1_ + th2_ + th3_)*sin(th4_),  cos(th4_)*(l2*cos(th1_ + th2_) + l1*cos(th1_) + l3*cos(th1_ + th2_ + th3_))];
[              l2*cos(th1_ + th2_) + l1*cos(th1_) + l3*cos(th1_ + th2_ + th3_),              l2*cos(th1_ + th2_) + l3*cos(th1_ + th2_ + th3_),            l3*cos(th1_ + th2_ + th3_),                                                                            0];
[                                                                            1,                                                             1,                                     1,                                                                            0];
];

Fe_static=(J0^-1).'*Mmat0*tauin; %when position is not changing
[Fe_static Mmat0*tauin]