function [Q_s] = get_MMb1s_Queue (Lambda,batch,a,s)
% Get the embeded probabilities of M/Mb/1/s Qeueueing system
% Usage get_MMb1s_Queue (Input rate, Input batch, Service time, Capacity)
% Example: get_MMb1s_Queue(10,100,2,200)
% Made by Amang (23/Jan/2018)

Q=[];

la=Lambda*a;
b=batch;
s;

syms z;
[z_num, para, condi]= solve(1-(1+la)*z^(b-1)+(la)*z^b==0, z>1, z, 'ReturnConditions', true);

z0=vpa(z_num);
z_i=1/z0;

q_0 = (1-z_i)
sb=s-b;

if (sb>0)
	for i=1:s
		if (i>sb)
			q_i=0;            
		else
			q_i=q_0*(z_i)^i;            
        end
        Q=[Q q_i];
    end
    %'Queue has been generated'
	Q=[Q q_0];
	AI=sum(Q);
    Q_s=Q./AI;
else
	%'Capacity (s) must be larger than Batch size (b).'
    Q_s=[];
end


