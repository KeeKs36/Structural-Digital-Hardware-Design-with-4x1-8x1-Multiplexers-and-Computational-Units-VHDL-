# Structural Digital Hardware System: 16 CUs, 8x1 and 4x1 Multiplexers (VHDL)

A modular digital hardware system integrating 16 computational units (CUs), 8 8x1 multiplexers, and 8 4x1 multiplexers, designed and verified in VHDL. This project demonstrates structural design, hierarchical data routing, and comprehensive simulation-based verification.


## Design Overview

- **Top-Level Module:** Integrates 16 computational units (CUs) arranged in a matrix, with 8 8x1 and 8 4x1 multiplexers used for data routing between CUs. The outputs of the last row of CUs are the system outputs.
- **Computational Unit (CU):** Supports 21 operations, including arithmetic, logical, shift, rotate, and comparison functions.
- **4x1 Multiplexer:** Selects one of four inputs based on select lines.
- **8x1 Multiplexer:** Selects one of eight inputs based on select lines.
- **Modularity:** All components are instantiated and interconnected structurally, enabling flexible and scalable design.


## Usage

1. **Clone the repository:**
2. **Simulate the design:**
- Open the VHDL files in your preferred simulator (e.g., ModelSim, Vivado).
- Run the testbench(s) to verify functionality.


## License

This project is available under the [MIT License](LICENSE).

---

**For questions or contributions, please open an issue or submit a pull request.**
