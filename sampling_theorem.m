% Define parameters
f = 7; % Frequency of the signal
T = 1/f; % Period of the signal
t = 0:0.001:2; % Time vector for continuous signal
y = sin(2*pi*f*t); % Continuous signal

% Sampling
fs = 2.1*f; % Sampling frequency (Nyquist rate)
Ts = 1/fs; % Sampling period
ts = 0:Ts:2; % Time vector for sampled signal
ys = sin(2*pi*f*ts); % Sampled signal
disp(ys)

% Reconstruction
yr = zeros(size(t)); % Initialize reconstructed signal
for i = 1:length(ts)
    yr = yr + ys(i)*sinc(fs*(t-ts(i))); % Sinc interpolation
end

% Plotting
figure;
subplot(3,1,1);
plot(t, y);
title('Continuous Signal');
subplot(3,1,2);
stem(ts, ys);
title('Sampled Signal');
subplot(3,1,3);
plot(t, yr);
title('Reconstructed Signal');
