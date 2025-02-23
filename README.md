# Ball and Beam System - EECE 460 Project

## Overview
The **Ball and Beam System** is a classical control problem that demonstrates feedback control principles, stability analysis, and system modeling. This project involves modeling, simulating, and implementing various control strategies, including **PID control and Lag-Lead compensators**, to stabilize the ball on the beam.

## Authors
- Hossam Mostafa
- Amjad Khaddaj
- Malak Ammar

## Acknowledgments
We extend our gratitude to **Professor Naseem Daher** for his guidance and valuable insights throughout the project.

## Project Components
### 1. **Mathematical Modeling**
   - Derived the system equations using **Euler-Lagrange equations** and **Newton’s Laws**.
   - Linearized the system for classical controller design.
   - Developed transfer functions and state-space representations.

### 2. **System Identification**
   - Used **MATLAB System Identification Toolbox** to obtain an accurate model.
   - Identified the **motor dynamics** and overall system response.

### 3. **Control System Design**
   - Implemented **PID Control** for the motor.
   - Designed a **Lag-Lead compensator** for improved stability and performance.
   - Validated performance through **simulations in MATLAB**.

### 4. **Simulation & Experimental Results**
   - Conducted **open-loop and closed-loop analysis**.
   - Analyzed step response, root locus, and frequency response (Bode & Nyquist plots).
   - Achieved **stable ball positioning with minimal steady-state error**.

## Key Findings
- PID control effectively stabilizes the motor but does not fully compensate for uncertainties in the ball and beam system.
- Lag-Lead compensators improve transient response and robustness.
- The best approach was **sequential compensation**, first stabilizing the motor and then tuning the overall system.

## Future Work
- Implement **Adaptive or Model Predictive Control (MPC)** for enhanced performance.
- Account for **external disturbances** like friction and vibrations.
- Design **real-time control using microcontrollers (e.g., Arduino, Raspberry Pi)**.

---
