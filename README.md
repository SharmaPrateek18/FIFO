# FIFO
The provided code is of System Verilog. The FIFO is of 32x16 size.

This Verilog code implements a FIFO (First-In, First-Out) data structure with a data width of N bits and a capacity of M words. The code is written to be synthesizable and can be used for implementing the FIFO on an FPGA or ASIC.

# Module Ports:
The module top_FIFO has the following ports:

## Inputs
Clock : the clock signal for the FIFO
Reset : the reset signal for the FIFO
WE : the write enable signal for the FIFO
RE : the read enable signal for the FIFO
EN : the enable signal for the FIFO

## Outputs
Read_Data : the data output from the FIFO
Write_Data : the data input to the FIFO
Full : the full signal for the FIFO
Empty : the empty signal for the FIFO
Half_Empty : the half-empty signal for the FIFO

## Parameters:
The module top_FIFO has two parameters:
M : the total number of words in the FIFO. It is set to 32 by default.
N : the data width of each word in the FIFO. It is set to 16 by default.

## Working:
The FIFO is implemented using two pointers - Write_Pointer and Read_Pointer - which track the current write and read locations in the FIFO, respectively. The FIFO is implemented using an array Memory of size M, where each location is N bits wide. The Write_Data input is written to the current Write_Pointer location in the FIFO when WE is high and the FIFO is not full. The Read_Data output is read from the current Read_Pointer location in the FIFO when RE is high and the FIFO is not empty.

The Full, Empty, and Half_Empty signals are used to indicate the current status of the FIFO. Full is high when the FIFO is full, Empty is high when the FIFO is empty, and Half_Empty is high when the FIFO is half-empty.

## Simulation and Synthesis:
The code has been written to be synthesizable and can be synthesized using any standard Verilog synthesis tool. The code can also be simulated using any standard Verilog simulation tool.
