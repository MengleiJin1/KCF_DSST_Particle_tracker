function [ St ] = particle_init( position,N )
%PARTICLE_INIT particle initial
%   position :the original position of the target
%   targetsz :the size of the target window
%   N        :the number of the particle
%   ���� ����������ѧ 2016
POSITION_DISTURB = 0.00125;%λ���Ŷ�����
VELOCITY_DISTURB = 0.0125;%�ٶ��Ŷ�����
for i = 1:N,
    for j = 1:4,
        R = normrnd(0,1,4,1); %����4��4�ı�׼��̬�ֲ�����
    end
    St(i).pos(1) = position(1) + R(1)*POSITION_DISTURB;
    St(i).pos(2) = position(2) + R(2)*POSITION_DISTURB;
    St(i).vx = 0.0 + R(3)*VELOCITY_DISTURB; 
    St(i).vy = 0.0 + R(4)*VELOCITY_DISTURB;
    St(i).psr = 0.0;
    St(i).weight = 1/N;
end
end

