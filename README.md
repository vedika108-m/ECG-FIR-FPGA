ECG Signal Denoising using FIR Filter on FPGA

- Project Overview
This project implements a Finite Impulse Response (FIR) digital filter using Verilog HDL for ECG signal denoising. The design simulates real-time filtering behavior suitable for FPGA-based biomedical signal processing systems.

- Problem Statement
Electrocardiogram (ECG) signals are highly sensitive to noise such as:
Power line interference
Muscle noise
Baseline wandering
These noises reduce diagnostic accuracy.

- Proposed Solution
A hardware-efficient FIR filter architecture is implemented on FPGA using Verilog to remove noise while preserving ECG waveform characteristics.

- System Architecture
The system consists of:
FIR Filter Design Module (fir_filter.v)
Testbench (tb_fir.v)
Clock-driven delay elements
Filter coefficients multiplication and accumulation

- Working Principle
ECG samples are applied as input.
Samples pass through delay registers.
Each delayed sample multiplies with filter coefficients.
Outputs are summed to generate filtered ECG signal.

- Simulation Results
Functional simulation performed in Xilinx Vivado
Output waveform shows smoothing and noise reduction
Stable filtered output achieved after pipeline delay


- Technologies Used
Verilog HDL
Xilinx Vivado 2024.2
FPGA-based Digital Signal Processing
FIR Filtering

- Applications
ECG Monitoring Devices
Wearable Health Systems
Biomedical Signal Processing
Real-time DSP on FPGA

- Future Improvements
Real ECG dataset integration
FPGA board implementation
Adaptive filtering
Real-time streaming input

- Author

Vedika — Electronics Engineering Student
FPGA & VLSI Enthusiast
