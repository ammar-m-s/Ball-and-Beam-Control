% Parameters
Rm = 8.4;           % Terminal resistance (Ohm)
Lm = 1.16e-3;       % Inductance (H)
Km = 0.042;         % Torque constant (N-m/A)
Jm = 4.0e-6;        % Rotor inertia (kg-m^2)
b = 6.888e-5;           % Estimated viscous friction (N-m-s)
Jh=0.6e-6;
Jbeamball=0.01071;
% Ball and Beam Parameters
mb = 0.0305;        % Ball mass (kg)
rb = 0.02;          % Ball radius (m)
Lb = 0.5;           % Beam length (m)

% Motor Transfer Function
num_motor = Km; % Numerator
den_motor = [(Jm+Jh+Jbeamball)*Rm, b*Rm + Km^2,0]; % Denominator
P_motor = tf(num_motor, den_motor);

% Ball and Beam Transfer Function (linearized)
g = 9.81; % Gravity (m/s^2)
num_bb = mb*g*rb;
den_bb = [(Jm+Jh+Jbeamball)*(Lb)/(Rm^2)+mb*Lb, 0, 0]; % Approximate from physics
P_bb = tf(num_bb, den_bb);

% Open-Loop Transfer Function
G = P_motor * P_bb;

% Step Response of Open-Loop System
figure;
step(G);
title('Open-Loop Step Response');
grid on;
grid on;
figure;
rlocus(G);