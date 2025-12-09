# verilog-mux16to1
This project implements a 16:1 multiplexer using structural modeling in Verilog HDL.  
The design is built hierarchically using smaller multiplexers:

- A 2:1 multiplexer (basic building block)
- A 4:1 multiplexer built from two 2:1 MUXes
- A 16:1 multiplexer built from four 4:1 MUXes

A testbench is included that generates the **truth table** for a given input  of the 16:1 MUX with simulation time.

---

## 📁 Project Files

| File | Description |
|------|-------------|
| `mux2to1.v` | 2:1 multiplexer (gate-level) |
| `mux4to1.v` | 4:1 multiplexer made using 2:1 MUXes |
| `mux16to1.v` | Top-level 16:1 multiplexer |
| `tb_mux16to1.v` | Testbench that prints truth table and output timing |
| `mux16_schematic.png` |  Vivado schematic of the design |
| `waveform.png` | Simulation waveform |

---
## 🧩 Design Hierarchy

This demonstrates a hierarchical structural design where larger digital circuits are built using smaller reusable blocks.
mux16to1
 ├── mux4to1 (m0)
 ├── mux4to1 (m1)
 ├── mux4to1 (m2)
 └── mux4to1 (m3)
        Each mux4to1 internally uses:
            ├── mux2to1 (lower stage)
            └── mux2to1 (upper stage)

---

## 🧪 Truth Table Behavior

For a 16:1 multiplexer:

out=in[sel]

Where:
- `in` is a 16-bit input  
- `sel` is a 4-bit select  
- Output reflects the bit at index `sel`


---

## 🖼️ Schematic (Vivado)
 the structural schematic looks like this:
[Schematic]<img width="1454" height="724" alt="mux16to1_schematic" src="https://github.com/user-attachments/assets/4d70273b-93ad-4f9b-a5a5-70b2408b5e2e" />
---
## ▶️ Running the Simulation(Vivado)
1)Open Vivado and create a new project

Add the following files to Design Sources:

2)mux2to1.v

 mux4to1.v

 mux16to1.v

3)Add tb_mux16to1.v to Simulation Sources

4)Right-click tb_mux16to1.v → Set as Top

5)Run:

Flow → Run Simulation → Run Behavioral Simulation

6)The console will print:

sel


corresponding in[sel]


the output


simulation timestamp


7)The waveform viewer shows signal transitions and MUX behavior.

## 📌Notes
This is a pure structural Verilog implementation.

No behavioral statements (case, if) are used in the multiplexer hierarchy.

The testbench automatically loops through all 16 select values.






