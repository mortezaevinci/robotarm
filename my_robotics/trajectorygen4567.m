function [t,traj]=trajectorygen4567(coor,n,Ts)
    %t=n*Ts;
    
    %a=0; v=0;
    
    t=n(1)*Ts:Ts:(n(end))*Ts;
  
    
    for j=1:3
      traj{j}=[];
    v=0;
    a=0;
    for i=1:numel(n)-1
       %create multi-variable equations
         t0=n(i)*Ts;
       t1=n(i+1)*Ts;
       x0=coor{j}(i);
       x1=coor{j}(i+1);
       if i<numel(n)-1
     
       
       A=[[t0^2 t0^3 t0^4 t0^5];
          [2*t0^1 3*t0^2  4*t0^3 5*t0^4];
          [2*t0^0 6*t0^1  12*t0^2 20*t0^3];
          [t1^2 t1^3 t1^4 t1^5]]
       B=[x0; v; a; x1]
       
       
          
     
           
      if det(A)==0
       aa=pinv(A)*B
      else
          aa=A^-1*B
      end
       
       traj{j}=[traj{j} aa(1).*(t0:Ts:(t1-Ts)).^2+aa(2).*(t0:Ts:(t1-Ts)).^3+aa(3).*(t0:Ts:(t1-Ts)).^4+aa(4).*(t0:Ts:(t1-Ts)).^5];
        a=aa(1)*2*t1^0+aa(2)*6*t1^1+aa(3)*12*t1^2+aa(4)*20*t1^3
       v=aa(1)*2*t1^1+aa(2)*3*t1^2+aa(3)*4*t1^3+aa(4)*5*t1^4  
      % aa(1).*(t0).^4+aa(2).*(t0).^5+aa(3).*(t0).^6+aa(4).*(t0).^7
      % aa(1).*((t1-Ts)).^4+aa(2).*((t1-Ts)).^5+aa(3).*((t1-Ts)).^6+aa(4).*((t1-Ts)).^7
    end
   
    
    end
end