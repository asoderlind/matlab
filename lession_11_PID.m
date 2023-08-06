% Lektion
T = 0.206; % Time koeff
c = 10.63;
sqrt(T)

clf

% Input funktion?
P = zpk([], [0 0 -1], 1)

% Proportionell komponent
K_p = 0.2;
% Deriverande komponent
T_D = 3;

% Transfer funtion
K = tf([K_p*T_D K_p], [1])

%C_pd = pid(K_p, 0, T_D)
%T_1 = feedback(C_pd*P, 1);
%step(T_1)

P*K

margin(P*K)