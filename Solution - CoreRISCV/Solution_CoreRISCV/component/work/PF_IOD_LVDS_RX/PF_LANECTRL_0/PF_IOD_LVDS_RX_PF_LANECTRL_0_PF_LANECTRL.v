`timescale 1 ns/100 ps
// Version: v12.3 12.800.0.16


module PF_IOD_LVDS_RX_PF_LANECTRL_0_PF_LANECTRL(
       HS_IO_CLK,
       EYE_MONITOR_WIDTH_OUT,
       RX_DQS_90,
       TX_DQS,
       TX_DQS_270,
       FIFO_WR_PTR,
       FIFO_RD_PTR,
       ARST_N,
       RX_SYNC_RST,
       TX_SYNC_RST,
       FAB_CLK,
       RESET,
       HS_IO_CLK_PAUSE,
       EYE_MONITOR_WIDTH_IN,
       A_OUT_RST_N
    );
input  [1:0] HS_IO_CLK;
output [2:0] EYE_MONITOR_WIDTH_OUT;
output [0:0] RX_DQS_90;
output TX_DQS;
output TX_DQS_270;
output [2:0] FIFO_WR_PTR;
output [2:0] FIFO_RD_PTR;
output ARST_N;
output RX_SYNC_RST;
output TX_SYNC_RST;
input  FAB_CLK;
input  RESET;
input  HS_IO_CLK_PAUSE;
input  [2:0] EYE_MONITOR_WIDTH_IN;
output A_OUT_RST_N;

    wire GND_net, VCC_net, 
        HS_IO_CLK_PAUSE_SYNC_I_LANECTRL_PAUSE_SYNC_net;
    
    LANECTRL #( .DATA_RATE(2.0), .FORMAL_NAME("RX%DUPLICATE"), .INTERFACE_NAME("RX_DDRX_B_G_A")
        , .DELAY_LINE_SIMULATION_MODE("DISABLED"), .RESERVED_0(1'b0), .RESERVED_1(1'b0)
        , .RESERVED_2(1'b0), .SOFTRESET_EN(1'b0), .SOFTRESET(1'b0), .RX_DQS_DELAY_LINE_EN(1'b1)
        , .TX_DQS_DELAY_LINE_EN(1'b0), .RX_DQS_DELAY_LINE_DIRECTION(1'b1)
        , .TX_DQS_DELAY_LINE_DIRECTION(1'b1), .RX_DQS_DELAY_VAL(8'b00000001)
        , .TX_DQS_DELAY_VAL(8'b00000001), .FIFO_EN(1'b1), .FIFO_MODE(1'b0)
        , .FIFO_RD_PTR_MODE(3'b011), .DQS_MODE(3'b010), .CDR_EN(2'b01)
        , .HS_IO_CLK_SEL(9'b111001000), .DLL_CODE_SEL(2'b00), .CDR_CLK_SEL(12'b000000000000)
        , .READ_MARGIN_TEST_EN(1'b0), .WRITE_MARGIN_TEST_EN(1'b0), .CDR_CLK_DIV(3'b101)
        , .DIV_CLK_SEL(2'b00), .HS_IO_CLK_PAUSE_EN(1'b1), .QDR_EN(1'b0)
        , .DYN_ODT_MODE(1'b0), .DIV_CLK_EN_SRC(2'b11), .RANK_2_MODE(1'b0)
         )  I_LANECTRL (.RX_DATA_VALID(), .RX_BURST_DETECT(), 
        .RX_DELAY_LINE_OUT_OF_RANGE(), .TX_DELAY_LINE_OUT_OF_RANGE(), 
        .CLK_OUT_R(), .A_OUT_RST_N(A_OUT_RST_N), .FAB_CLK(FAB_CLK), 
        .RESET(RESET), .DDR_READ(GND_net), .READ_CLK_SEL({GND_net, 
        GND_net, GND_net}), .DELAY_LINE_SEL(GND_net), .DELAY_LINE_LOAD(
        GND_net), .DELAY_LINE_DIRECTION(GND_net), .DELAY_LINE_MOVE(
        GND_net), .HS_IO_CLK_PAUSE(
        HS_IO_CLK_PAUSE_SYNC_I_LANECTRL_PAUSE_SYNC_net), .DIV_CLK_EN_N(
        VCC_net), .RX_BIT_SLIP(GND_net), .CDR_CLK_A_SEL({GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net, GND_net})
        , .EYE_MONITOR_WIDTH_IN({EYE_MONITOR_WIDTH_IN[2], 
        EYE_MONITOR_WIDTH_IN[1], EYE_MONITOR_WIDTH_IN[0]}), .ODT_EN(
        GND_net), .CODE_UPDATE(GND_net), .DQS(GND_net), .DQS_N(GND_net)
        , .HS_IO_CLK({GND_net, GND_net, GND_net, GND_net, HS_IO_CLK[1], 
        HS_IO_CLK[0]}), .DLL_CODE({GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net}), .EYE_MONITOR_WIDTH_OUT({
        EYE_MONITOR_WIDTH_OUT[2], EYE_MONITOR_WIDTH_OUT[1], 
        EYE_MONITOR_WIDTH_OUT[0]}), .ODT_EN_SEL(), .RX_DQS_90({nc0, 
        RX_DQS_90[0]}), .TX_DQS(TX_DQS), .TX_DQS_270(TX_DQS_270), 
        .FIFO_WR_PTR({FIFO_WR_PTR[2], FIFO_WR_PTR[1], FIFO_WR_PTR[0]}), 
        .FIFO_RD_PTR({FIFO_RD_PTR[2], FIFO_RD_PTR[1], FIFO_RD_PTR[0]}), 
        .CDR_CLK(), .CDR_NEXT_CLK(), .ARST_N(ARST_N), .RX_SYNC_RST(
        RX_SYNC_RST), .TX_SYNC_RST(TX_SYNC_RST), .ODT_EN_OUT(), 
        .DDR_DO_READ(GND_net), .CDR_CLK_A_SEL_8(GND_net), 
        .CDR_CLK_A_SEL_9(GND_net), .CDR_CLK_A_SEL_10(GND_net), 
        .CDR_CLK_B_SEL({GND_net, GND_net, GND_net, GND_net, GND_net, 
        GND_net, GND_net, GND_net, GND_net, GND_net, GND_net}), 
        .SWITCH(GND_net), .CDR_CLR_NEXT_CLK_N(GND_net));
    PF_IOD_LVDS_RX_PF_LANECTRL_0_PF_LANECTRL_PAUSE_SYNC #( .ENABLE_PAUSE_EXTENSION(3'b011)
         )  I_LANECTRL_PAUSE_SYNC (.CLK(FAB_CLK), .RESET(RESET), 
        .HS_IO_CLK_PAUSE(HS_IO_CLK_PAUSE), .HS_IO_CLK_PAUSE_SYNC(
        HS_IO_CLK_PAUSE_SYNC_I_LANECTRL_PAUSE_SYNC_net));
    VCC vcc_inst (.Y(VCC_net));
    GND gnd_inst (.Y(GND_net));
    
endmodule
