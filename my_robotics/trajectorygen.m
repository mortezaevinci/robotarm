function [t,traj]=trajectorygen(coor,v,n,Ts)
    %t=n*Ts;
    
    % v=0;
    
    t=n(1)*Ts:Ts:(n(end)+size(n)+3)*Ts;
  
 
      traj=[];
    %v=0;
    for i=1:numel(n)-1
       %create multi-variable equations
         t0=n(i)*Ts;
       t1=n(i+1)*Ts;
       x0=coor(i);
       x1=coor(i+1);
       
        
       
       A=[[1 t0 t0^2 t0^3];
          [0 1  2*t0 3*t0^2];
          [0 1  2*t1 3*t1^2];
          [1 t1 t1^2 t1^3]];
       B=[x0; v(i);v(i+1); x1];
       
              
      
           
      
       aa=(A)^-1*B;
       
       traj=[traj aa(1).*ones(size(t0:Ts:t1))+aa(2).*(t0:Ts:t1)+aa(3).*(t0:Ts:t1).^2+aa(4).*(t0:Ts:t1).^3];
       %a=2*aa(3)+6*aa(4)*t1;
       %v=aa(2)+2*aa(3)*t1+3*aa(4)*t1^2;    

    
    end

end