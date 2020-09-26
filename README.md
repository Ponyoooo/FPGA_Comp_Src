# FPGA_Comp_Src

​	This project is an EMAT pulse compression used in Non-destructive testing. This project mainly includes the following parts:

- Datasheet of chip used in this project.
- Schematic and PCB files of development board used in this project.
- Source code of EMAT pulse compression used in Non-destructive testing, including:
  1. Sample code use 65MSPS 12bit dual channel ADC module AD9238 and Alinx AX7020(√)
  2. Display code(Waiting)
  3. Mos drive signals and circle control code(Waiting)
  4. Signal process code(Waiting)

------

## Source Code

#### Sample code use 65MSPS 12bit dual channel ADC module AD9238 and Alinx AX7020(√)

The Sample code is based on two self-made ip:fifo and an AXI-FULL bus, as below shownd.

![QQ20200926093952](D:\Desktop\FPGA_Comp_Src\pic\QQ20200926093952.png)

​	This module can sample 4096(changeable) points continuously then send these data to DDR3 linked with PS through an AXI-FULL bus.

**Port Description**

##### clk_65m in fifo

Fifo's write clock, same with ADC's sample clock. Pay attention that this clock should better have a phase difference with ADC's sample clock, maybe simply generate by a clock and a not gate.

##### clk_100m in fifo and m00_axi_aclk

Fifo's read clock, same with AXI_FIFOIN's clock. You can use the same method above to generate two clock with phase difference.

##### rstn_i in fifo

Fifo's reset port.

##### wr_start in fifo

Signal means begin to write fifo. In the ip, use two reg signal to track **wr_start**'s rising edge.

```verilog
assign init_wr_pulse = init_wr_ff && (!init_wr_ff2);
//Generate a pulse to initiate write.
always @(posedge clk_65m)										      
begin  
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
```

##### Din[11:0] in  fifo

Input data from 12bit ADC.

##### burst_delay_flag in fifo and WNEXT in AXI_FIFOIN

AXI_FIFOIN's burst length is 256, there are clock delay between two bursts, if not coordinate read fifo process and AXI transmit process, there will be some data lost like below.

<img src="D:\Desktop\FPGA_Comp_Src\pic\IMG_20200925_104531.jpg" alt="IMG_20200925_104531" style="zoom:50%;" />

The blue one is 64 bursts and every burst send 16 datas. The orange one is 4 bursts and every burst send 256 datas. It's clearly that there are data lost between two burst. The interrelated code showed as below.

```verilog
//fifo 写使能信号产生
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
```

```verilog
//AXI 写数据产生逻辑
always @(posedge M_AXI_ACLK)                                                      
begin
    axi_wdata <= WDATA;
end
```

Considering that during the shake hands period between master and slave, the **VALID** and **READY** are high level. 

<img src="D:\Desktop\FPGA_Comp_Src\pic\QQ20200926130831.png" alt="QQ20200926130831" style="zoom:50%;" />

So we use these two signal to control fifo's read period. The interrelated code showed as below.

```verilog
//fifo 写使能信号产生
assign rd_en_2_fifo = rd_en&&burst_delay_flag;
/*
-----------------------------------------
*/
.rd_en(rd_en_2_fifo),
```

```verilog
//AXI 写数据产生逻辑
always @(posedge M_AXI_ACLK)                                                      
begin
    if (M_AXI_ARESETN == 0 || init_txn_pulse == 1'b1)
        axi_wdata <= 'b1;
    //else if (wnext && axi_wlast)
    //  axi_wdata <= 'b0;
    else if (wnext)
        axi_wdata <= WDATA;
    else
        axi_wdata <= axi_wdata;
end
```

##### rd_en in fifo and m00_axi_init_axi_txn in AXI_FIFOIN

Output readable signal to AXI_FIFOIN.

##### dout[15:0] in fifo and InData[15:0] in AXI_FIFOIN

Output data to AXI_FIFOIN.

##### m00_axi_txn_done in AXI_FIFOIN

Flag of sending process completed.

##### m00_axi_error in AXI_FIFOIN

Flag of sending process wrong.

##### 