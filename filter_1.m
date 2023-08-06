fs = 48e3; % sampling frequency
f1 = 439;  % fpass 1
f2 = 441;  % fpass 2

[z,p,k] = butter(2, [2*f1/fs 2*f2/fs], 'bandpass');
sos = zp2sos(z,p,k);

[h, f] = freqz(sos,2^16,fs);

figure
subplot 211
yyaxis left
plot(f/1000, 10*log10(abs(h)));
grid on
ylabel('Magnitude (Hz)')
yyaxis right
ylabel('Phase (degrees)')
plot(f/1000, 180/pi*angle(h));
xlabel('frequency (kHz)')

subplot 212
yyaxis left
plot(f, 10*log10(abs(h)));
grid on
ylabel('Magnitude (Hz)')
yyaxis right
ylabel('Phase (degrees)')
plot(f, 180/pi*angle(h));
xlabel('frequency (Hz)')
xlim([380, 500])