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
    input wire clk_65m,//FIFOдʱ������
    input wire clk_100m,//FIFO��ʱ������
    input rstn_i,//��λ�ź�����
    input wire wr_start,//fifoдʹ���ź�,һ����������������Ч
    output reg rd_en,//�����ʹ���źţ����ں�PSͨ�ţ������ݽ���DDR
    input [11:0] Din,//AD����
    output wire [15:0] dout//FIFO���
    );
    
    //将12位输入扩展16位
    reg [15:0] din = 'b0;
    
    always@(posedge clk_65m)
    begin
        din[11:0]<=Din;
    end
    //

    wire full;
    wire empty;
    wire almost_full;
    wire almost_empty;
    wire [9:0] rd_data_count;
    wire [9:0] wr_data_count;
    
    wire init_wr_pulse;

    wire wr_en;//дʹ���ź�
    assign wr_en = init_wr_pulse||wr_status[0];
    
    reg init_wr_ff;
    reg init_wr_ff2;
    
    reg [1:0] wr_status = 0;//д״̬��
    reg [1:0] rd_status = 0;//��״̬��
    
    parameter wr_wait = 0;//�ȴ�д״̬
    parameter wr_ing  = 1;//����д״̬
    parameter wr_done = 2;//д���״̬
    
    parameter rd_wait = 0;//�ȴ���״̬
    parameter rd_ing  = 1;//���ڶ�״̬
    parameter rd_done = 2;//�����״̬

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

    //在full和empty的标志位上升沿触发
    //full为高，则开始读，empty为高则停止读
    always@(posedge full or posedge empty)
    begin
      if(full==1)
        rd_en<=1;
      else
        rd_en<=0;
    end
    
    //дʹ���źſ��ƣ���дʹ�������øߣ�fifo full�ź��õ�
    
    //дfifo״̬��
    always@(posedge clk_65m or posedge rstn_i)
    begin
        //��λ�źţ�״̬���õȴ�
        if(rstn_i==1)
        begin
            wr_status<=wr_wait;
        end
        else
        begin
            case(wr_status)
            
            //д�ȴ�״̬�����дʹ���ź��Ƿ�Ϊ1
            wr_wait:
            begin
                if(wr_en==1)
                wr_status<=wr_ing;
                else
                wr_status<=wr_status;
                rd_start_reg<=0;
            end
            
            //д�����źţ����д��
            wr_ing:
            begin
                if(full==1)
                wr_status<=wr_done;
                else
                wr_status<=wr_status;
                rd_start_reg<=0;
            end
            
            //д����źţ���һ������ʼ�ź�����
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
    
    //��ʹ���źſ��ƣ��ɶ�ʹ�������øߣ�fifo empty�ź��õ�
    
    
    //��fifo״̬��
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







