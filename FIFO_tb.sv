`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/24/2023 12:03:12 AM
// Design Name: 
// Module Name: FIFO_tb
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FIFO_tb;
  logic [15:0] Read_Data;
  logic Full, Empty, Half_Empty;
  logic Clock, Reset, WE, RE, EN;
  logic [15:0] Write_Data;   
  
  top_FIFO fifo(Read_Data, Write_Data, Full, Empty, Half_Empty, Clock, Reset, WE, RE, EN);
  
    
  initial
  begin
    EN = 0; Clock = 0; Write_Data = 16'd0;
    Reset = 1; Clock = 1; #5 ; Clock = 0; #5;
    Reset = 0;
    
    $display("Start testing");

    // First write some data into the queue
    WE = 1; RE = 0;
    Write_Data = 16'h0100;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h1050;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h2000;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h4800;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h0070;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h6835;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h4115;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h0100;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h1050;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h2000;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h4800;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h0070;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h6835;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h4115;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h0100;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h1050;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h2000;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h4800;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h0070;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h6835;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h4115;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h0100;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h1050;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h2000;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h4800;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h0070;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h6835;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h4115;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h0100;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h1050;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h2000;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h4800;
    Clock = 1; #5 ; Clock = 0; #5;
    Write_Data = 16'h0070;
    Clock = 1; #5 ; Clock = 0; #5;

    
    // Now start reading and checking the values
    WE = 0; RE = 1;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;
    Clock = 1; #5 ; Clock = 0; #5;

  end

endmodule





//module FIFO_TB;
//  logic [15:0] Read_Data;
//  logic Full, Empty, Half_Empty;
//  logic Clock, Reset, WE, RE, EN;
//  logic [15:0] Write_Data;  
  
//  FIFO fifo(Read_Data, Write_Data, Full, Empty, Half_Empty, Clock, Reset, WE, RE, EN);
  
//  always 
//  begin
//    #5;
//    Clock = ~Clock;
//  end
  
//  initial
//  begin
//    EN = 0;
//    Reset = 1;
//    #10;
//    Reset = 0;
    
//    // First writing some data into the queue
//    WE = 1; RE = 0;
//    Write_Data = 16'h1000;
//    Write_Data = 16'h1500;
//    Write_Data = 16'h2000;
//    Write_Data = 16'h4000;
//    Write_Data = 16'h7000;
//    Write_Data = 16'h6500;
//    Write_Data = 16'h1500;
//    Write_Data = 16'h1000;
//    Write_Data = 16'h1500;
//    Write_Data = 16'h2000;
//    Write_Data = 16'h4000;
//    Write_Data = 16'h7000;
//    Write_Data = 16'h6500;
//    Write_Data = 16'h1500;
//    Write_Data = 16'h1000;
//    Write_Data = 16'h1500;
//    Write_Data = 16'h2000;
//    Write_Data = 16'h4000;
//    Write_Data = 16'h7000;
//    Write_Data = 16'h6500;
//    Write_Data = 16'h1500;
//    Write_Data = 16'h1000;
//    Write_Data = 16'h1500;
//    Write_Data = 16'h2000;
//    Write_Data = 16'h4000;
//    Write_Data = 16'h7000;
//    Write_Data = 16'h6500;
//    Write_Data = 16'h1500;
//    Write_Data = 16'h1000;
//    Write_Data = 16'h1500;
//    Write_Data = 16'h2000;
//    Write_Data = 16'h4000;
//    Write_Data = 16'h7000;
        
//    // Now start reading and checking the values
//    WE = 0; RE = 1;

//  end
//endmodule




//module Register_2R1W_TB;

// logic [31:0] Data_IN;                   // Data Input
// logic [4:0] RW;                         // Write Address given from this port
// logic [4:0] R1;                         // Read 1 Address
// logic [4:0] R2;                         // Read 2 Address
// logic RD;
// logic WR;
// logic Reset;
// logic EN;
// logic Clock;
 
// logic [31:0] Q1;                        // Outputs
// logic [31:0] Q2;
 
// // Intiantiating Register_2R1W named as Reg
// Register_2R1W Reg (    
//               .Data_IN(Data_IN), 
//               .RW(RW), 
//               .Q1(Q1), 
//               .R1(R1), 
//               .Q2(Q2), 
//               .R2(R2), 
//               .RD(RD), 
//               .WR(WR), 
//               .Reset(Reset), 
//               .EN(EN), 
//               .Clock(Clock)
//              );
// initial begin
 
//  Data_IN  = 32'b0;                          // Initialize Inputs
//  RW  = 5'b0;
//  R1  = 5'b0;
//  R2  = 5'b0;
//  RD  = 1'b0;
//  WR  = 1'b0;
//  Reset  = 1'b1;
//  EN  = 1'b0;
//  Clock  = 1'b0;
//  // Wait 100 ns for global Reset to finish
//  #100;        
//  // Add stimulus here
//   Reset  = 1'b0;
//   EN  = 1'b1;
//   #20;
//   WR  = 1'b1;
//   RD = 1'b0;
//   Data_IN  = 32'habcd_efab;
//   RW  = 5'h0;
//   #20;
//   Data_IN  = 32'h0123_4567;
//   RW  = 5'h1;
//   #20;
//   WR  = 1'b0;
//   RD  = 1'b1;
//   R1  = 5'h0;
//   R2  = 5'h1;
// end 
//   always begin
//  #10;
//  Clock = ~Clock;
// end 
//endmodule
