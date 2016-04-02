function [ St ] = particle_reselect( St_1,N )
%PARTICLE_RESELECT the particle important reselect
%Ȩֵ��һ��
%���� ����������ѧ 2016
sumpsr = 0;
for i = 1:N,
    sumpsr = sumpsr + St_1(i).psr;
end
for i = 1:N,
    St_1(i).weight = St_1(i).psr/sumpsr;
end
%   Ȩ���ۼ�
cumulateweight(1) = 0;
for i = 1:N,
   cumulateweight(i+1) = cumulateweight(i) + St_1(i).weight;
end
for i = 1:N+1,
    cumulateweight(i) = cumulateweight(i)/cumulateweight(N+1); 
end
   for i = 1:N,
       rum = rand;%�������һ��[0,1]֮����ȷֲ�����
       %���ֲ���
       l = 0;r = N;
       while r>=l
           m = floor((l + r) / 2);
           if (rum >= cumulateweight(m)&& rum<cumulateweight(m+1)),
               break;
           end
           if rum<cumulateweight(m),
              r=m-1;
           else
                l = m+1;
           end
       end
       resampleIndex(i) = m;
   end
    for i = 1:N,
        St(i) = St_1( resampleIndex(i));
    end
end

