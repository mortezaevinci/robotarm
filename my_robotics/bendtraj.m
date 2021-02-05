function [t,traj]=bendtraj(x,n,Ts)
    t=n(1)*Ts:Ts:n(end)*Ts;
%first and last x points should have zero velocity
    for ii=1:numel(x)-1
       t0=n(ii)*Ts;
       t1=n(ii+1)*Ts;
       
       x0=x(ii);
       x1=x(ii+1);
       
       b(ii)=(x0-x1)/(t0-t1);
       a(ii)=x0-b(ii)*t0;
        
    end
    b(ii+1)=0;
    a(ii+1)=x(ii+1);
    
    for ii=2:numel(x)-1
        t1=n(ii)*Ts;
        a0=a(ii-1);
        a1=a(ii);
        b0=b(ii-1);
        b1=b(ii);
       ad1=1;
       
       d1=1;
       for jj=1:50
         c1=(b1^2-b0^2+2*(b0-b1)*d1)/2/(a0-a1);
         d1=b0-sqrt(b0^2-c1*a0*2+b0^2);
         
         end
       c1
       d1
       t1
      
       tb=t1-(b0-d1)/c1
       tf=(b1-d1)/c1-t1
       
       
    end
end