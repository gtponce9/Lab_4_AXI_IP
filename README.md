# ECE520-Lab-4
Garrett Ponce

AXI IP Development and Verification

## Project Abstract

An AXI-Lite multiplier IP was created, tested on a verilog testbench, and then testing using Vitis. A BRAM IP was added in the second half to demonstrate the multiplier could correctly multiply 32 entries and store them into 32 memory slots in the BRAM. I could not get the FIFO part of the lab correctly working, as it was created in VHDL, while the rest of this lab was done in Verilog (plus i had to travel for work).

## Hardware
- Windows 10 Computer with software installed

## Software
- Vivado 2023.2
- Vitis 2023.2

## Prelab Code

a simple 16 bit multiplier was created and tested for the introduction to this lab. The waveform is shown in figure 1.

![Figure 1: Testbench Waveform (Pre Lab)]

## Post lab Code

### General Goal
The overall goal was to build on the IP and merge lab 3 into lab 4. that goal did not occur due to the languages used being different. The BRAM however did work as expected

### IP BRAM
the addition of the IP BRAM was very straight foward and functional. All 32 mutlipler entries were correctly saved into the BRAM as shown in figure 2


![Figure 2: Testbench Waveform (Pre Lab)]


### IP FIFO 
I got stuck when my Verilog code and VHDL code were not working together (obviously) so I gave it my best shot. eventually I had to move onto my professional work and call the assignment there. 


## Overview

The time spent on this lab could have been more effectively spent doing examples, going in depth of applications, etc. 

Also, for future tests and labs, can it be multiple choice, or some other method that does not require memorization. I know I did terrible on that lab simply based on the fact of memory and not knowing the application


