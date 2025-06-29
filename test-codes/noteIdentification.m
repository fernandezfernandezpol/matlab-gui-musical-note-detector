function noteIdentification(audio, fs)

n = 0:88;
fundamentals = 27.5 * 2.^(n / 12); % freq_A0 = 27.5 Hz
notes = {'C', 'C#/Db', 'D', 'D#/Eb', 'E', 'F', ...
        'F#/Gb', 'G', 'G#/Ab', 'A', 'A#/Bb', 'B'};

L = length(audio);
N = 2^nextpow2(L);
% audio = audio(:).*hann(L);
FFT = fft(audio, N);

[~,position] = max(abs(FFT(1:N/2)));
f = (fs / N) * position;
[~, noteIndex] = min(abs(fundamentals - f));

% The displacement is +9 because 'notes' begins with C, while the octaves 
% of a piano begin with A.
octave = floor((noteIndex + 9) / 12);
noteID = notes{mod(noteIndex + 8, 12) + 1};
note = noteID + string(octave);

fprintf('· %s (%.2f Hz)\n', note, f);

end