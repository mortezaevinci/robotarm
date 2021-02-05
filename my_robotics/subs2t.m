function out1=subs2c(in1)
%time
t=sym('t','real');

%syms parameters involved
g=sym('g','real');
m1=sym('m1','real');m2=sym('m2','real');m3=sym('m3','real');m4=sym('m4','real');
l1=sym('l1','real');l2=sym('l2','real');l3=sym('l3','real');l4=sym('l4','real');
I1=sym('I1','real');I2=sym('I2','real');I3=sym('I3','real');I4=sym('I4','real');
tau1=sym('tau1','real');tau2=sym('tau2','real');tau3=sym('tau3','real');

%states
x=sym('x(t)'); y=sym('y(t)');
th1=sym('th1(t)');th2=sym('th2(t)');th3=sym('th3(t)');th4=sym('th4(t)');
x_=sym('x_','real');y_=sym('y_','real');
th1_=sym('th1_','real');th2_=sym('th2_','real');th3_=sym('th3_','real');th4_=sym('th4_','real');

%states dot
xdot=sym('xdot(t)'); ydot=sym('ydot(t)');
thdot1=sym('thdot1(t)');thdot2=sym('thdot2(t)');thdot3=sym('thdot3(t)');thdot4=sym('thdot4(t)');
xdot_=sym('xdot_','real');ydot_=sym('ydot_','real');
thdot1_=sym('thdot1_','real');thdot2_=sym('thdot2_','real');thdot3_=sym('thdot3_','real');thdot4_=sym('thdot4_','real');

%states dot dot
xdotdot=sym('xdotdot(t)'); ydotdot=sym('ydotdot(t)');
thdotdot1=sym('thdot1(t)');thdotdot2=sym('thdotdot2(t)');thdotdot3=sym('thdotdot3(t)');thdotdot4=sym('thdotdot4(t)');
xdotdot_=sym('xdotdot_','real');ydotdot_=sym('ydotdot_','real');
thdotdot1_=sym('thdotdot1_','real');thdotdot2_=sym('thdotdot2_','real');thdotdot3_=sym('thdotdot3_','real');thdotdot4_=sym('thdotdot4_','real');


in1=subs(in1,x_,x);
in1=subs(in1,y_,y);
in1=subs(in1,th1_,th1);
in1=subs(in1,th2_,th2);
in1=subs(in1,th3_,th3);
in1=subs(in1,th4_,th4);

in1=subs(in1,xdot_,diff(x,t));
in1=subs(in1,ydot_,diff(y,t));
in1=subs(in1,thdot1_,diff(th1,t));
in1=subs(in1,thdot2_,diff(th2,t));
in1=subs(in1,thdot3_,diff(th3,t));
in1=subs(in1,thdot4_,diff(th4,t));

in1=subs(in1,xdotdot_,diff(x,t,2));
in1=subs(in1,ydotdot_,diff(y,t,2));
in1=subs(in1,thdotdot1_,diff(th1,t,2));
in1=subs(in1,thdotdot2_,diff(th2,t,2));
in1=subs(in1,thdotdot3_,diff(th3,t,2));
in1=subs(in1,thdotdot4_,diff(th4,t,2));

out1=in1;


end