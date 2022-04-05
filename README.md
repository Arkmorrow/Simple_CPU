# Simple_CPU

Operation Function performed Description
load Rx, D Rx ← D Load constant value D into Rx
mov Rx, Ry Rx ← [Ry] Move contents of Ry into Rx
add Rx, Ry Rx ← [Rx] + [Ry] Add contents of Rx and Ry and put result into Rx
xor Rx, Ry Rx ← [Rx] xor [Ry] Bitwise XOR contents of Rx and Ry and put result into Rx

Instructions (Coding):
1. Implement each individual block in Verilog. To help demonstrators and collaborate within your group, 
please ensure your FSM and Datapath are separate modules. Each should consist of several test modules.
2. Make a simple design first – follow the mark scheme!
3. Once complete, enhance your processor to use memory to run programs. You will create an internal
synchronous RAM block for the processor. The RAM will need input ports for clock, write enable, 16-bit 
data input, write address, and read address. You can hard-code your program in this RAM to begin. It will 
need an output port for reading a 16-bit data output. 
The size of the internal memory is up to you. Remember, there are speed tradeoffs involved when 
implementing a larger memory. Also, your address width is dependent on the size of your memory.
4. Finally, modify the processor to include one extra register as the program counter, which will keep track of 
your instruction address in memory.
5. Load (or hardcode) a program into your processor by changing the RAM Verilog so that the memory is 
initialized to values corresponding to your program code.
6. Ideally, your final design should use Use Key(0) as a clock signal and create a circuit to use the HEX(0) to
display the contents of the register chosen by the switches (if Switches = 0, Hex(0) displays the hex value 
for Reg(0), if Switches = 1, Hex(0) displays the hex value for Reg(1)