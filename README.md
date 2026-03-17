# Design of a Universal Biquad Filter

## 📋 Project Overview
The Universal Biquad Filter is a second-order active filter that can realize any biquadratic transfer function. In this project, we implement the KHN topology, which is renowned for its low sensitivity to component tolerances and its ability to provide multiple filter outputs from a single circuit.

### Key Features
* **KHN Architecture**: Utilizes two integrators and a summing amplifier.
* **Simultaneous Outputs**: High-Pass (HP), Band-Pass (BP), and Low-Pass (LP) outputs are available at different nodes.
* **Stability & Precision**: Designed to maintain high stability across varying Q-factors and center frequencies.
* **Comprehensive Simulation**: Verification of theoretical transfer functions using LTSpice.

## 🧠 Core Concepts

### KHN Architecture vs. State Variable Filters
The KHN (Kerwin-Huelsman-Newcomb) filter is a type of **State Variable Filter**. It overcomes several limitations found in simpler active filters:
* **Independence of Parameters**: Unlike Sallen-Key topologies, the KHN filter allows for independent tuning of the Center Frequency ($\omega_0$) and the Quality Factor ($Q$).
* **Low Sensitivity**: It is significantly less sensitive to variations in the gain-bandwidth product of the op-amps, making it much more stable at high Q values.
* **Versatility**: By summing the existing HP, BP, and LP outputs, more complex filters like Notch (Band-Stop) and All-Pass can be created without redesigning the core block.

### Q-Factor and Stability
The performance of the Biquad filter is defined by its **Quality Factor ($Q$)**:
* **High-Q Stability**: A major focus of this project is ensuring that high Q-factors (sharper selectivity) do not lead to oscillation. The KHN structure naturally provides better phase margins compared to single-amplifier biquads.
* **Damping Control**: The Q-factor is controlled via the feedback ratio in the summing amplifier stage. We analyze the trade-off between a high $Q$ (better frequency selection) and the risk of instability or ringing in the step response.
* **Sensitivity Analysis**: We evaluate how minor deviations in resistor and capacitor values affect the stability of the pole locations on the s-plane.

## 🛠️ Circuit Implementation
The design is realized on the ASLK PRO board using:
* **Summing Amplifier**: A high-speed op-amp used to combine the input and feedback signals.
* **Integrators**: Two op-amp based integrators that define the second-order nature of the filter.
* **Component Selection**: Calculated resistor and capacitor values to achieve specific cutoff frequencies and damping ratios.



## 💻 Repository Contents
* **`/circuit simulation`**: LTSpice schematics (`.asc`) and simulation results showing AC Analysis (Gain/Phase) for HP, LP, and BP outputs.
* **`/behavioural`**: MATLAB script used for calculating component values based on target $f_0$ and $Q$.

## 🚀 How to Simulate
1. Open the `.asc` files in the `spice` folder using **LTSpice**.
2. Run the **AC Analysis** to view the frequency response.
3. Observe how the peak of the Band-Pass output changes as the resistance values corresponding to the Q-factor are varied.
4. Verify the **Phase Margin** in the simulation to confirm the stability of the filter.

---
*Developed as part of the Analog Microelectronic Circuit Design (AMCD) course.*
