function [ St ] = particle_propagate( St,N,V )
%PARTICLE_PROPAGATE particle_propagate:St = ASt_1 + W
%   St:״̬����
%   N :������
%   V :�˶��ٶ�
%   panzhenfu ����������ѧ 2016.1
POSITION_DISTURB = 0.000;%λ���Ŷ�����
VELOCITY_DISTURB = 0.00125;%�ٶ��Ŷ�����
eta = 0.00125;
for i = 1:N,
        R = normrnd(0,1,4,1); %����4��1�ı�׼��̬�ֲ�����
     St(i).vx = R(3)*V(1)*eta + R(3)*VELOCITY_DISTURB; 
    St(i).vy = R(4)*V(2)*eta+ R(4)*VELOCITY_DISTURB;
    St(i).pos(1) = St(i).pos(1) + St(i).vx + R(1)*POSITION_DISTURB;
    St(i).pos(2) = St(i).pos(2) +  St(i).vy + R(2)*POSITION_DISTURB;
    St(i).psr = 0.0;
    St(i).weight = 0.0;
end


end

