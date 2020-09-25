`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/19 09:32:09
// Design Name: 
// Module Name: fifo_test
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


module fifo_test(

    );
    
    reg sys_clk_i;
    reg rstn_i;
    reg wr_start;
    reg [15:0] din;
    wire [15:0] dout;
    
    initial
    begin
        sys_clk_i=0;
        rstn_i=0;
        wr_start=0;
        din=1'b0;
        #100
        rstn_i=1;
        #100
        rstn_i=0;
    end
    
    initial
    forever
    begin
        #10
        sys_clk_i<=~sys_clk_i;
    end
    
    initial
    forever
    begin
        #20
        din<=din+1'b1;
    end
    
    initial
    begin
        #10000
        wr_start<=1;
        #10
        wr_start<=0;
    end
    
    fifo_16_1024 u_fifo_16_1024
    (
        .sys_clk_i(sys_clk_i),
        .rstn_i(rstn_i),
        .wr_start(wr_start),
        .din(din),
        .dout(dout)
    );
    
endmodule
