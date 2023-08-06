% Parameters
Omega_c = pi/4; % Cut-off frequency

% Filter orders
N_values = [21, 121];

% Initialize figure
figure;

% Loop over filter orders
for i = 1:length(N_values)
    N = N_values(i); % Current filter order
    K = (N-1)/2; % Half of filter order

    % Calculate Fourier coefficients of ideal low-pass filter
    hI = Omega_c/pi * sinc((-K:K)*Omega_c/pi);

    % Calculate frequency response
    H = fft(hI, 512); % 512-point FFT
    H = fftshift(H); % Shift zero frequency to center
    H = abs(H); % Amplitude response

    % Frequency vector for plotting
    f = (-256:255)/512; % Normalized frequency

    % Plot amplitude response
    plot(f, H);
    hold on;
end

% Add title, labels, and legend
title('Amplitude Responses of Truncated Ideal Low-pass Filters');
xlabel('Normalized Frequency');
ylabel('Amplitude');A
legend('N=21', 'N=121');
grid on;
