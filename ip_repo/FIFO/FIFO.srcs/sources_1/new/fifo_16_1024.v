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
    input wire clk_65m,//FIFO§Õ???????
    input wire clk_100m,//FIFO?????????
    input rstn_i,//??¦Ë???????
    input wire wr_start,//fifo§Õ??????,?????????????????§¹
    output reg rd_en = 'b0,//?????????????????PS?????????????DDR
    input [11:0] Din,//AD????
    output wire [15:0] dout,//FIFO???
    input wire burst_delay_flag
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
    wire [11:0] rd_data_count;
    wire [11:0] wr_data_count;
    wire rd_en_2_fifo;
    
    wire init_wr_pulse;

    wire wr_en;//§Õ??????
    
    reg init_wr_ff = 0;
    reg init_wr_ff2 = 0;
    
    reg [1:0] wr_status = 0;//§Õ????
    reg [1:0] rd_status = 0;//??????
    
    parameter wr_wait = 0;//???§Õ??
    parameter wr_ing  = 1;//????§Õ??
    parameter wr_done = 2;//§Õ?????
    
    parameter rd_wait = 0;//???????
    parameter rd_ing  = 1;//???????
    parameter rd_done = 2;//???????

    assign wr_en = init_wr_pulse||wr_status[0];

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

    always@(posedge clk_100m or posedge rstn_i)
    begin
      if(rstn_i==1)
        rd_en<=0;
      else
      begin
        if(full==1)
            rd_en<=1;
        else if(empty==1)
            rd_en<=0;
        else
            rd_en<=rd_en;
      end
    end
    
    assign rd_en_2_fifo = rd_en&&burst_delay_flag;
    
    //§Õ????????????§Õ???????????fifo full??????
    
    //§Õfifo????
    always@(posedge clk_65m or posedge rstn_i)
    begin
        //??¦Ë????????????
        if(rstn_i==1)
        begin
            wr_status<=wr_wait;
        end
        else
        begin
            case(wr_status)
            
            //§Õ??????????§Õ??????????1
            wr_wait:
            begin
                if(wr_en==1)
                wr_status<=wr_ing;
                else
                wr_status<=wr_status;
            end
            
            //§Õ???????????§Õ??
            wr_ing:
            begin
                if(full==1)
                wr_status<=wr_done;
                else
                wr_status<=wr_status;
            end
            
            //§Õ????????????????????????
            wr_done:
            begin
                wr_status<=wr_wait;
            end
            
            default:;
            endcase
        end
    end
    
    //??????????????????????????fifo empty??????
    
    
    //??fifo????
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
    .rd_en(rd_en_2_fifo),
    .dout(dout),
    .full(full),
    .almost_full(almost_full),
    .empty(empty),
    .almost_empty(almost_empty),
    .rd_data_count(rd_data_count),
    .wr_data_count(wr_data_count)
    );
  
endmodule

