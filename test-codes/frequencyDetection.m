clear all; clc;

fs = 44100;
duration = 2;
f = 440;
t = 0:1/fs:(duration - 1/fs);

A = 1;
nharms = 4;
p = 1.5; % Exponent for amplitude decay

signal = A * sin(2 * pi * f * t); % Fundamental
for k = 2:(nharms+1)
    signal = signal + A / (k^p) * sin(2 * pi * k * f * t);
end

sound(signal, fs);
noteIdentification(signal, fs);

% fs = 44100;
% frameLength = 2^nextpow2(fs);
% hopSize = frameLength / 4;
% 
% audioBuffer = zeros(frameLength, 1);
% deviceReader = audioDeviceReader('SampleRate', fs, 'SamplesPerFrame', hopSize);
% 
% while true
%     audioframe = deviceReader();
%     audioBuffer(1:end-hopSize) = audioBuffer(hopSize+1:end);
%     audioBuffer(end-hopSize+1:end) = audioframe;
% 
%     if rms(audioBuffer) > 0.01
%         noteIdentification(audioBuffer, fs)
%     end
% end