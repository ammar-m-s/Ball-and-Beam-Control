% alpha = 1;
% z=0.0005;
% 

% num = [22.625 22.625*z];
% denom = [1 0.0907 0 0 0];
% system = tf(num,denom);
% rlocus(system);

% %motor o.l
% num = [1];
% denom = [1 0.0907 0];
% system = tf(num,denom);
% rlocus(system);
% %controlled motor o.l
% num = [1 7];
% denom = [1 0.0907+37 0.0907*37 0];
% system = tf(num,denom);
% rlocus(system);

% %open loop with controlled motor
% num = 463*25.625*[1 7];
% denom = [1 36.9 461.76 3232.56 0 0];
% system = tf(num,denom);
% rlocus(system);

%controlled open loop with controlled motor
num = 463*25.625*[1 7.5 3.5];
denom = [1 68.05 1611.2 17616.4 100694 0 0];
system = tf(num,denom);
rlocus(system);