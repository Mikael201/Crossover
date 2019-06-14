# Crossover
VHDL practicing: Crossover:
Building Genetic Algorithm's random Crossover with 32 two-to-one Multiplexers. Testbench is also built with asserts and top-level-entity is used for testing.
In the high-level entity, the input is 32 bit for parent1, 32 bit for parent2, 32 bit for SEL. These bits divide themselves into 32 two-to-one Multiplexers one bit at a time. For example, the first multiplexer's input is A(0), B(0) and SEL(0). The 32 two-to-one Multiplexers then build, one bit at a time, an output that is 32 bits.

