% Parameters

% Helium
m = 0.004003 % [kg/mol]
% Argon
m = 0.0399480

% Environment (STP)
T = 273.15 % [K]
p = 10000 % [Pa]

% Global
N = 6.022e23 % [1/mol]
k = 1.381e-23 % [J/K]
h = 6.626e-34
R = k*N

V = (N*k*T)/p
E = (3*k*N*T)/2

S = k*N*(log((V/N) * ((4*pi*m*E)/(3*(h*h)*N)).^(1.5)) + 2.5)
