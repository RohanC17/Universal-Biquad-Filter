# Analog Microelectronic Circuit Design (AMCD) - Universal Biquad Filter
This project focuses on the design, simulation, and hardware implementation of a **Universal Biquad Filter** using the **Analog System Lab Kit PRO (ASLK PRO)**. 

The goal is to implement a second-order filter capable of providing Low-Pass (LP), High-Pass (HP), Band-Pass (BP), and Notch/Band-Stop (BS) responses from a single topology.

## Project Overview
Based on **Experiment 4** of the ASLK PRO manual, this project covers:
1. **Mathematical Modeling**: Designing filter coefficients for specific cutoff frequencies and Q-factors.
2. **Simulation**: Verifying the transfer functions using LTSpice with macro-models of the TL082 op-amp.
3. **Hardware Implementation**: Building the circuit on the ASLK PRO board.
4. **Automated Testing**: Using a RedPitaya and SCPI commands to automate frequency response measurements (Bode plots).

## Repository Contents

### 📁 filter_design
- `hw1p1.m` / `hw1p1.py`: Initial calculations for component selection (Resistors/Capacitors) to meet filter specifications.
- `hw1n.pdf`: Design notes and mathematical derivations.

### 📁 spice
- `Universal_Biquad_tl082.asc`: LTSpice schematic file.
- `tl082.cir`: SPICE model for the TL082 operational amplifier.
- `ltspice_data_analysis.ipynb`: Comparison between simulation results and theoretical models.

### 📁 redpitaya_scpi
- `bode_data_meas.py`: Python script to automate gain and phase measurements using RedPitaya.
- `bode_data_analysis.m`: MATLAB script to plot measured hardware data against simulation data.
- `redpitaya_scpi.py`: Library for SCPI communication.

### 📁 docs
- `aslk-pro-manual-v103.pdf`: Reference manual for the hardware kit.
- `AMCD.pptx`: Final project presentation.

## How to Run
1. **Simulation**: Open `spice/Universal_Biquad_tl082.asc` in LTSpice and run the AC Analysis.
2. **Measurement**: 
   - Connect your RedPitaya to the ASLK PRO circuit.
   - Run `python redpitaya_scpi/bode_data_meas.py` to collect hardware data.
3. **Analysis**: Use the provided `.m` scripts in MATLAB or `.ipynb` in Jupyter to visualize the results.

## Requirements
- LTSpice
- MATLAB (with Control System Toolbox)
- Python 3.x (with `numpy`, `matplotlib`, and SCPI libraries)
- RedPitaya Hardware (optional for measurements)
