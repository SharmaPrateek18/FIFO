`timescale 1ns / 1ps


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


