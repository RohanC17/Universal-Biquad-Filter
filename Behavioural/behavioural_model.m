clc
clear all
close all
 
% Defining parameters
H0 = 1; % low frequency gain
omega0 = 1000; % cut-off frequency (rad/s)
Q = 2.95; % Quality factor

% LPF Transfer Function
num_LPF = [H0];
den_LPF = [1/(omega0^2) (1/(omega0*Q)) 1];
LPF = tf(num_LPF, den_LPF);

% % HPF Transfer Function
 num_HPF = [H0/(omega0^2) 0 0];
 den_HPF = [1/(omega0^2) (1/(omega0*Q)) 1];
 HPF = tf(num_HPF, den_HPF);

% BPF Transfer Function
num_BPF = [-H0/omega0 0];
den_BPF = [1/(omega0^2) (1/(omega0*Q)) 1];
BPF = tf(num_BPF, den_BPF);

% BSF Transfer Function
num_BSF = [H0/(omega0^2) 0 H0];
den_BSF = [1/(omega0^2) (1/(omega0*Q)) 1];
BSF = tf(num_BSF, den_BSF);

%Poles and zeros
figure;
pzmap(LPF);
title('LPF Poles and Zeros');
grid on;

figure;
pzmap(HPF);
title('HPF Poles and Zeros');
grid on;

figure;
pzmap(BPF);
title('BPF Poles and Zeros');
grid on;

figure;
pzmap(BSF);
title('BSF Poles and Zeros');
grid on;

% Bode diagram
figure;
bode(LPF);
title('LPF Bode Plot');
grid on;

figure;
bode(HPF);
title('HPF Bode Plot');
grid on;

figure;
bode(BPF);
title('BPF Bode Plot');
grid on;

figure;
bode(BSF);
title('BSF Bode Plot');
grid on;

% %Magnitude
% [Magnitude, Phase, Frequency] = bode(LPF);
% Magnitude = squeeze(Magnitude);
% Phase = squeeze(Phase);
% Frequency = squeeze(Frequency);
% save('myFile.mat', 'Magnitude', 'Phase', 'Frequency');
% 
% % Nyquist diagram
% figure;
% nyquist(LPF);
% title('LPF Nyquist Plot');
% grid on;
% 
% figure;
% nyquist(HPF);
% title('HPF Nyquist Plot');
% grid on;
% 
% figure;
% nyquist(BPF);
% title('BPF Nyquist Plot');
% grid on;
% 
% figure;
% nyquist(BSF);
% title('BSF Nyquist Plot');
% grid on;
% 
% % Root-locus diagram
% figure;
% rlocus(LPF);
% title('LPF Root Locus');
% grid on;
% 
% figure;
% rlocus(HPF);
% title('HPF Root Locus');
% grid on;
% 
% figure;
% rlocus(BPF);
% title('BPF Root Locus');
% grid on;
% 
% figure;
% rlocus(BSF);
% title('BSF Root Locus');
% grid on;