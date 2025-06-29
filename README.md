# MATLAB GUI Musical Note Detector

> [!WARNING]
> This GUI is still a work in progress. Base codes ([/test-codes](./test-codes)) have been tested and proven to work properly with pure signals (code-generated), although recorded sounds via microphone are still not well discriminated. This may be caused by low-quality sound capture capability of my devices, but most likely due to signal noise.
>
> **Future solutions I plan to test:**
> - Select a set of high amplitude frequencies and filter instead.
> - Implement Autocorrelation algorithms.
> - Implement YIN algorithms.

## Description

**MATLAB GUI Musical Note Detector** is an interactive application developed in MATLAB for real-time musical note detection from audio signals. The project includes a graphical user interface (GUI) designed for both educational and experimental purposes in audio signal processing. The application can identify musical notes from synthesized signals and, to some extent, from microphone input.

The system is ideal for learning about frequency analysis, musical note identification, and the fundamentals of digital signal processing applied to music.

## Characteristics

- **Real-time note detection:** Identifies musical notes from incoming audio, either generated in MATLAB or recorded via microphone (with limitations).
- **Graphical User Interface:** User-friendly GUI built using MATLAB App Designer, allowing control of audio capture and visualization.
- **Frequency spectrum visualization:** Displays both the audio waveform and its frequency spectrum (FFT) in real-time.
- **RMS Audio Meter:** Shows the signal level to help monitor input activity.
- **Fundamental and harmonics:** Test codes allow creation of signals with adjustable fundamental and harmonic content for validation.
- **Extensible:** The code is modular and can be adapted to include more advanced pitch detection algorithms.

> [!NOTE]
> **INSTALLATION REQUIREMENTS**
> - MATLAB R2022a or higher
> - Signal Processing Toolbox
> - Audio Toolbox

## Repository structure

- `/src`: GUI code (the main app and related scripts).
- `/test-codes`: Test `.m` files for generating and validating audio signals.

## License

Copyright © 2025 [polfernandezfernandez](https://github.com/fernandezfernandezpol). This project is licensed under the [MIT License](LICENSE).