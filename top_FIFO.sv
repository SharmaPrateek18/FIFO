`timescale 1ns / 1ps



// This is a FIFO
// The Total Number of Words are M
// The Data Width of each Word is N bits
module top_FIFO(Read_Data, Write_Data, Full, Empty, Half_Empty, Clock, Reset, WE, RE, EN);
parameter M = 32;
parameter N = 16;
logic [M-1:0]i;                   // i is used as a Counter in for loop      
output logic [N-1:0] Read_Data;   // Read_Data is used for Data Output from the FIFO
output logic Full, Empty, Half_Empty;
input [N-1:0] Write_Data;         // Write_Data is used for Data input inthe FIFO
input Clock, Reset, WE, RE, EN;   // WE --> Write Enable , RE --> Read Enable , EN --> Enable FIFO
  
logic [M-1:0] Write_Pointer, Read_Pointer; // pointers tracking the FIFO
logic [N-1:0] Memory [M-1:0];    // FIFO is N bit wide and M locations in size
  
assign Full = ( (Write_Pointer == M) & (Read_Pointer == 0) ? 1 : 0 );
assign Empty = (Write_Pointer == Read_Pointer) ? 1 : 0;
assign Half_Empty = ( (Write_Pointer == (N/2)) || (Read_Pointer == (N/2)) ? 1 : 0 );
  
always @(posedge Clock)
begin
  if (EN == 0)
  begin
    if (Reset)
      begin
        for (i=0; i<=(M-1); i++)
        begin
            Memory[i] <= 0;
        end
        Read_Data <= 0; Write_Pointer <= 0; Read_Pointer <= 0;
      end
    else if (WE & !Full)
      begin
        Memory[Write_Pointer] <= Write_Data;
        Write_Pointer <= Write_Pointer + 1;
      end
    else if (RE & !Empty)
      begin
        Read_Data <= Memory[Read_Pointer];
        Read_Pointer <= Read_Pointer + 1;
      end
  end

  else
  begin
    // Do nothing: Made to prevent Latch Formation
  end
end
endmodule
