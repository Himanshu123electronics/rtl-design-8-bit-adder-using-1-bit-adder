Digital design flow;
1] Specification-We defines the functional and performance requirements of the system. This includes:
    Input/output specifications
    Timing constraints
    Power and area budgets
    Technology used (ASIC/FPGA)
    
2]Architectural Design-Describes the overall architecture of the system:
    Breaks down functionality into major blocks (e.g., ALU, controller, memory).
    Decides data flow and control flow
   Block-level diagram and architecture document.
   
3] RTL Design (Register Transfer Level)-Implements the design using a hardware description language (HDL) like Verilog or VHDL at the register-transfer level:
    Describes the behavior of digital circuits.
    Details registers, data paths, and state machines.
    RTL code (Verilog/VHDL).
    
4] Functional Verification-Ensures the RTL design meets the specifications using VERDI.
    Uses testbenches, simulation.
    Verified RTL that meets functional specs.
    
5] Synthesis-Converts RTL code into a gate-level netlist using synthesis tools DC_SHELL
     Maps logic to standard cells or LUTs (for FPGA).
     Optimizes for area, speed, and power.
     Gate-level netlist.
     
6] Static Timing Analysis (STA)-Analyzes and validates the timing of the synthesized netlist(I tried to set SLACK 0)
    Checks setup, hold, and clock skew.
    Ensures timing closure.
    Timing report ensuring design meets clock constraints.
    
7] Physical Design - Placement of standard cells, routing of wires, floorplanning,power planning,clock tree synthesis
     Physical layout
     
8]. Physical Verification
    DRC (Design Rule Check): Ensures design adheres to foundry rules.
    LVS (Layout vs. Schematic): Confirms layout matches netlist.
    Antenna, ERC checks.
    Sign-off clean layout.(PT_SHELL)
