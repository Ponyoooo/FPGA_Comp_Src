`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2020/09/18 10:38:19
// Design Name: 
// Module Name: fifo_16_1024
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


module fifo_16_1024
    (
    input wire clk_65m,//FIFO写时钟输入
    input wire clk_100m,//FIFO读时钟输入
    input rstn_i,//复位信号输入
    input wire wr_start,//fifo写使能信号,一个按键，上升沿有效
    output wire rd_en,//输出读使能信号，用于和PS通信，将数据交给DDR
    input [11:0] Din,//AD输入
    output wire [15:0] dout//FIFO输出
    );
    
    reg [15:0] din = 'b0;
    
    always@(posedge clk_65m)
    begin
        din[11:0]<=Din;
    end
    
    wire full;
    wire empty;
    wire almost_full;
    wire almost_empty;
    wire [9:0] rd_data_count;
    wire [9:0] wr_data_count;
    
    wire wr_en;//写使能信号
    assign wr_en = init_wr_pulse||wr_status[0];
    assign rd_en = init_rd_pulse||rd_status[0];
    
    wire init_wr_pulse;
    wire init_rd_pulse;
    
    reg init_wr_ff;
    reg init_wr_ff2;
    reg init_rd_ff;
    reg init_rd_ff2;
    
    reg rd_start_reg = 0;
    wire rd_start;
    assign rd_start = rd_start_reg;
    
    reg [1:0] wr_status = 0;//写状态机
    reg [1:0] rd_status = 0;//读状态机
    
    parameter wr_wait = 0;//等待写状态
    parameter wr_ing  = 1;//正在写状态
    parameter wr_done = 2;//写完成状态
    
    parameter rd_wait = 0;//等待读状态
    parameter rd_ing  = 1;//正在读状态
    parameter rd_done = 2;//读完成状态

	assign init_wr_pulse = init_wr_ff && (!init_wr_ff2);
	//Generate a pulse to initiate write.
	always @(posedge clk_65m)										      
	  begin                                                                        
	    // Initiates AXI transaction delay    
	    if (rstn_i == 1 )                                                   
	      begin                                                                    
	        init_wr_ff <= 1'b0;                                                   
	        init_wr_ff2 <= 1'b0;                                                   
	      end                                                                               
	    else                                                                       
	      begin  
	        init_wr_ff <= wr_start;
	        init_wr_ff2 <= init_wr_ff;                                                                 
	      end                                                                      
	  end
	  
	assign init_rd_pulse = init_rd_ff && (!init_rd_ff2);
	//Generate a pulse to initiate read.
	always @(posedge clk_100m)										      
	  begin                                                                        
	    // Initiates AXI transaction delay    
	    if (rstn_i == 1 )                                                   
	      begin                                                                    
	        init_rd_ff <= 1'b0;                                                   
	        init_rd_ff2 <= 1'b0;                                                   
	      end                                                                               
	    else                                                                       
	      begin  
	        init_rd_ff <= rd_start;
	        init_rd_ff2 <= init_rd_ff;                                                                 
	      end                                                                      
	  end
    
    //写使能信号控制，由写使能脉冲置高，fifo full信号置低
    
    //写fifo状态机
    always@(posedge clk_65m or posedge rstn_i)
    begin
        //复位信号，状态机置等待
        if(rstn_i==1)
        begin
            wr_status<=wr_wait;
        end
        else
        begin
            case(wr_status)
            
            //写等待状态，检查写使能信号是否为1
            wr_wait:
            begin
                if(wr_en==1)
                wr_status<=wr_ing;
                else
                wr_status<=wr_status;
                rd_start_reg<=0;
            end
            
            //写进行信号，检查写满
            wr_ing:
            begin
                if(full==1)
                wr_status<=wr_done;
                else
                wr_status<=wr_status;
                rd_start_reg<=0;
            end
            
            //写完成信号，给一个读开始信号脉冲
            wr_done:
            begin
                if(rd_start==0)
                wr_status<=wr_done;
                else
                wr_status<=wr_wait;
                rd_start_reg<=1;
            end
            
            default:;
            endcase
        end
    end
    
    //读使能信号控制，由读使能脉冲置高，fifo empty信号置低
    
    
    //读fifo状态机
    always@(posedge clk_100m or posedge rstn_i)
    begin
        if(rstn_i==1)
        begin
            rd_status<=rd_wait;
        end
        else
        begin
            case(rd_status)
            rd_wait:
            begin
                if(rd_en==1)
                rd_status<=rd_ing;
                else
                rd_status<=rd_status;
            end
            
            rd_ing:
            begin
                if(empty==1)
                rd_status<=rd_done;
                else
                rd_status<=rd_status;
            end
            
            rd_done:
                rd_status<=rd_wait;
            default:;
            endcase
        end
    end
    
    fifo_generator_0 fifo_inst
    (
    .wr_clk(clk_65m),
    .wr_rst(rstn_i),
    .rd_clk(clk_100m),
    .rd_rst(rstn_i),
    .din(din),
    .wr_en(wr_en),
    .rd_en(rd_en),
    .dout(dout),
    .full(full),
    .almost_full(almost_full),
    .empty(empty),
    .almost_empty(almost_empty),
    .rd_data_count(rd_data_count),
    .wr_data_count(wr_data_count)
    );
  
endmodule







