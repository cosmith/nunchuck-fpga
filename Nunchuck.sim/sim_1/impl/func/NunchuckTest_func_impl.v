// Copyright 1986-2014 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2014.2 (win64) Build 932637 Wed Jun 11 13:33:10 MDT 2014
// Date        : Tue Dec 02 15:56:57 2014
// Host        : D226-10 running 64-bit Service Pack 1  (build 7601)
// Design      : Nunchuck
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Part        : xc7z020clg484-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module ClockGenerator
   (O1,
    Clk_IBUF_BUFG);
  output O1;
  input Clk_IBUF_BUFG;

  wire Clk_IBUF_BUFG;
  wire O1;
  wire clear;
  wire [31:0]counter_reg;
  wire n_0_Tick_i_10;
  wire n_0_Tick_i_12;
  wire n_0_Tick_i_13;
  wire n_0_Tick_i_14;
  wire n_0_Tick_i_15;
  wire n_0_Tick_i_16;
  wire n_0_Tick_i_17;
  wire n_0_Tick_i_18;
  wire n_0_Tick_i_19;
  wire n_0_Tick_i_21;
  wire n_0_Tick_i_22;
  wire n_0_Tick_i_23;
  wire n_0_Tick_i_24;
  wire n_0_Tick_i_25;
  wire n_0_Tick_i_26;
  wire n_0_Tick_i_27;
  wire n_0_Tick_i_28;
  wire n_0_Tick_i_29;
  wire n_0_Tick_i_3;
  wire n_0_Tick_i_30;
  wire n_0_Tick_i_31;
  wire n_0_Tick_i_32;
  wire n_0_Tick_i_33;
  wire n_0_Tick_i_34;
  wire n_0_Tick_i_4;
  wire n_0_Tick_i_5;
  wire n_0_Tick_i_6;
  wire n_0_Tick_i_7;
  wire n_0_Tick_i_8;
  wire n_0_Tick_i_9;
  wire n_0_Tick_reg_i_11;
  wire n_0_Tick_reg_i_2;
  wire n_0_Tick_reg_i_20;
  wire \n_0_counter[0]_i_5 ;
  wire \n_0_counter_reg[0]_i_1 ;
  wire \n_0_counter_reg[12]_i_1__0 ;
  wire \n_0_counter_reg[16]_i_1__0 ;
  wire \n_0_counter_reg[20]_i_1__0 ;
  wire \n_0_counter_reg[24]_i_1__0 ;
  wire \n_0_counter_reg[4]_i_1__0 ;
  wire \n_0_counter_reg[8]_i_1__0 ;
  wire \n_4_counter_reg[0]_i_1 ;
  wire \n_4_counter_reg[12]_i_1__0 ;
  wire \n_4_counter_reg[16]_i_1__0 ;
  wire \n_4_counter_reg[20]_i_1__0 ;
  wire \n_4_counter_reg[24]_i_1__0 ;
  wire \n_4_counter_reg[28]_i_1__0 ;
  wire \n_4_counter_reg[4]_i_1__0 ;
  wire \n_4_counter_reg[8]_i_1__0 ;
  wire \n_5_counter_reg[0]_i_1 ;
  wire \n_5_counter_reg[12]_i_1__0 ;
  wire \n_5_counter_reg[16]_i_1__0 ;
  wire \n_5_counter_reg[20]_i_1__0 ;
  wire \n_5_counter_reg[24]_i_1__0 ;
  wire \n_5_counter_reg[28]_i_1__0 ;
  wire \n_5_counter_reg[4]_i_1__0 ;
  wire \n_5_counter_reg[8]_i_1__0 ;
  wire \n_6_counter_reg[0]_i_1 ;
  wire \n_6_counter_reg[12]_i_1__0 ;
  wire \n_6_counter_reg[16]_i_1__0 ;
  wire \n_6_counter_reg[20]_i_1__0 ;
  wire \n_6_counter_reg[24]_i_1__0 ;
  wire \n_6_counter_reg[28]_i_1__0 ;
  wire \n_6_counter_reg[4]_i_1__0 ;
  wire \n_6_counter_reg[8]_i_1__0 ;
  wire \n_7_counter_reg[0]_i_1 ;
  wire \n_7_counter_reg[12]_i_1__0 ;
  wire \n_7_counter_reg[16]_i_1__0 ;
  wire \n_7_counter_reg[20]_i_1__0 ;
  wire \n_7_counter_reg[24]_i_1__0 ;
  wire \n_7_counter_reg[28]_i_1__0 ;
  wire \n_7_counter_reg[4]_i_1__0 ;
  wire \n_7_counter_reg[8]_i_1__0 ;
  wire [2:0]NLW_Tick_reg_i_1_CO_UNCONNECTED;
  wire [3:0]NLW_Tick_reg_i_1_O_UNCONNECTED;
  wire [2:0]NLW_Tick_reg_i_11_CO_UNCONNECTED;
  wire [3:0]NLW_Tick_reg_i_11_O_UNCONNECTED;
  wire [2:0]NLW_Tick_reg_i_2_CO_UNCONNECTED;
  wire [3:0]NLW_Tick_reg_i_2_O_UNCONNECTED;
  wire [2:0]NLW_Tick_reg_i_20_CO_UNCONNECTED;
  wire [3:0]NLW_Tick_reg_i_20_O_UNCONNECTED;
  wire [2:0]\NLW_counter_reg[0]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[28]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED ;

LUT2 #(
    .INIT(4'h1)) 
     Tick_i_10
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .O(n_0_Tick_i_10));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_12
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(n_0_Tick_i_12));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_13
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(n_0_Tick_i_13));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_14
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(n_0_Tick_i_14));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_15
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .O(n_0_Tick_i_15));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_16
       (.I0(counter_reg[22]),
        .I1(counter_reg[23]),
        .O(n_0_Tick_i_16));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_17
       (.I0(counter_reg[20]),
        .I1(counter_reg[21]),
        .O(n_0_Tick_i_17));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_18
       (.I0(counter_reg[18]),
        .I1(counter_reg[19]),
        .O(n_0_Tick_i_18));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_19
       (.I0(counter_reg[16]),
        .I1(counter_reg[17]),
        .O(n_0_Tick_i_19));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_21
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(n_0_Tick_i_21));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_22
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(n_0_Tick_i_22));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_23
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(n_0_Tick_i_23));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_24
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(n_0_Tick_i_24));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_25
       (.I0(counter_reg[14]),
        .I1(counter_reg[15]),
        .O(n_0_Tick_i_25));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_26
       (.I0(counter_reg[12]),
        .I1(counter_reg[13]),
        .O(n_0_Tick_i_26));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_27
       (.I0(counter_reg[10]),
        .I1(counter_reg[11]),
        .O(n_0_Tick_i_27));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_28
       (.I0(counter_reg[8]),
        .I1(counter_reg[9]),
        .O(n_0_Tick_i_28));
LUT2 #(
    .INIT(4'h8)) 
     Tick_i_29
       (.I0(counter_reg[2]),
        .I1(counter_reg[3]),
        .O(n_0_Tick_i_29));
LUT2 #(
    .INIT(4'h2)) 
     Tick_i_3
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(n_0_Tick_i_3));
LUT2 #(
    .INIT(4'h8)) 
     Tick_i_30
       (.I0(counter_reg[0]),
        .I1(counter_reg[1]),
        .O(n_0_Tick_i_30));
LUT2 #(
    .INIT(4'h8)) 
     Tick_i_31
       (.I0(counter_reg[6]),
        .I1(counter_reg[7]),
        .O(n_0_Tick_i_31));
LUT2 #(
    .INIT(4'h8)) 
     Tick_i_32
       (.I0(counter_reg[4]),
        .I1(counter_reg[5]),
        .O(n_0_Tick_i_32));
LUT2 #(
    .INIT(4'h2)) 
     Tick_i_33
       (.I0(counter_reg[3]),
        .I1(counter_reg[2]),
        .O(n_0_Tick_i_33));
LUT2 #(
    .INIT(4'h2)) 
     Tick_i_34
       (.I0(counter_reg[1]),
        .I1(counter_reg[0]),
        .O(n_0_Tick_i_34));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_4
       (.I0(counter_reg[28]),
        .I1(counter_reg[29]),
        .O(n_0_Tick_i_4));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_5
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .O(n_0_Tick_i_5));
LUT2 #(
    .INIT(4'hE)) 
     Tick_i_6
       (.I0(counter_reg[24]),
        .I1(counter_reg[25]),
        .O(n_0_Tick_i_6));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_7
       (.I0(counter_reg[30]),
        .I1(counter_reg[31]),
        .O(n_0_Tick_i_7));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_8
       (.I0(counter_reg[28]),
        .I1(counter_reg[29]),
        .O(n_0_Tick_i_8));
LUT2 #(
    .INIT(4'h1)) 
     Tick_i_9
       (.I0(counter_reg[26]),
        .I1(counter_reg[27]),
        .O(n_0_Tick_i_9));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     Tick_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(clear),
        .Q(O1),
        .R(1'b0));
CARRY4 Tick_reg_i_1
       (.CI(n_0_Tick_reg_i_2),
        .CO({clear,NLW_Tick_reg_i_1_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({n_0_Tick_i_3,n_0_Tick_i_4,n_0_Tick_i_5,n_0_Tick_i_6}),
        .O(NLW_Tick_reg_i_1_O_UNCONNECTED[3:0]),
        .S({n_0_Tick_i_7,n_0_Tick_i_8,n_0_Tick_i_9,n_0_Tick_i_10}));
CARRY4 Tick_reg_i_11
       (.CI(n_0_Tick_reg_i_20),
        .CO({n_0_Tick_reg_i_11,NLW_Tick_reg_i_11_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({n_0_Tick_i_21,n_0_Tick_i_22,n_0_Tick_i_23,n_0_Tick_i_24}),
        .O(NLW_Tick_reg_i_11_O_UNCONNECTED[3:0]),
        .S({n_0_Tick_i_25,n_0_Tick_i_26,n_0_Tick_i_27,n_0_Tick_i_28}));
CARRY4 Tick_reg_i_2
       (.CI(n_0_Tick_reg_i_11),
        .CO({n_0_Tick_reg_i_2,NLW_Tick_reg_i_2_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b0),
        .DI({n_0_Tick_i_12,n_0_Tick_i_13,n_0_Tick_i_14,n_0_Tick_i_15}),
        .O(NLW_Tick_reg_i_2_O_UNCONNECTED[3:0]),
        .S({n_0_Tick_i_16,n_0_Tick_i_17,n_0_Tick_i_18,n_0_Tick_i_19}));
CARRY4 Tick_reg_i_20
       (.CI(1'b0),
        .CO({n_0_Tick_reg_i_20,NLW_Tick_reg_i_20_CO_UNCONNECTED[2:0]}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,n_0_Tick_i_29,n_0_Tick_i_30}),
        .O(NLW_Tick_reg_i_20_O_UNCONNECTED[3:0]),
        .S({n_0_Tick_i_31,n_0_Tick_i_32,n_0_Tick_i_33,n_0_Tick_i_34}));
LUT1 #(
    .INIT(2'h1)) 
     \counter[0]_i_5 
       (.I0(counter_reg[0]),
        .O(\n_0_counter[0]_i_5 ));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_counter_reg[0]_i_1 ),
        .Q(counter_reg[0]),
        .R(clear));
CARRY4 \counter_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\n_0_counter_reg[0]_i_1 ,\NLW_counter_reg[0]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b1}),
        .O({\n_4_counter_reg[0]_i_1 ,\n_5_counter_reg[0]_i_1 ,\n_6_counter_reg[0]_i_1 ,\n_7_counter_reg[0]_i_1 }),
        .S({counter_reg[3:1],\n_0_counter[0]_i_5 }));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_counter_reg[8]_i_1__0 ),
        .Q(counter_reg[10]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_counter_reg[8]_i_1__0 ),
        .Q(counter_reg[11]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_counter_reg[12]_i_1__0 ),
        .Q(counter_reg[12]),
        .R(clear));
CARRY4 \counter_reg[12]_i_1__0 
       (.CI(\n_0_counter_reg[8]_i_1__0 ),
        .CO({\n_0_counter_reg[12]_i_1__0 ,\NLW_counter_reg[12]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[12]_i_1__0 ,\n_5_counter_reg[12]_i_1__0 ,\n_6_counter_reg[12]_i_1__0 ,\n_7_counter_reg[12]_i_1__0 }),
        .S(counter_reg[15:12]));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_counter_reg[12]_i_1__0 ),
        .Q(counter_reg[13]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_counter_reg[12]_i_1__0 ),
        .Q(counter_reg[14]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_counter_reg[12]_i_1__0 ),
        .Q(counter_reg[15]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_counter_reg[16]_i_1__0 ),
        .Q(counter_reg[16]),
        .R(clear));
CARRY4 \counter_reg[16]_i_1__0 
       (.CI(\n_0_counter_reg[12]_i_1__0 ),
        .CO({\n_0_counter_reg[16]_i_1__0 ,\NLW_counter_reg[16]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[16]_i_1__0 ,\n_5_counter_reg[16]_i_1__0 ,\n_6_counter_reg[16]_i_1__0 ,\n_7_counter_reg[16]_i_1__0 }),
        .S(counter_reg[19:16]));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_counter_reg[16]_i_1__0 ),
        .Q(counter_reg[17]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_counter_reg[16]_i_1__0 ),
        .Q(counter_reg[18]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_counter_reg[16]_i_1__0 ),
        .Q(counter_reg[19]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_counter_reg[0]_i_1 ),
        .Q(counter_reg[1]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_counter_reg[20]_i_1__0 ),
        .Q(counter_reg[20]),
        .R(clear));
CARRY4 \counter_reg[20]_i_1__0 
       (.CI(\n_0_counter_reg[16]_i_1__0 ),
        .CO({\n_0_counter_reg[20]_i_1__0 ,\NLW_counter_reg[20]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[20]_i_1__0 ,\n_5_counter_reg[20]_i_1__0 ,\n_6_counter_reg[20]_i_1__0 ,\n_7_counter_reg[20]_i_1__0 }),
        .S(counter_reg[23:20]));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_counter_reg[20]_i_1__0 ),
        .Q(counter_reg[21]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_counter_reg[20]_i_1__0 ),
        .Q(counter_reg[22]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_counter_reg[20]_i_1__0 ),
        .Q(counter_reg[23]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_counter_reg[24]_i_1__0 ),
        .Q(counter_reg[24]),
        .R(clear));
CARRY4 \counter_reg[24]_i_1__0 
       (.CI(\n_0_counter_reg[20]_i_1__0 ),
        .CO({\n_0_counter_reg[24]_i_1__0 ,\NLW_counter_reg[24]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[24]_i_1__0 ,\n_5_counter_reg[24]_i_1__0 ,\n_6_counter_reg[24]_i_1__0 ,\n_7_counter_reg[24]_i_1__0 }),
        .S(counter_reg[27:24]));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_counter_reg[24]_i_1__0 ),
        .Q(counter_reg[25]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[26] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_counter_reg[24]_i_1__0 ),
        .Q(counter_reg[26]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[27] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_counter_reg[24]_i_1__0 ),
        .Q(counter_reg[27]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[28] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_counter_reg[28]_i_1__0 ),
        .Q(counter_reg[28]),
        .R(clear));
CARRY4 \counter_reg[28]_i_1__0 
       (.CI(\n_0_counter_reg[24]_i_1__0 ),
        .CO(\NLW_counter_reg[28]_i_1__0_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[28]_i_1__0 ,\n_5_counter_reg[28]_i_1__0 ,\n_6_counter_reg[28]_i_1__0 ,\n_7_counter_reg[28]_i_1__0 }),
        .S(counter_reg[31:28]));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[29] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_counter_reg[28]_i_1__0 ),
        .Q(counter_reg[29]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_counter_reg[0]_i_1 ),
        .Q(counter_reg[2]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[30] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_counter_reg[28]_i_1__0 ),
        .Q(counter_reg[30]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[31] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_counter_reg[28]_i_1__0 ),
        .Q(counter_reg[31]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_counter_reg[0]_i_1 ),
        .Q(counter_reg[3]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_counter_reg[4]_i_1__0 ),
        .Q(counter_reg[4]),
        .R(clear));
CARRY4 \counter_reg[4]_i_1__0 
       (.CI(\n_0_counter_reg[0]_i_1 ),
        .CO({\n_0_counter_reg[4]_i_1__0 ,\NLW_counter_reg[4]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[4]_i_1__0 ,\n_5_counter_reg[4]_i_1__0 ,\n_6_counter_reg[4]_i_1__0 ,\n_7_counter_reg[4]_i_1__0 }),
        .S(counter_reg[7:4]));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_counter_reg[4]_i_1__0 ),
        .Q(counter_reg[5]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_5_counter_reg[4]_i_1__0 ),
        .Q(counter_reg[6]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_4_counter_reg[4]_i_1__0 ),
        .Q(counter_reg[7]),
        .R(clear));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_7_counter_reg[8]_i_1__0 ),
        .Q(counter_reg[8]),
        .R(clear));
CARRY4 \counter_reg[8]_i_1__0 
       (.CI(\n_0_counter_reg[4]_i_1__0 ),
        .CO({\n_0_counter_reg[8]_i_1__0 ,\NLW_counter_reg[8]_i_1__0_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[8]_i_1__0 ,\n_5_counter_reg[8]_i_1__0 ,\n_6_counter_reg[8]_i_1__0 ,\n_7_counter_reg[8]_i_1__0 }),
        .S(counter_reg[11:8]));
(* counter = "1" *) 
   FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\n_6_counter_reg[8]_i_1__0 ),
        .Q(counter_reg[9]),
        .R(clear));
endmodule

module FSMAddress
   (DoneAddress,
    Q,
    O12,
    O1,
    Clk_IBUF_BUFG,
    I1,
    GoAddress,
    I2,
    I22);
  output DoneAddress;
  output [0:0]Q;
  output O12;
  output O1;
  input Clk_IBUF_BUFG;
  input I1;
  input GoAddress;
  input I2;
  input I22;

  wire Clk_IBUF_BUFG;
  wire DoneAddress;
  wire GoAddress;
  wire I1;
  wire I2;
  wire I22;
  wire O1;
  wire O12;
  wire [0:0]Q;
  wire n_0_DoneAddress_i_1;
  wire n_0_DoneAddress_i_2;
  wire \n_0_FSM_onehot_state[0]_i_1 ;
  wire \n_0_FSM_onehot_state[0]_i_2 ;
  wire \n_0_FSM_onehot_state[1]_i_1__3 ;
  wire \n_0_FSM_onehot_state[2]_i_1__3 ;
  wire \n_0_FSM_onehot_state[3]_i_1__2 ;
  wire \n_0_FSM_onehot_state[4]_i_1__2 ;
  wire \n_0_FSM_onehot_state[5]_i_1__3 ;
  wire \n_0_FSM_onehot_state[5]_i_2 ;
  wire \n_0_FSM_onehot_state[6]_i_1__2 ;
  wire \n_0_FSM_onehot_state[7]_i_1__2 ;
  wire \n_0_FSM_onehot_state[7]_i_2__2 ;
  wire \n_0_FSM_onehot_state[7]_i_3 ;
  wire \n_0_FSM_onehot_state[7]_i_4 ;
  wire \n_0_FSM_onehot_state[7]_i_5 ;
  wire \n_0_FSM_onehot_state[7]_i_6 ;
  wire \n_0_FSM_onehot_state[7]_i_7 ;
  wire \n_0_FSM_onehot_state_reg[1] ;
  wire \n_0_FSM_onehot_state_reg[2] ;
  wire \n_0_FSM_onehot_state_reg[3] ;
  wire \n_0_FSM_onehot_state_reg[4] ;
  wire \n_0_FSM_onehot_state_reg[5] ;
  wire \n_0_FSM_onehot_state_reg[6] ;
  wire \n_0_FSM_onehot_state_reg[7] ;
  wire n_0_GoRead_i_23;
  wire n_0_GoRead_i_24;
  wire n_0_SDAOut_retimed_i_1__1;
  wire n_0_SDAOut_retimed_reg;

LUT6 #(
    .INIT(64'hFF3FFFFF20000000)) 
     DoneAddress_i_1
       (.I0(I2),
        .I1(Q),
        .I2(\n_0_FSM_onehot_state[0]_i_2 ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(n_0_DoneAddress_i_2),
        .I5(DoneAddress),
        .O(n_0_DoneAddress_i_1));
LUT2 #(
    .INIT(4'h1)) 
     DoneAddress_i_2
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .O(n_0_DoneAddress_i_2));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     DoneAddress_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_DoneAddress_i_1),
        .Q(DoneAddress),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0000000200080008)) 
     \FSM_onehot_state[0]_i_1 
       (.I0(\n_0_FSM_onehot_state[0]_i_2 ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(Q),
        .I4(I2),
        .I5(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_FSM_onehot_state[0]_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \FSM_onehot_state[0]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .O(\n_0_FSM_onehot_state[0]_i_2 ));
LUT6 #(
    .INIT(64'h0000000200000000)) 
     \FSM_onehot_state[1]_i_1__3 
       (.I0(\n_0_FSM_onehot_state[5]_i_2 ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(Q),
        .O(\n_0_FSM_onehot_state[1]_i_1__3 ));
LUT6 #(
    .INIT(64'h0000000400000000)) 
     \FSM_onehot_state[2]_i_1__3 
       (.I0(Q),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state[5]_i_2 ),
        .O(\n_0_FSM_onehot_state[2]_i_1__3 ));
LUT6 #(
    .INIT(64'h0000000400000000)) 
     \FSM_onehot_state[3]_i_1__2 
       (.I0(Q),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state[5]_i_2 ),
        .O(\n_0_FSM_onehot_state[3]_i_1__2 ));
LUT6 #(
    .INIT(64'h0000010000000000)) 
     \FSM_onehot_state[4]_i_1__2 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(Q),
        .I5(\n_0_FSM_onehot_state[5]_i_2 ),
        .O(\n_0_FSM_onehot_state[4]_i_1__2 ));
LUT6 #(
    .INIT(64'h0000010000000000)) 
     \FSM_onehot_state[5]_i_1__3 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(Q),
        .I5(\n_0_FSM_onehot_state[5]_i_2 ),
        .O(\n_0_FSM_onehot_state[5]_i_1__3 ));
LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_state[5]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .O(\n_0_FSM_onehot_state[5]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT4 #(
    .INIT(16'h0400)) 
     \FSM_onehot_state[6]_i_1__2 
       (.I0(Q),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state[7]_i_4 ),
        .O(\n_0_FSM_onehot_state[6]_i_1__2 ));
LUT3 #(
    .INIT(8'hF8)) 
     \FSM_onehot_state[7]_i_1__2 
       (.I0(GoAddress),
        .I1(\n_0_FSM_onehot_state[1]_i_1__3 ),
        .I2(\n_0_FSM_onehot_state[7]_i_3 ),
        .O(\n_0_FSM_onehot_state[7]_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair0" *) 
   LUT5 #(
    .INIT(32'h00200000)) 
     \FSM_onehot_state[7]_i_2__2 
       (.I0(I2),
        .I1(Q),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state[7]_i_4 ),
        .O(\n_0_FSM_onehot_state[7]_i_2__2 ));
LUT6 #(
    .INIT(64'h0222000200000000)) 
     \FSM_onehot_state[7]_i_3 
       (.I0(I2),
        .I1(Q),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(\n_0_FSM_onehot_state[7]_i_5 ),
        .I5(\n_0_FSM_onehot_state[7]_i_6 ),
        .O(\n_0_FSM_onehot_state[7]_i_3 ));
LUT5 #(
    .INIT(32'h00000001)) 
     \FSM_onehot_state[7]_i_4 
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(\n_0_FSM_onehot_state_reg[7] ),
        .O(\n_0_FSM_onehot_state[7]_i_4 ));
LUT5 #(
    .INIT(32'h00000001)) 
     \FSM_onehot_state[7]_i_5 
       (.I0(\n_0_FSM_onehot_state_reg[7] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .O(\n_0_FSM_onehot_state[7]_i_5 ));
LUT6 #(
    .INIT(64'h0001011700010116)) 
     \FSM_onehot_state[7]_i_6 
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[7] ),
        .I5(\n_0_FSM_onehot_state[7]_i_7 ),
        .O(\n_0_FSM_onehot_state[7]_i_6 ));
LUT2 #(
    .INIT(4'h6)) 
     \FSM_onehot_state[7]_i_7 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .O(\n_0_FSM_onehot_state[7]_i_7 ));
FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[7]_i_1__2 ),
        .D(\n_0_FSM_onehot_state[0]_i_1 ),
        .Q(Q),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[7]_i_1__2 ),
        .D(\n_0_FSM_onehot_state[1]_i_1__3 ),
        .Q(\n_0_FSM_onehot_state_reg[1] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[7]_i_1__2 ),
        .D(\n_0_FSM_onehot_state[2]_i_1__3 ),
        .Q(\n_0_FSM_onehot_state_reg[2] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[7]_i_1__2 ),
        .D(\n_0_FSM_onehot_state[3]_i_1__2 ),
        .Q(\n_0_FSM_onehot_state_reg[3] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[7]_i_1__2 ),
        .D(\n_0_FSM_onehot_state[4]_i_1__2 ),
        .Q(\n_0_FSM_onehot_state_reg[4] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[7]_i_1__2 ),
        .D(\n_0_FSM_onehot_state[5]_i_1__3 ),
        .Q(\n_0_FSM_onehot_state_reg[5] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[7]_i_1__2 ),
        .D(\n_0_FSM_onehot_state[6]_i_1__2 ),
        .Q(\n_0_FSM_onehot_state_reg[6] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[7]_i_1__2 ),
        .D(\n_0_FSM_onehot_state[7]_i_2__2 ),
        .Q(\n_0_FSM_onehot_state_reg[7] ),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFEFEFCFFFEFEFC00)) 
     GoRead_i_16
       (.I0(GoAddress),
        .I1(n_0_GoRead_i_23),
        .I2(n_0_GoRead_i_24),
        .I3(\n_0_FSM_onehot_state[7]_i_3 ),
        .I4(\n_0_FSM_onehot_state[1]_i_1__3 ),
        .I5(I22),
        .O(O12));
LUT6 #(
    .INIT(64'h0002020000000000)) 
     GoRead_i_23
       (.I0(I1),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state[5]_i_2 ),
        .O(n_0_GoRead_i_23));
LUT6 #(
    .INIT(64'h88F8F88800000000)) 
     GoRead_i_24
       (.I0(\n_0_FSM_onehot_state[7]_i_5 ),
        .I1(\n_0_FSM_onehot_state[7]_i_7 ),
        .I2(\n_0_FSM_onehot_state[7]_i_4 ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .I5(I1),
        .O(n_0_GoRead_i_24));
LUT2 #(
    .INIT(4'h8)) 
     GoRead_i_7
       (.I0(n_0_SDAOut_retimed_reg),
        .I1(I22),
        .O(O1));
LUT5 #(
    .INIT(32'hFFEFFFE0)) 
     SDAOut_retimed_i_1__1
       (.I0(\n_0_FSM_onehot_state[3]_i_1__2 ),
        .I1(\n_0_FSM_onehot_state[6]_i_1__2 ),
        .I2(\n_0_FSM_onehot_state[7]_i_3 ),
        .I3(\n_0_FSM_onehot_state[1]_i_1__3 ),
        .I4(n_0_SDAOut_retimed_reg),
        .O(n_0_SDAOut_retimed_i_1__1));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     SDAOut_retimed_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_SDAOut_retimed_i_1__1),
        .Q(n_0_SDAOut_retimed_reg),
        .R(1'b0));
endmodule

module FSMI2CTransitions
   (GoAddress,
    GoRead,
    GoWrite,
    Stop,
    O3,
    O1,
    O5,
    O6,
    O2,
    O4,
    O7,
    O8,
    O9,
    O10,
    O11,
    O13,
    Clk_IBUF_BUFG,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    InternalStart,
    I10,
    I11,
    I13,
    D,
    state,
    Start,
    SCLTick,
    DoneRead,
    DoneWrite,
    I12,
    DoneAddress,
    ReadWrite,
    I14,
    I15,
    I16,
    I18,
    I19,
    I20,
    I17,
    I21,
    I22,
    I23,
    I24);
  output GoAddress;
  output GoRead;
  output GoWrite;
  output Stop;
  output O3;
  output O1;
  output O5;
  output O6;
  output O2;
  output O4;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O13;
  input Clk_IBUF_BUFG;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input InternalStart;
  input I10;
  input I11;
  input I13;
  input [0:0]D;
  input state;
  input Start;
  input SCLTick;
  input DoneRead;
  input DoneWrite;
  input I12;
  input DoneAddress;
  input ReadWrite;
  input I14;
  input I15;
  input I16;
  input I18;
  input I19;
  input I20;
  input I17;
  input I21;
  input I22;
  input I23;
  input I24;

  wire Clk_IBUF_BUFG;
  wire [0:0]D;
  wire DoneAddress;
  wire DoneRead;
  wire DoneWrite;
  wire GoAddress;
  wire GoRead;
  wire GoStartSCL;
  wire GoWrite;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire I2;
  wire I20;
  wire I22;
  wire I23;
  wire I24;
  wire I3;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire InternalStart;
  wire O1;
  wire O10;
  wire O11;
  wire O13;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire ReadWrite;
  wire SCLTick;
  wire Start;
  wire Stop;
  wire \n_0_FSM_onehot_state[10]_i_1 ;
  wire \n_0_FSM_onehot_state[10]_i_2 ;
  wire \n_0_FSM_onehot_state[10]_i_3__0 ;
  wire \n_0_FSM_onehot_state[10]_i_4 ;
  wire \n_0_FSM_onehot_state[11]_i_1__1 ;
  wire \n_0_FSM_onehot_state[11]_i_2 ;
  wire \n_0_FSM_onehot_state[11]_i_3__0 ;
  wire \n_0_FSM_onehot_state[11]_i_4 ;
  wire \n_0_FSM_onehot_state[11]_i_5 ;
  wire \n_0_FSM_onehot_state[11]_i_6 ;
  wire \n_0_FSM_onehot_state[11]_i_7 ;
  wire \n_0_FSM_onehot_state[1]_i_1__0 ;
  wire \n_0_FSM_onehot_state[1]_i_2 ;
  wire \n_0_FSM_onehot_state[1]_i_2__0 ;
  wire \n_0_FSM_onehot_state[2]_i_1__0 ;
  wire \n_0_FSM_onehot_state[2]_i_2__0 ;
  wire \n_0_FSM_onehot_state[3]_i_1 ;
  wire \n_0_FSM_onehot_state[3]_i_2 ;
  wire \n_0_FSM_onehot_state[4]_i_1 ;
  wire \n_0_FSM_onehot_state[4]_i_2 ;
  wire \n_0_FSM_onehot_state[4]_i_3 ;
  wire \n_0_FSM_onehot_state[4]_i_4 ;
  wire \n_0_FSM_onehot_state[5]_i_1__0 ;
  wire \n_0_FSM_onehot_state[6]_i_1 ;
  wire \n_0_FSM_onehot_state[6]_i_2__0 ;
  wire \n_0_FSM_onehot_state[7]_i_1__0 ;
  wire \n_0_FSM_onehot_state[7]_i_2 ;
  wire \n_0_FSM_onehot_state[8]_i_1 ;
  wire \n_0_FSM_onehot_state[8]_i_2 ;
  wire \n_0_FSM_onehot_state[9]_i_1 ;
  wire \n_0_FSM_onehot_state[9]_i_2__0 ;
  wire \n_0_FSM_onehot_state_reg[10] ;
  wire \n_0_FSM_onehot_state_reg[11] ;
  wire \n_0_FSM_onehot_state_reg[1] ;
  wire \n_0_FSM_onehot_state_reg[2] ;
  wire \n_0_FSM_onehot_state_reg[3] ;
  wire \n_0_FSM_onehot_state_reg[4] ;
  wire \n_0_FSM_onehot_state_reg[5] ;
  wire \n_0_FSM_onehot_state_reg[6] ;
  wire \n_0_FSM_onehot_state_reg[7] ;
  wire \n_0_FSM_onehot_state_reg[8] ;
  wire \n_0_FSM_onehot_state_reg[9] ;
  wire n_0_GoAddress_i_1;
  wire n_0_GoAddress_i_2;
  wire n_0_GoAddress_i_3;
  wire n_0_GoRead_i_1;
  wire n_0_GoRead_i_18;
  wire n_0_GoRead_i_19;
  wire n_0_GoRead_i_20;
  wire n_0_GoRead_i_21;
  wire n_0_GoRead_i_25;
  wire n_0_GoRead_i_26;
  wire n_0_GoRead_i_3;
  wire n_0_GoRead_i_6;
  wire n_0_GoStartSCL_i_1;
  wire n_0_GoWrite_i_1;
  wire n_0_GoWrite_i_2;
  wire n_0_SDAOut_retimed_i_1;
  wire n_0_SDAOut_retimed_i_2;
  wire n_0_SDAOut_retimed_i_3;
  wire n_0_SDAOut_retimed_reg;
  wire n_0_StopCommand_i_1;
  wire n_0_StopCommand_i_2;
  wire \n_0_counter[31]_i_3 ;
  wire state;

LUT6 #(
    .INIT(64'h8888888888F88888)) 
     \FSM_onehot_state[10]_i_1 
       (.I0(\n_0_FSM_onehot_state[10]_i_2 ),
        .I1(\n_0_FSM_onehot_state[10]_i_3__0 ),
        .I2(\n_0_FSM_onehot_state[10]_i_4 ),
        .I3(\n_0_FSM_onehot_state_reg[8] ),
        .I4(\n_0_FSM_onehot_state_reg[10] ),
        .I5(DoneWrite),
        .O(\n_0_FSM_onehot_state[10]_i_1 ));
LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_state[10]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state[4]_i_3 ),
        .O(\n_0_FSM_onehot_state[10]_i_2 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \FSM_onehot_state[10]_i_3__0 
       (.I0(I17),
        .I1(\n_0_FSM_onehot_state_reg[11] ),
        .I2(ReadWrite),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .I5(\n_0_FSM_onehot_state_reg[5] ),
        .O(\n_0_FSM_onehot_state[10]_i_3__0 ));
LUT4 #(
    .INIT(16'h0002)) 
     \FSM_onehot_state[10]_i_4 
       (.I0(\n_0_FSM_onehot_state[11]_i_5 ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[9] ),
        .O(\n_0_FSM_onehot_state[10]_i_4 ));
LUT5 #(
    .INIT(32'hEFEECCCC)) 
     \FSM_onehot_state[11]_i_1__1 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state[11]_i_3__0 ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(I16),
        .I4(\n_0_FSM_onehot_state[11]_i_4 ),
        .O(\n_0_FSM_onehot_state[11]_i_1__1 ));
LUT6 #(
    .INIT(64'h0000010000000000)) 
     \FSM_onehot_state[11]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[8] ),
        .I1(\n_0_FSM_onehot_state_reg[10] ),
        .I2(\n_0_FSM_onehot_state_reg[9] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[2] ),
        .I5(\n_0_FSM_onehot_state[11]_i_5 ),
        .O(\n_0_FSM_onehot_state[11]_i_2 ));
LUT6 #(
    .INIT(64'hFFF0F0F0FEFEF4F4)) 
     \FSM_onehot_state[11]_i_3__0 
       (.I0(\n_0_FSM_onehot_state[11]_i_6 ),
        .I1(SCLTick),
        .I2(\n_0_FSM_onehot_state[11]_i_7 ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(I12),
        .I5(\n_0_FSM_onehot_state[11]_i_4 ),
        .O(\n_0_FSM_onehot_state[11]_i_3__0 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_state[11]_i_4 
       (.I0(\n_0_FSM_onehot_state_reg[7] ),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .I2(\n_0_FSM_onehot_state_reg[8] ),
        .I3(\n_0_FSM_onehot_state_reg[10] ),
        .I4(\n_0_FSM_onehot_state_reg[5] ),
        .I5(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_FSM_onehot_state[11]_i_4 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_state[11]_i_5 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[11] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .I5(\n_0_FSM_onehot_state_reg[3] ),
        .O(\n_0_FSM_onehot_state[11]_i_5 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[11]_i_6 
       (.I0(\n_0_FSM_onehot_state_reg[7] ),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .O(\n_0_FSM_onehot_state[11]_i_6 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[11]_i_7 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .O(\n_0_FSM_onehot_state[11]_i_7 ));
LUT6 #(
    .INIT(64'hAAAAABBBAAAAA888)) 
     \FSM_onehot_state[1]_i_1 
       (.I0(\n_0_FSM_onehot_state[1]_i_2 ),
        .I1(I1),
        .I2(I2),
        .I3(O1),
        .I4(I3),
        .I5(I5),
        .O(O5));
LUT6 #(
    .INIT(64'h0000000000030A0A)) 
     \FSM_onehot_state[1]_i_1__0 
       (.I0(\n_0_FSM_onehot_state[1]_i_2__0 ),
        .I1(\n_0_FSM_onehot_state[4]_i_3 ),
        .I2(\n_0_FSM_onehot_state[4]_i_2 ),
        .I3(Start),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(\n_0_FSM_onehot_state_reg[4] ),
        .O(\n_0_FSM_onehot_state[1]_i_1__0 ));
LUT6 #(
    .INIT(64'h8888000088F80000)) 
     \FSM_onehot_state[1]_i_2 
       (.I0(I6),
        .I1(I7),
        .I2(I8),
        .I3(I9),
        .I4(Stop),
        .I5(InternalStart),
        .O(\n_0_FSM_onehot_state[1]_i_2 ));
LUT5 #(
    .INIT(32'h00000004)) 
     \FSM_onehot_state[1]_i_2__0 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[10] ),
        .I4(\n_0_FSM_onehot_state_reg[8] ),
        .O(\n_0_FSM_onehot_state[1]_i_2__0 ));
LUT6 #(
    .INIT(64'h0003000A0000000A)) 
     \FSM_onehot_state[2]_i_1__0 
       (.I0(\n_0_FSM_onehot_state[2]_i_2__0 ),
        .I1(\n_0_FSM_onehot_state[4]_i_3 ),
        .I2(\n_0_FSM_onehot_state[4]_i_2 ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(Start),
        .O(\n_0_FSM_onehot_state[2]_i_1__0 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \FSM_onehot_state[2]_i_2__0 
       (.I0(I12),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[9] ),
        .I4(\n_0_FSM_onehot_state_reg[8] ),
        .I5(\n_0_FSM_onehot_state_reg[10] ),
        .O(\n_0_FSM_onehot_state[2]_i_2__0 ));
(* SOFT_HLUTNM = "soft_lutpair12" *) 
   LUT4 #(
    .INIT(16'h8000)) 
     \FSM_onehot_state[3]_i_1 
       (.I0(\n_0_FSM_onehot_state[3]_i_2 ),
        .I1(I12),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state[11]_i_5 ),
        .O(\n_0_FSM_onehot_state[3]_i_1 ));
LUT4 #(
    .INIT(16'h0001)) 
     \FSM_onehot_state[3]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[10] ),
        .I1(\n_0_FSM_onehot_state_reg[8] ),
        .I2(\n_0_FSM_onehot_state_reg[9] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .O(\n_0_FSM_onehot_state[3]_i_2 ));
LUT6 #(
    .INIT(64'h0000010F00000100)) 
     \FSM_onehot_state[4]_i_1 
       (.I0(\n_0_FSM_onehot_state[4]_i_2 ),
        .I1(DoneAddress),
        .I2(\n_0_FSM_onehot_state_reg[1] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(\n_0_FSM_onehot_state[4]_i_3 ),
        .I5(\n_0_FSM_onehot_state[4]_i_4 ),
        .O(\n_0_FSM_onehot_state[4]_i_1 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_state[4]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .O(\n_0_FSM_onehot_state[4]_i_2 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \FSM_onehot_state[4]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[10] ),
        .I1(\n_0_FSM_onehot_state_reg[8] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[9] ),
        .O(\n_0_FSM_onehot_state[4]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \FSM_onehot_state[4]_i_4 
       (.I0(\n_0_FSM_onehot_state_reg[11] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_FSM_onehot_state[4]_i_4 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h20000000)) 
     \FSM_onehot_state[5]_i_1__0 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(ReadWrite),
        .I3(DoneAddress),
        .I4(\n_0_FSM_onehot_state[6]_i_2__0 ),
        .O(\n_0_FSM_onehot_state[5]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair5" *) 
   LUT5 #(
    .INIT(32'h00200000)) 
     \FSM_onehot_state[6]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(DoneAddress),
        .I3(ReadWrite),
        .I4(\n_0_FSM_onehot_state[6]_i_2__0 ),
        .O(\n_0_FSM_onehot_state[6]_i_1 ));
LUT4 #(
    .INIT(16'hF200)) 
     \FSM_onehot_state[6]_i_11 
       (.I0(I15),
        .I1(I10),
        .I2(Stop),
        .I3(I12),
        .O(O1));
LUT6 #(
    .INIT(64'hFFFFFFFFFFBABABA)) 
     \FSM_onehot_state[6]_i_2 
       (.I0(O2),
        .I1(I10),
        .I2(I11),
        .I3(I2),
        .I4(O1),
        .I5(I3),
        .O(O6));
LUT5 #(
    .INIT(32'h00000001)) 
     \FSM_onehot_state[6]_i_2__0 
       (.I0(\n_0_FSM_onehot_state[4]_i_3 ),
        .I1(\n_0_FSM_onehot_state_reg[11] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .O(\n_0_FSM_onehot_state[6]_i_2__0 ));
LUT6 #(
    .INIT(64'hEEEE00C000000000)) 
     \FSM_onehot_state[6]_i_8 
       (.I0(I4),
        .I1(I9),
        .I2(I15),
        .I3(I10),
        .I4(Stop),
        .I5(I12),
        .O(O2));
LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_state[6]_i_9 
       (.I0(I4),
        .I1(I5),
        .I2(Stop),
        .O(O8));
LUT6 #(
    .INIT(64'hAAAAABBBAAAAA888)) 
     \FSM_onehot_state[7]_i_1 
       (.I0(\n_0_FSM_onehot_state[7]_i_2 ),
        .I1(I1),
        .I2(I2),
        .I3(O1),
        .I4(I3),
        .I5(I4),
        .O(O3));
(* SOFT_HLUTNM = "soft_lutpair4" *) 
   LUT5 #(
    .INIT(32'h00060000)) 
     \FSM_onehot_state[7]_i_1__0 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .I4(\n_0_FSM_onehot_state[10]_i_2 ),
        .O(\n_0_FSM_onehot_state[7]_i_1__0 ));
LUT6 #(
    .INIT(64'h0000000000000014)) 
     \FSM_onehot_state[7]_i_2 
       (.I0(InternalStart),
        .I1(I13),
        .I2(I4),
        .I3(D),
        .I4(Stop),
        .I5(I5),
        .O(\n_0_FSM_onehot_state[7]_i_2 ));
LUT6 #(
    .INIT(64'h8888888888F88888)) 
     \FSM_onehot_state[8]_i_1 
       (.I0(\n_0_FSM_onehot_state[10]_i_2 ),
        .I1(\n_0_FSM_onehot_state[8]_i_2 ),
        .I2(\n_0_FSM_onehot_state[10]_i_4 ),
        .I3(\n_0_FSM_onehot_state_reg[10] ),
        .I4(\n_0_FSM_onehot_state_reg[8] ),
        .I5(DoneRead),
        .O(\n_0_FSM_onehot_state[8]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000040)) 
     \FSM_onehot_state[8]_i_2 
       (.I0(I17),
        .I1(\n_0_FSM_onehot_state_reg[11] ),
        .I2(ReadWrite),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .I5(\n_0_FSM_onehot_state_reg[5] ),
        .O(\n_0_FSM_onehot_state[8]_i_2 ));
LUT6 #(
    .INIT(64'hFFFFFFFF58000800)) 
     \FSM_onehot_state[9]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[8] ),
        .I1(DoneRead),
        .I2(\n_0_FSM_onehot_state_reg[10] ),
        .I3(\n_0_FSM_onehot_state[10]_i_4 ),
        .I4(DoneWrite),
        .I5(\n_0_FSM_onehot_state[9]_i_2__0 ),
        .O(\n_0_FSM_onehot_state[9]_i_1 ));
LUT6 #(
    .INIT(64'h0000000800000000)) 
     \FSM_onehot_state[9]_i_2__0 
       (.I0(I17),
        .I1(\n_0_FSM_onehot_state_reg[11] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state[10]_i_2 ),
        .O(\n_0_FSM_onehot_state[9]_i_2__0 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[10]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[10] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[11]_i_2 ),
        .Q(\n_0_FSM_onehot_state_reg[11] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[1]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[1] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[2]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[2] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[3]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[3] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[4]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[4] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[5]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[5] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[6]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[6] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[7]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[7] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[8]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[8] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[11]_i_1__1 ),
        .D(\n_0_FSM_onehot_state[9]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[9] ),
        .R(1'b0));
LUT6 #(
    .INIT(64'h88888FFF88888000)) 
     GoAddress_i_1
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(I12),
        .I2(\n_0_FSM_onehot_state[3]_i_2 ),
        .I3(n_0_GoAddress_i_2),
        .I4(n_0_GoAddress_i_3),
        .I5(GoAddress),
        .O(n_0_GoAddress_i_1));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     GoAddress_i_2
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(I12),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(\n_0_FSM_onehot_state_reg[4] ),
        .O(n_0_GoAddress_i_2));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT2 #(
    .INIT(4'h2)) 
     GoAddress_i_3
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(Start),
        .O(n_0_GoAddress_i_3));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     GoAddress_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_GoAddress_i_1),
        .Q(GoAddress),
        .R(1'b0));
LUT6 #(
    .INIT(64'hCF0FCF0FC400C000)) 
     GoRead_i_1
       (.I0(I17),
        .I1(\n_0_FSM_onehot_state_reg[11] ),
        .I2(n_0_GoRead_i_3),
        .I3(ReadWrite),
        .I4(I16),
        .I5(GoRead),
        .O(n_0_GoRead_i_1));
LUT5 #(
    .INIT(32'hFEFFFE00)) 
     GoRead_i_14
       (.I0(n_0_GoRead_i_18),
        .I1(n_0_GoRead_i_19),
        .I2(n_0_GoRead_i_20),
        .I3(n_0_GoRead_i_21),
        .I4(I20),
        .O(O11));
LUT6 #(
    .INIT(64'hFFFFFFFEFFEAFEEA)) 
     GoRead_i_18
       (.I0(n_0_GoRead_i_25),
        .I1(\n_0_FSM_onehot_state_reg[10] ),
        .I2(\n_0_FSM_onehot_state[11]_i_6 ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state[4]_i_2 ),
        .I5(\n_0_FSM_onehot_state_reg[8] ),
        .O(n_0_GoRead_i_18));
LUT5 #(
    .INIT(32'h00FF00E0)) 
     GoRead_i_19
       (.I0(I12),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[9] ),
        .I3(n_0_GoRead_i_26),
        .I4(\n_0_FSM_onehot_state[4]_i_2 ),
        .O(n_0_GoRead_i_19));
LUT4 #(
    .INIT(16'hFE03)) 
     GoRead_i_20
       (.I0(Start),
        .I1(\n_0_FSM_onehot_state[4]_i_3 ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .O(n_0_GoRead_i_20));
LUT6 #(
    .INIT(64'hAAA8AAA8AAA8AAAB)) 
     GoRead_i_21
       (.I0(I12),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .I5(\n_0_FSM_onehot_state_reg[11] ),
        .O(n_0_GoRead_i_21));
LUT3 #(
    .INIT(8'hC8)) 
     GoRead_i_25
       (.I0(\n_0_FSM_onehot_state[4]_i_3 ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(DoneAddress),
        .O(n_0_GoRead_i_25));
LUT6 #(
    .INIT(64'h0000000000000013)) 
     GoRead_i_26
       (.I0(\n_0_FSM_onehot_state_reg[8] ),
        .I1(\n_0_FSM_onehot_state[4]_i_2 ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state_reg[9] ),
        .I5(\n_0_FSM_onehot_state_reg[10] ),
        .O(n_0_GoRead_i_26));
LUT4 #(
    .INIT(16'h8F88)) 
     GoRead_i_3
       (.I0(SCLTick),
        .I1(\n_0_FSM_onehot_state_reg[8] ),
        .I2(Start),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .O(n_0_GoRead_i_3));
LUT2 #(
    .INIT(4'h8)) 
     GoRead_i_32
       (.I0(GoWrite),
        .I1(I12),
        .O(O7));
LUT2 #(
    .INIT(4'hE)) 
     GoRead_i_4
       (.I0(n_0_GoRead_i_6),
        .I1(I24),
        .O(O13));
LUT4 #(
    .INIT(16'hF888)) 
     GoRead_i_6
       (.I0(n_0_SDAOut_retimed_reg),
        .I1(I20),
        .I2(I22),
        .I3(I23),
        .O(n_0_GoRead_i_6));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     GoRead_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_GoRead_i_1),
        .Q(GoRead),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair11" *) 
   LUT4 #(
    .INIT(16'hFB08)) 
     GoStartSCL_i_1
       (.I0(Start),
        .I1(\n_0_FSM_onehot_state[6]_i_2__0 ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(GoStartSCL),
        .O(n_0_GoStartSCL_i_1));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     GoStartSCL_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_GoStartSCL_i_1),
        .Q(GoStartSCL),
        .R(1'b0));
LUT6 #(
    .INIT(64'hCF0FCF0FC000C400)) 
     GoWrite_i_1
       (.I0(I17),
        .I1(\n_0_FSM_onehot_state_reg[11] ),
        .I2(n_0_GoWrite_i_2),
        .I3(I16),
        .I4(ReadWrite),
        .I5(GoWrite),
        .O(n_0_GoWrite_i_1));
LUT4 #(
    .INIT(16'h8F88)) 
     GoWrite_i_2
       (.I0(SCLTick),
        .I1(\n_0_FSM_onehot_state_reg[10] ),
        .I2(Start),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .O(n_0_GoWrite_i_2));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     GoWrite_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_GoWrite_i_1),
        .Q(GoWrite),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h8B)) 
     SCL_i_4
       (.I0(Stop),
        .I1(state),
        .I2(GoStartSCL),
        .O(O4));
LUT6 #(
    .INIT(64'hBFBFBFBA8080808A)) 
     SDAOut_retimed_i_1
       (.I0(n_0_SDAOut_retimed_i_2),
        .I1(I12),
        .I2(n_0_SDAOut_retimed_i_3),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state_reg[11] ),
        .I5(n_0_SDAOut_retimed_reg),
        .O(n_0_SDAOut_retimed_i_1));
LUT5 #(
    .INIT(32'hCFCACACA)) 
     SDAOut_retimed_i_2
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(ReadWrite),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(I12),
        .I4(\n_0_FSM_onehot_state_reg[9] ),
        .O(n_0_SDAOut_retimed_i_2));
LUT3 #(
    .INIT(8'hFE)) 
     SDAOut_retimed_i_3
       (.I0(\n_0_FSM_onehot_state_reg[9] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .O(n_0_SDAOut_retimed_i_3));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     SDAOut_retimed_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_SDAOut_retimed_i_1),
        .Q(n_0_SDAOut_retimed_reg),
        .R(1'b0));
LUT6 #(
    .INIT(64'h888F8F8F88808080)) 
     StopCommand_i_1
       (.I0(\n_0_FSM_onehot_state_reg[11] ),
        .I1(I16),
        .I2(n_0_StopCommand_i_2),
        .I3(I12),
        .I4(\n_0_FSM_onehot_state_reg[9] ),
        .I5(Stop),
        .O(n_0_StopCommand_i_1));
LUT3 #(
    .INIT(8'h80)) 
     StopCommand_i_2
       (.I0(\n_0_FSM_onehot_state_reg[11] ),
        .I1(I16),
        .I2(I17),
        .O(n_0_StopCommand_i_2));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     StopCommand_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_StopCommand_i_1),
        .Q(Stop),
        .R(1'b0));
LUT6 #(
    .INIT(64'h0222022200220222)) 
     \counter[31]_i_1__0 
       (.I0(I12),
        .I1(\n_0_counter[31]_i_3 ),
        .I2(I5),
        .I3(I18),
        .I4(I19),
        .I5(Stop),
        .O(O10));
LUT4 #(
    .INIT(16'h4440)) 
     \counter[31]_i_3 
       (.I0(Stop),
        .I1(I4),
        .I2(I14),
        .I3(I10),
        .O(\n_0_counter[31]_i_3 ));
(* SOFT_HLUTNM = "soft_lutpair15" *) 
   LUT3 #(
    .INIT(8'h3A)) 
     state_i_1
       (.I0(GoStartSCL),
        .I1(Stop),
        .I2(state),
        .O(O9));
endmodule

module FSMRead
   (DoneRead,
    Q,
    O1,
    O7,
    Clk_IBUF_BUFG,
    I1,
    I17,
    I2);
  output DoneRead;
  output [0:0]Q;
  output O1;
  output O7;
  input Clk_IBUF_BUFG;
  input I1;
  input I17;
  input I2;

  wire Clk_IBUF_BUFG;
  wire DoneRead;
  wire I1;
  wire I17;
  wire I2;
  wire O1;
  wire O7;
  wire [0:0]Q;
  wire n_0_DoneRead_i_1;
  wire n_0_DoneRead_i_2;
  wire \n_0_FSM_onehot_state[10]_i_1__1 ;
  wire \n_0_FSM_onehot_state[11]_i_2__0 ;
  wire \n_0_FSM_onehot_state[1]_i_1__2 ;
  wire \n_0_FSM_onehot_state[2]_i_1__2 ;
  wire \n_0_FSM_onehot_state[3]_i_1__1 ;
  wire \n_0_FSM_onehot_state[4]_i_1__1 ;
  wire \n_0_FSM_onehot_state[5]_i_1__2 ;
  wire \n_0_FSM_onehot_state[6]_i_1__1 ;
  wire \n_0_FSM_onehot_state[7]_i_1__3 ;
  wire \n_0_FSM_onehot_state[7]_i_2__1 ;
  wire \n_0_FSM_onehot_state[8]_i_1__1 ;
  wire \n_0_FSM_onehot_state[9]_i_1__1 ;
  wire \n_0_FSM_onehot_state[9]_i_2 ;
  wire \n_0_FSM_onehot_state[9]_i_3 ;
  wire \n_0_FSM_onehot_state_reg[10] ;
  wire \n_0_FSM_onehot_state_reg[11] ;
  wire \n_0_FSM_onehot_state_reg[2] ;
  wire \n_0_FSM_onehot_state_reg[3] ;
  wire \n_0_FSM_onehot_state_reg[4] ;
  wire \n_0_FSM_onehot_state_reg[5] ;
  wire \n_0_FSM_onehot_state_reg[6] ;
  wire \n_0_FSM_onehot_state_reg[7] ;
  wire \n_0_FSM_onehot_state_reg[8] ;
  wire \n_0_FSM_onehot_state_reg[9] ;
  wire n_0_GoRead_i_17;

LUT6 #(
    .INIT(64'hAA00EFFFAA002000)) 
     DoneRead_i_1
       (.I0(\n_0_FSM_onehot_state_reg[10] ),
        .I1(O1),
        .I2(n_0_DoneRead_i_2),
        .I3(I1),
        .I4(Q),
        .I5(DoneRead),
        .O(n_0_DoneRead_i_1));
LUT2 #(
    .INIT(4'h1)) 
     DoneRead_i_2
       (.I0(\n_0_FSM_onehot_state_reg[11] ),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .O(n_0_DoneRead_i_2));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     DoneRead_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_DoneRead_i_1),
        .Q(DoneRead),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'h00000002)) 
     \FSM_onehot_state[10]_i_1__1 
       (.I0(\n_0_FSM_onehot_state_reg[9] ),
        .I1(Q),
        .I2(\n_0_FSM_onehot_state_reg[10] ),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .I4(O1),
        .O(\n_0_FSM_onehot_state[10]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair17" *) 
   LUT5 #(
    .INIT(32'h00000010)) 
     \FSM_onehot_state[11]_i_2__0 
       (.I0(\n_0_FSM_onehot_state_reg[11] ),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .I2(\n_0_FSM_onehot_state_reg[10] ),
        .I3(Q),
        .I4(O1),
        .O(\n_0_FSM_onehot_state[11]_i_2__0 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_state[11]_i_3 
       (.I0(\n_0_FSM_onehot_state[9]_i_2 ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[8] ),
        .O(O1));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h00000010)) 
     \FSM_onehot_state[1]_i_1__2 
       (.I0(Q),
        .I1(\n_0_FSM_onehot_state_reg[10] ),
        .I2(\n_0_FSM_onehot_state_reg[11] ),
        .I3(\n_0_FSM_onehot_state_reg[9] ),
        .I4(O1),
        .O(\n_0_FSM_onehot_state[1]_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair16" *) 
   LUT5 #(
    .INIT(32'h00000010)) 
     \FSM_onehot_state[2]_i_1__2 
       (.I0(\n_0_FSM_onehot_state_reg[11] ),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .I2(Q),
        .I3(\n_0_FSM_onehot_state_reg[10] ),
        .I4(O1),
        .O(\n_0_FSM_onehot_state[2]_i_1__2 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \FSM_onehot_state[3]_i_1__1 
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .O(\n_0_FSM_onehot_state[3]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'h00040000)) 
     \FSM_onehot_state[4]_i_1__1 
       (.I0(\n_0_FSM_onehot_state[9]_i_2 ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[8] ),
        .I3(\n_0_FSM_onehot_state_reg[7] ),
        .I4(\n_0_FSM_onehot_state[9]_i_3 ),
        .O(\n_0_FSM_onehot_state[4]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \FSM_onehot_state[5]_i_1__2 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .O(\n_0_FSM_onehot_state[5]_i_1__2 ));
LUT4 #(
    .INIT(16'h0004)) 
     \FSM_onehot_state[6]_i_1__1 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .O(\n_0_FSM_onehot_state[6]_i_1__1 ));
LUT5 #(
    .INIT(32'hAAA8AAAA)) 
     \FSM_onehot_state[7]_i_1__3 
       (.I0(I2),
        .I1(\n_0_FSM_onehot_state_reg[8] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state[9]_i_3 ),
        .O(\n_0_FSM_onehot_state[7]_i_1__3 ));
(* SOFT_HLUTNM = "soft_lutpair20" *) 
   LUT4 #(
    .INIT(16'h0004)) 
     \FSM_onehot_state[7]_i_2__1 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .O(\n_0_FSM_onehot_state[7]_i_2__1 ));
(* SOFT_HLUTNM = "soft_lutpair18" *) 
   LUT5 #(
    .INIT(32'h00100000)) 
     \FSM_onehot_state[8]_i_1__1 
       (.I0(\n_0_FSM_onehot_state[9]_i_2 ),
        .I1(\n_0_FSM_onehot_state_reg[8] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state[9]_i_3 ),
        .O(\n_0_FSM_onehot_state[8]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair19" *) 
   LUT5 #(
    .INIT(32'h00100000)) 
     \FSM_onehot_state[9]_i_1__1 
       (.I0(\n_0_FSM_onehot_state[9]_i_2 ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[8] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state[9]_i_3 ),
        .O(\n_0_FSM_onehot_state[9]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair21" *) 
   LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_state[9]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .O(\n_0_FSM_onehot_state[9]_i_2 ));
LUT4 #(
    .INIT(16'h0001)) 
     \FSM_onehot_state[9]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[10] ),
        .I1(Q),
        .I2(\n_0_FSM_onehot_state_reg[9] ),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .O(\n_0_FSM_onehot_state[9]_i_3 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[10]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[10] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[11]_i_2__0 ),
        .Q(\n_0_FSM_onehot_state_reg[11] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[1]_i_1__2 ),
        .Q(Q),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[2]_i_1__2 ),
        .Q(\n_0_FSM_onehot_state_reg[2] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[3]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[3] ),
        .R(\n_0_FSM_onehot_state[7]_i_1__3 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[4]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[4] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[5]_i_1__2 ),
        .Q(\n_0_FSM_onehot_state_reg[5] ),
        .R(\n_0_FSM_onehot_state[7]_i_1__3 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[6]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[6] ),
        .R(\n_0_FSM_onehot_state[7]_i_1__3 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[7]_i_2__1 ),
        .Q(\n_0_FSM_onehot_state_reg[7] ),
        .R(\n_0_FSM_onehot_state[7]_i_1__3 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[8]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[8] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(I2),
        .D(\n_0_FSM_onehot_state[9]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[9] ),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFEFEFBFFFEFE0B00)) 
     GoRead_i_13
       (.I0(\n_0_FSM_onehot_state_reg[9] ),
        .I1(\n_0_FSM_onehot_state_reg[10] ),
        .I2(n_0_GoRead_i_17),
        .I3(I1),
        .I4(Q),
        .I5(I17),
        .O(O7));
LUT2 #(
    .INIT(4'hE)) 
     GoRead_i_17
       (.I0(O1),
        .I1(\n_0_FSM_onehot_state_reg[11] ),
        .O(n_0_GoRead_i_17));
endmodule

module FSMWrite
   (O1,
    DoneWrite,
    O11,
    Clk_IBUF_BUFG,
    GoWrite,
    SCLTick,
    I1,
    I2,
    Q,
    I16,
    I21);
  output O1;
  output DoneWrite;
  output O11;
  input Clk_IBUF_BUFG;
  input GoWrite;
  input SCLTick;
  input I1;
  input I2;
  input [4:0]Q;
  input I16;
  input I21;

  wire Clk_IBUF_BUFG;
  wire DoneWrite;
  wire GoWrite;
  wire I1;
  wire I16;
  wire I2;
  wire I21;
  wire O1;
  wire O11;
  wire [4:0]Q;
  wire SCLTick;
  wire SDAOut0;
  wire n_0_DoneWrite_i_1;
  wire n_0_DoneWrite_i_2;
  wire n_0_DoneWrite_i_3;
  wire \n_0_FSM_onehot_state[10]_i_1__0 ;
  wire \n_0_FSM_onehot_state[10]_i_2__0 ;
  wire \n_0_FSM_onehot_state[10]_i_3 ;
  wire \n_0_FSM_onehot_state[10]_i_4__0 ;
  wire \n_0_FSM_onehot_state[11]_i_1 ;
  wire \n_0_FSM_onehot_state[11]_i_2__1 ;
  wire \n_0_FSM_onehot_state[12]_i_1 ;
  wire \n_0_FSM_onehot_state[12]_i_2 ;
  wire \n_0_FSM_onehot_state[12]_i_3 ;
  wire \n_0_FSM_onehot_state[1]_i_1__1 ;
  wire \n_0_FSM_onehot_state[2]_i_1__1 ;
  wire \n_0_FSM_onehot_state[2]_i_2__1 ;
  wire \n_0_FSM_onehot_state[3]_i_1__0 ;
  wire \n_0_FSM_onehot_state[4]_i_1__0 ;
  wire \n_0_FSM_onehot_state[5]_i_1__1 ;
  wire \n_0_FSM_onehot_state[6]_i_1__0 ;
  wire \n_0_FSM_onehot_state[7]_i_1__1 ;
  wire \n_0_FSM_onehot_state[7]_i_2__0 ;
  wire \n_0_FSM_onehot_state[8]_i_1__0 ;
  wire \n_0_FSM_onehot_state[9]_i_1__0 ;
  wire \n_0_FSM_onehot_state_reg[10] ;
  wire \n_0_FSM_onehot_state_reg[11] ;
  wire \n_0_FSM_onehot_state_reg[12] ;
  wire \n_0_FSM_onehot_state_reg[1] ;
  wire \n_0_FSM_onehot_state_reg[2] ;
  wire \n_0_FSM_onehot_state_reg[3] ;
  wire \n_0_FSM_onehot_state_reg[4] ;
  wire \n_0_FSM_onehot_state_reg[5] ;
  wire \n_0_FSM_onehot_state_reg[6] ;
  wire \n_0_FSM_onehot_state_reg[7] ;
  wire \n_0_FSM_onehot_state_reg[8] ;
  wire \n_0_FSM_onehot_state_reg[9] ;
  wire n_0_GoRead_i_27;
  wire n_0_GoRead_i_28;
  wire n_0_GoRead_i_29;
  wire n_0_GoRead_i_30;
  wire n_0_GoRead_i_33;
  wire n_0_GoRead_i_34;
  wire n_0_GoRead_i_35;
  wire n_0_SDAOut_retimed_i_1__0;
  wire n_0_SDAOut_retimed_i_2__0;
  wire n_0_SDAOut_retimed_i_3__0;
  wire n_0_SDAOut_retimed_i_4;
  wire n_0_SDAOut_retimed_i_5;
  wire n_0_SDAOut_retimed_i_6;

LUT6 #(
    .INIT(64'h88888FFF88888000)) 
     DoneWrite_i_1
       (.I0(\n_0_FSM_onehot_state_reg[11] ),
        .I1(I1),
        .I2(n_0_DoneWrite_i_2),
        .I3(n_0_DoneWrite_i_3),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(DoneWrite),
        .O(n_0_DoneWrite_i_1));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     DoneWrite_i_2
       (.I0(\n_0_FSM_onehot_state_reg[8] ),
        .I1(\n_0_FSM_onehot_state_reg[12] ),
        .I2(I1),
        .I3(\n_0_FSM_onehot_state_reg[10] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state_reg[7] ),
        .O(n_0_DoneWrite_i_2));
LUT5 #(
    .INIT(32'h00000001)) 
     DoneWrite_i_3
       (.I0(\n_0_FSM_onehot_state_reg[9] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .I4(\n_0_FSM_onehot_state_reg[5] ),
        .O(n_0_DoneWrite_i_3));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     DoneWrite_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_DoneWrite_i_1),
        .Q(DoneWrite),
        .R(1'b0));
LUT5 #(
    .INIT(32'hB8BB3000)) 
     \FSM_onehot_state[10]_i_1__0 
       (.I0(GoWrite),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(SCLTick),
        .I3(\n_0_FSM_onehot_state_reg[10] ),
        .I4(I1),
        .O(\n_0_FSM_onehot_state[10]_i_1__0 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \FSM_onehot_state[10]_i_2__0 
       (.I0(\n_0_FSM_onehot_state[10]_i_3 ),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(\n_0_FSM_onehot_state[10]_i_4__0 ),
        .O(\n_0_FSM_onehot_state[10]_i_2__0 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_state[10]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[10] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .I4(\n_0_FSM_onehot_state_reg[8] ),
        .I5(\n_0_FSM_onehot_state_reg[12] ),
        .O(\n_0_FSM_onehot_state[10]_i_3 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[10]_i_4__0 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_FSM_onehot_state[10]_i_4__0 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \FSM_onehot_state[11]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state[11]_i_2__1 ),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .I4(\n_0_FSM_onehot_state_reg[8] ),
        .I5(\n_0_FSM_onehot_state_reg[12] ),
        .O(\n_0_FSM_onehot_state[11]_i_1 ));
LUT2 #(
    .INIT(4'h8)) 
     \FSM_onehot_state[11]_i_2__1 
       (.I0(\n_0_FSM_onehot_state_reg[10] ),
        .I1(I16),
        .O(\n_0_FSM_onehot_state[11]_i_2__1 ));
LUT6 #(
    .INIT(64'hAAAAAAAAAAAAAAA8)) 
     \FSM_onehot_state[12]_i_1 
       (.I0(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[9] ),
        .I4(\n_0_FSM_onehot_state[10]_i_4__0 ),
        .I5(\n_0_FSM_onehot_state_reg[1] ),
        .O(\n_0_FSM_onehot_state[12]_i_1 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \FSM_onehot_state[12]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state[12]_i_3 ),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .I4(\n_0_FSM_onehot_state_reg[8] ),
        .I5(\n_0_FSM_onehot_state_reg[12] ),
        .O(\n_0_FSM_onehot_state[12]_i_2 ));
LUT2 #(
    .INIT(4'h2)) 
     \FSM_onehot_state[12]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[10] ),
        .I1(I16),
        .O(\n_0_FSM_onehot_state[12]_i_3 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \FSM_onehot_state[1]_i_1__1 
       (.I0(\n_0_FSM_onehot_state_reg[8] ),
        .I1(\n_0_FSM_onehot_state_reg[12] ),
        .I2(\n_0_FSM_onehot_state_reg[11] ),
        .I3(\n_0_FSM_onehot_state_reg[10] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state_reg[7] ),
        .O(\n_0_FSM_onehot_state[1]_i_1__1 ));
LUT6 #(
    .INIT(64'h0000000000000028)) 
     \FSM_onehot_state[2]_i_1__1 
       (.I0(\n_0_FSM_onehot_state[2]_i_2__1 ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(\n_0_FSM_onehot_state_reg[12] ),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .I4(\n_0_FSM_onehot_state_reg[8] ),
        .I5(\n_0_FSM_onehot_state[10]_i_4__0 ),
        .O(\n_0_FSM_onehot_state[2]_i_1__1 ));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     \FSM_onehot_state[2]_i_2__1 
       (.I0(\n_0_FSM_onehot_state_reg[9] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[10] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state_reg[7] ),
        .O(\n_0_FSM_onehot_state[2]_i_2__1 ));
LUT6 #(
    .INIT(64'h0000000000000100)) 
     \FSM_onehot_state[3]_i_1__0 
       (.I0(\n_0_FSM_onehot_state[10]_i_3 ),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(\n_0_FSM_onehot_state[10]_i_4__0 ),
        .O(\n_0_FSM_onehot_state[3]_i_1__0 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \FSM_onehot_state[4]_i_1__0 
       (.I0(\n_0_FSM_onehot_state[10]_i_3 ),
        .I1(\n_0_FSM_onehot_state_reg[9] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(\n_0_FSM_onehot_state[10]_i_4__0 ),
        .O(\n_0_FSM_onehot_state[4]_i_1__0 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \FSM_onehot_state[5]_i_1__1 
       (.I0(\n_0_FSM_onehot_state_reg[10] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[12] ),
        .I4(\n_0_FSM_onehot_state_reg[8] ),
        .I5(\n_0_FSM_onehot_state_reg[11] ),
        .O(\n_0_FSM_onehot_state[5]_i_1__1 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h00000020)) 
     \FSM_onehot_state[6]_i_1__0 
       (.I0(\n_0_FSM_onehot_state[7]_i_2__0 ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(\n_0_FSM_onehot_state[10]_i_3 ),
        .O(\n_0_FSM_onehot_state[6]_i_1__0 ));
(* SOFT_HLUTNM = "soft_lutpair23" *) 
   LUT5 #(
    .INIT(32'h00000020)) 
     \FSM_onehot_state[7]_i_1__1 
       (.I0(\n_0_FSM_onehot_state[7]_i_2__0 ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[1] ),
        .I4(\n_0_FSM_onehot_state[10]_i_3 ),
        .O(\n_0_FSM_onehot_state[7]_i_1__1 ));
LUT3 #(
    .INIT(8'h01)) 
     \FSM_onehot_state[7]_i_2__0 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[9] ),
        .O(\n_0_FSM_onehot_state[7]_i_2__0 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \FSM_onehot_state[8]_i_1__0 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[10] ),
        .I3(\n_0_FSM_onehot_state_reg[11] ),
        .I4(\n_0_FSM_onehot_state_reg[8] ),
        .I5(\n_0_FSM_onehot_state_reg[12] ),
        .O(\n_0_FSM_onehot_state[8]_i_1__0 ));
LUT6 #(
    .INIT(64'h0000000000000002)) 
     \FSM_onehot_state[9]_i_1__0 
       (.I0(\n_0_FSM_onehot_state_reg[8] ),
        .I1(\n_0_FSM_onehot_state_reg[11] ),
        .I2(\n_0_FSM_onehot_state_reg[12] ),
        .I3(\n_0_FSM_onehot_state_reg[10] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state_reg[7] ),
        .O(\n_0_FSM_onehot_state[9]_i_1__0 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[10]_i_2__0 ),
        .Q(\n_0_FSM_onehot_state_reg[10] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[11]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[11] ),
        .R(\n_0_FSM_onehot_state[12]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[12]_i_2 ),
        .Q(\n_0_FSM_onehot_state_reg[12] ),
        .R(\n_0_FSM_onehot_state[12]_i_1 ));
FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[1]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[1] ),
        .R(\n_0_FSM_onehot_state[12]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[2]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[2] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[3]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[3] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[4]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[4] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[5]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[5] ),
        .R(\n_0_FSM_onehot_state[12]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[6]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[6] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[7]_i_1__1 ),
        .Q(\n_0_FSM_onehot_state_reg[7] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[8]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[8] ),
        .R(\n_0_FSM_onehot_state[12]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_FSM_onehot_state[10]_i_1__0 ),
        .D(\n_0_FSM_onehot_state[9]_i_1__0 ),
        .Q(\n_0_FSM_onehot_state_reg[9] ),
        .R(\n_0_FSM_onehot_state[12]_i_1 ));
LUT6 #(
    .INIT(64'hAAAAABFBAAAAA808)) 
     GoRead_i_15
       (.I0(SDAOut0),
        .I1(I1),
        .I2(\n_0_FSM_onehot_state_reg[10] ),
        .I3(SCLTick),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(I21),
        .O(O11));
LUT6 #(
    .INIT(64'hFFFFFFEEFFFEFEEE)) 
     GoRead_i_22
       (.I0(n_0_GoRead_i_27),
        .I1(n_0_GoRead_i_28),
        .I2(\n_0_FSM_onehot_state_reg[2] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(n_0_GoRead_i_29),
        .I5(n_0_GoRead_i_30),
        .O(SDAOut0));
LUT6 #(
    .INIT(64'hFFFFFFFE00000003)) 
     GoRead_i_27
       (.I0(I2),
        .I1(\n_0_FSM_onehot_state[10]_i_4__0 ),
        .I2(n_0_GoRead_i_33),
        .I3(\n_0_FSM_onehot_state_reg[9] ),
        .I4(\n_0_FSM_onehot_state[10]_i_3 ),
        .I5(\n_0_FSM_onehot_state_reg[1] ),
        .O(n_0_GoRead_i_27));
LUT6 #(
    .INIT(64'hFFFFFFFE00000000)) 
     GoRead_i_28
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[5] ),
        .I4(\n_0_FSM_onehot_state[10]_i_3 ),
        .I5(\n_0_FSM_onehot_state_reg[9] ),
        .O(n_0_GoRead_i_28));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     GoRead_i_29
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(n_0_GoRead_i_34),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .O(n_0_GoRead_i_29));
LUT6 #(
    .INIT(64'hFFFFFFEEFFEEEEE0)) 
     GoRead_i_30
       (.I0(n_0_GoRead_i_34),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(n_0_GoRead_i_35),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .I4(\n_0_FSM_onehot_state_reg[5] ),
        .I5(\n_0_FSM_onehot_state_reg[4] ),
        .O(n_0_GoRead_i_30));
LUT2 #(
    .INIT(4'hE)) 
     GoRead_i_33
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .O(n_0_GoRead_i_33));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     GoRead_i_34
       (.I0(I1),
        .I1(\n_0_FSM_onehot_state_reg[10] ),
        .I2(\n_0_FSM_onehot_state_reg[11] ),
        .I3(\n_0_FSM_onehot_state_reg[8] ),
        .I4(\n_0_FSM_onehot_state_reg[12] ),
        .O(n_0_GoRead_i_34));
LUT6 #(
    .INIT(64'hFFFFFFFAFFFEFEE0)) 
     GoRead_i_35
       (.I0(\n_0_FSM_onehot_state_reg[11] ),
        .I1(I1),
        .I2(\n_0_FSM_onehot_state_reg[12] ),
        .I3(\n_0_FSM_onehot_state_reg[8] ),
        .I4(\n_0_FSM_onehot_state_reg[7] ),
        .I5(\n_0_FSM_onehot_state_reg[10] ),
        .O(n_0_GoRead_i_35));
LUT6 #(
    .INIT(64'hAAAAABFBAAAAA808)) 
     SDAOut_retimed_i_1__0
       (.I0(n_0_SDAOut_retimed_i_2__0),
        .I1(I1),
        .I2(\n_0_FSM_onehot_state_reg[10] ),
        .I3(SCLTick),
        .I4(\n_0_FSM_onehot_state_reg[1] ),
        .I5(O1),
        .O(n_0_SDAOut_retimed_i_1__0));
LUT5 #(
    .INIT(32'hFFFFE040)) 
     SDAOut_retimed_i_2__0
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(Q[4]),
        .I2(n_0_SDAOut_retimed_i_3__0),
        .I3(Q[3]),
        .I4(n_0_SDAOut_retimed_i_4),
        .O(n_0_SDAOut_retimed_i_2__0));
LUT6 #(
    .INIT(64'h0000000000000001)) 
     SDAOut_retimed_i_3__0
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[3] ),
        .I3(\n_0_FSM_onehot_state_reg[8] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .I5(\n_0_FSM_onehot_state_reg[5] ),
        .O(n_0_SDAOut_retimed_i_3__0));
LUT6 #(
    .INIT(64'h00E200E200FF0000)) 
     SDAOut_retimed_i_4
       (.I0(Q[0]),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(Q[4]),
        .I3(n_0_SDAOut_retimed_i_3__0),
        .I4(n_0_SDAOut_retimed_i_5),
        .I5(n_0_SDAOut_retimed_i_6),
        .O(n_0_SDAOut_retimed_i_4));
LUT6 #(
    .INIT(64'hEFECEFEF23202020)) 
     SDAOut_retimed_i_5
       (.I0(Q[1]),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(Q[3]),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(Q[2]),
        .O(n_0_SDAOut_retimed_i_5));
LUT4 #(
    .INIT(16'h0001)) 
     SDAOut_retimed_i_6
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .O(n_0_SDAOut_retimed_i_6));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     SDAOut_retimed_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_SDAOut_retimed_i_1__0),
        .Q(O1),
        .R(1'b0));
endmodule

module I2CController
   (O1,
    O2,
    DataTick,
    O3,
    O4,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    O11,
    O12,
    O13,
    Clk_IBUF_BUFG,
    Tick,
    I1,
    I2,
    I3,
    I4,
    I5,
    I6,
    I7,
    I8,
    I9,
    InternalStart,
    I10,
    I11,
    I12,
    I13,
    D,
    Start,
    ReadWrite,
    Q,
    I14,
    I15,
    I16,
    I17,
    I18,
    I19,
    I20,
    I21,
    I22,
    I23,
    I24,
    I25,
    I26,
    I27,
    I28,
    I29,
    I30,
    I31,
    I32,
    I33,
    I34,
    I35,
    I36);
  output O1;
  output O2;
  output DataTick;
  output O3;
  output O4;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  output O11;
  output O12;
  output O13;
  input Clk_IBUF_BUFG;
  input Tick;
  input I1;
  input I2;
  input I3;
  input I4;
  input I5;
  input I6;
  input I7;
  input I8;
  input I9;
  input InternalStart;
  input I10;
  input I11;
  input I12;
  input I13;
  input [0:0]D;
  input Start;
  input ReadWrite;
  input [4:0]Q;
  input I14;
  input I15;
  input I16;
  input I17;
  input I18;
  input I19;
  input I20;
  input I21;
  input I22;
  input I23;
  input I24;
  input I25;
  input I26;
  input I27;
  input I28;
  input I29;
  input I30;
  input I31;
  input I32;
  input I33;
  input I34;
  input I35;
  input I36;

  wire Clk_IBUF_BUFG;
  wire [0:0]D;
  wire DataTick;
  wire DoneAddress;
  wire DoneRead;
  wire DoneWrite;
  wire GoAddress;
  wire GoRead;
  wire GoWrite;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I19;
  wire I2;
  wire I20;
  wire I21;
  wire I22;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I27;
  wire I28;
  wire I29;
  wire I3;
  wire I30;
  wire I31;
  wire I32;
  wire I33;
  wire I34;
  wire I35;
  wire I36;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire I8;
  wire I9;
  wire InternalStart;
  wire O1;
  wire O10;
  wire O11;
  wire O12;
  wire O13;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [4:0]Q;
  wire ReadWrite;
  wire SCLTick;
  wire Start;
  wire Stop;
  wire Tick;
  wire n_0_FSMWritePM;
  wire n_10_FSMI2CPM;
  wire n_10_SCLGenPM;
  wire n_11_FSMI2CPM;
  wire n_11_SCLGenPM;
  wire n_12_FSMI2CPM;
  wire n_1_FSMAddressPM;
  wire n_1_FSMReadPM;
  wire n_2_FSMReadPM;
  wire n_3_FSMAddressPM;
  wire n_5_FSMI2CPM;
  wire n_5_SCLGenPM;
  wire n_6_SCLGenPM;
  wire n_7_SCLGenPM;
  wire n_8_FSMI2CPM;
  wire n_8_SCLGenPM;
  wire n_9_FSMI2CPM;
  wire state;
  wire NLW_FSMI2CPM_I21_UNCONNECTED;

ClockGenerator ClkGenPM
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .O1(O1));
FSMAddress FSMAddressPM
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .DoneAddress(DoneAddress),
        .GoAddress(GoAddress),
        .I1(n_8_SCLGenPM),
        .I2(DataTick),
        .I22(I22),
        .O1(n_3_FSMAddressPM),
        .O12(O12),
        .Q(n_1_FSMAddressPM));
FSMI2CTransitions FSMI2CPM
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D(D),
        .DoneAddress(DoneAddress),
        .DoneRead(DoneRead),
        .DoneWrite(DoneWrite),
        .GoAddress(GoAddress),
        .GoRead(GoRead),
        .GoWrite(GoWrite),
        .I1(n_5_SCLGenPM),
        .I10(I10),
        .I11(n_10_SCLGenPM),
        .I12(DataTick),
        .I13(I13),
        .I14(I14),
        .I15(I12),
        .I16(n_11_SCLGenPM),
        .I17(I16),
        .I18(I18),
        .I19(I19),
        .I2(I1),
        .I20(I20),
        .I21(NLW_FSMI2CPM_I21_UNCONNECTED),
        .I22(n_0_FSMWritePM),
        .I23(I21),
        .I24(n_3_FSMAddressPM),
        .I3(n_6_SCLGenPM),
        .I4(I2),
        .I5(I5),
        .I6(I6),
        .I7(I7),
        .I8(I8),
        .I9(I9),
        .InternalStart(InternalStart),
        .O1(n_5_FSMI2CPM),
        .O10(O9),
        .O11(O10),
        .O13(O13),
        .O2(n_8_FSMI2CPM),
        .O3(O3),
        .O4(n_9_FSMI2CPM),
        .O5(O5),
        .O6(O6),
        .O7(n_10_FSMI2CPM),
        .O8(n_11_FSMI2CPM),
        .O9(n_12_FSMI2CPM),
        .ReadWrite(ReadWrite),
        .SCLTick(SCLTick),
        .Start(Start),
        .Stop(Stop),
        .state(state));
FSMRead FSMReadPM
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .DoneRead(DoneRead),
        .I1(DataTick),
        .I17(I17),
        .I2(n_7_SCLGenPM),
        .O1(n_2_FSMReadPM),
        .O7(O7),
        .Q(n_1_FSMReadPM));
FSMWrite FSMWritePM
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .DoneWrite(DoneWrite),
        .GoWrite(GoWrite),
        .I1(DataTick),
        .I16(I16),
        .I2(n_10_FSMI2CPM),
        .I21(I21),
        .O1(n_0_FSMWritePM),
        .O11(O11),
        .Q(Q),
        .SCLTick(SCLTick));
SCLGenerator SCLGenPM
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .GoRead(GoRead),
        .I1(n_12_FSMI2CPM),
        .I10(I10),
        .I11(I11),
        .I12(I12),
        .I13(I2),
        .I14(I5),
        .I15(I15),
        .I16(n_9_FSMI2CPM),
        .I17(n_8_FSMI2CPM),
        .I18(n_11_FSMI2CPM),
        .I2(I1),
        .I23(I23),
        .I24(I24),
        .I25(I25),
        .I26(I26),
        .I27(I27),
        .I28(I28),
        .I29(I29),
        .I3(I3),
        .I30(I30),
        .I31(I31),
        .I32(I32),
        .I33(I33),
        .I34(I34),
        .I35(I35),
        .I36(I36),
        .I4(n_5_FSMI2CPM),
        .I5(I4),
        .I6(O1),
        .I7(n_2_FSMReadPM),
        .I8(n_1_FSMAddressPM),
        .I9(I9),
        .InternalStart(InternalStart),
        .O1(DataTick),
        .O10(n_11_SCLGenPM),
        .O2(O2),
        .O3(n_5_SCLGenPM),
        .O4(O4),
        .O5(n_6_SCLGenPM),
        .O6(n_7_SCLGenPM),
        .O7(n_8_SCLGenPM),
        .O8(O8),
        .O9(n_10_SCLGenPM),
        .Q(n_1_FSMReadPM),
        .SCLTick(SCLTick),
        .Stop(Stop),
        .Tick(Tick),
        .state(state));
endmodule

(* NotValidForBitStream *)
module Nunchuck
   (Clk,
    SDA,
    SCL,
    ButtonStates);
  input Clk;
  inout SDA;
  output SCL;
  output [0:5]ButtonStates;

  wire Clk;
  wire Clk_IBUF;
  wire Clk_IBUF_BUFG;
  wire [3:8]DataIn;
  wire DataTick;
  wire InternalStart;
  wire ReadWrite;
  wire SCL;
  wire SDA;
  wire Start;
  wire Tick;
  wire [31:1]data0;
  wire \n_0_FSM_onehot_state[1]_i_3 ;
  wire \n_0_FSM_onehot_state[1]_i_4 ;
  wire \n_0_FSM_onehot_state[1]_i_5 ;
  wire \n_0_FSM_onehot_state[2]_i_2 ;
  wire \n_0_FSM_onehot_state[3]_i_1__3 ;
  wire \n_0_FSM_onehot_state[4]_i_1__3 ;
  wire \n_0_FSM_onehot_state[5]_i_1 ;
  wire \n_0_FSM_onehot_state[6]_i_10 ;
  wire \n_0_FSM_onehot_state[6]_i_12 ;
  wire \n_0_FSM_onehot_state[6]_i_13 ;
  wire \n_0_FSM_onehot_state[6]_i_16 ;
  wire \n_0_FSM_onehot_state[6]_i_17 ;
  wire \n_0_FSM_onehot_state[6]_i_18 ;
  wire \n_0_FSM_onehot_state[6]_i_19 ;
  wire \n_0_FSM_onehot_state[6]_i_3 ;
  wire \n_0_FSM_onehot_state[6]_i_7 ;
  wire \n_0_FSM_onehot_state[7]_i_4__0 ;
  wire \n_0_FSM_onehot_state[7]_i_6__0 ;
  wire \n_0_FSM_onehot_state[7]_i_7__0 ;
  wire \n_0_FSM_onehot_state_reg[1] ;
  wire \n_0_FSM_onehot_state_reg[2] ;
  wire \n_0_FSM_onehot_state_reg[3] ;
  wire \n_0_FSM_onehot_state_reg[4] ;
  wire \n_0_FSM_onehot_state_reg[5] ;
  wire \n_0_FSM_onehot_state_reg[6] ;
  wire \n_0_FSM_onehot_state_reg[7] ;
  wire n_0_GoRead_reg_i_10;
  wire n_0_GoRead_reg_i_11;
  wire n_0_GoRead_reg_i_12;
  wire n_0_GoRead_reg_i_2;
  wire n_0_GoRead_reg_i_5;
  wire n_0_GoRead_reg_i_9;
  wire n_0_I2C;
  wire \n_0_InternalDataIn[2]_i_1 ;
  wire \n_0_InternalDataIn[2]_i_2 ;
  wire \n_0_InternalDataIn[3]_i_1 ;
  wire \n_0_InternalDataIn[7]_i_1 ;
  wire n_0_InternalReadWrite_i_1;
  wire n_0_InternalStart_i_1;
  wire \n_0_counter[0]_i_1__0 ;
  wire \n_0_counter[31]_i_10 ;
  wire \n_0_counter[31]_i_11 ;
  wire \n_0_counter[31]_i_4__0 ;
  wire \n_0_counter[31]_i_5 ;
  wire \n_0_counter[31]_i_9__0 ;
  wire \n_0_counter_reg[0] ;
  wire \n_0_counter_reg[10] ;
  wire \n_0_counter_reg[11] ;
  wire \n_0_counter_reg[12] ;
  wire \n_0_counter_reg[12]_i_1 ;
  wire \n_0_counter_reg[13] ;
  wire \n_0_counter_reg[14] ;
  wire \n_0_counter_reg[15] ;
  wire \n_0_counter_reg[16] ;
  wire \n_0_counter_reg[16]_i_1 ;
  wire \n_0_counter_reg[17] ;
  wire \n_0_counter_reg[18] ;
  wire \n_0_counter_reg[19] ;
  wire \n_0_counter_reg[1] ;
  wire \n_0_counter_reg[20] ;
  wire \n_0_counter_reg[20]_i_1 ;
  wire \n_0_counter_reg[21] ;
  wire \n_0_counter_reg[22] ;
  wire \n_0_counter_reg[23] ;
  wire \n_0_counter_reg[24] ;
  wire \n_0_counter_reg[24]_i_1 ;
  wire \n_0_counter_reg[25] ;
  wire \n_0_counter_reg[26] ;
  wire \n_0_counter_reg[27] ;
  wire \n_0_counter_reg[28] ;
  wire \n_0_counter_reg[28]_i_1 ;
  wire \n_0_counter_reg[29] ;
  wire \n_0_counter_reg[2] ;
  wire \n_0_counter_reg[30] ;
  wire \n_0_counter_reg[31] ;
  wire \n_0_counter_reg[3] ;
  wire \n_0_counter_reg[4] ;
  wire \n_0_counter_reg[4]_i_1 ;
  wire \n_0_counter_reg[5] ;
  wire \n_0_counter_reg[6] ;
  wire \n_0_counter_reg[7] ;
  wire \n_0_counter_reg[8] ;
  wire \n_0_counter_reg[8]_i_1 ;
  wire \n_0_counter_reg[9] ;
  wire n_10_I2C;
  wire n_11_I2C;
  wire n_12_I2C;
  wire n_13_I2C;
  wire n_1_I2C;
  wire n_3_I2C;
  wire n_4_I2C;
  wire n_5_I2C;
  wire n_6_I2C;
  wire n_7_I2C;
  wire n_8_I2C;
  wire n_9_I2C;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;
PULLUP pullup_SCL
       (.O(SCL));
PULLUP pullup_SDA
       (.O(SDA));

BUFG Clk_IBUF_BUFG_inst
       (.I(Clk_IBUF),
        .O(Clk_IBUF_BUFG));
IBUF Clk_IBUF_inst
       (.I(Clk),
        .O(Clk_IBUF));
LUT5 #(
    .INIT(32'h00010006)) 
     \FSM_onehot_state[1]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(\n_0_FSM_onehot_state_reg[5] ),
        .O(\n_0_FSM_onehot_state[1]_i_3 ));
LUT2 #(
    .INIT(4'h1)) 
     \FSM_onehot_state[1]_i_4 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .O(\n_0_FSM_onehot_state[1]_i_4 ));
LUT4 #(
    .INIT(16'h0114)) 
     \FSM_onehot_state[1]_i_5 
       (.I0(\n_0_FSM_onehot_state_reg[1] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(\n_0_FSM_onehot_state_reg[4] ),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_FSM_onehot_state[1]_i_5 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \FSM_onehot_state[2]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[7] ),
        .I1(\n_0_FSM_onehot_state_reg[1] ),
        .I2(InternalStart),
        .I3(\n_0_FSM_onehot_state_reg[6] ),
        .I4(\n_0_FSM_onehot_state_reg[4] ),
        .I5(\n_0_FSM_onehot_state_reg[5] ),
        .O(\n_0_FSM_onehot_state[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     \FSM_onehot_state[3]_i_1__3 
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_FSM_onehot_state[3]_i_1__3 ));
(* SOFT_HLUTNM = "soft_lutpair34" *) 
   LUT5 #(
    .INIT(32'h00000004)) 
     \FSM_onehot_state[4]_i_1__3 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[5] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .I4(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_FSM_onehot_state[4]_i_1__3 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT5 #(
    .INIT(32'h00000002)) 
     \FSM_onehot_state[5]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .O(\n_0_FSM_onehot_state[5]_i_1 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_state[6]_i_10 
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[3] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[4] ),
        .O(\n_0_FSM_onehot_state[6]_i_10 ));
LUT6 #(
    .INIT(64'h0000000000000010)) 
     \FSM_onehot_state[6]_i_12 
       (.I0(\n_0_counter_reg[2] ),
        .I1(\n_0_counter_reg[5] ),
        .I2(\n_0_counter_reg[3] ),
        .I3(\n_0_counter_reg[4] ),
        .I4(\n_0_counter_reg[0] ),
        .I5(\n_0_counter[31]_i_11 ),
        .O(\n_0_FSM_onehot_state[6]_i_12 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[6]_i_13 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_FSM_onehot_state[6]_i_13 ));
LUT2 #(
    .INIT(4'hE)) 
     \FSM_onehot_state[6]_i_14 
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .O(InternalStart));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_state[6]_i_16 
       (.I0(\n_0_counter_reg[1] ),
        .I1(\n_0_counter_reg[31] ),
        .I2(\n_0_counter_reg[19] ),
        .I3(\n_0_counter_reg[18] ),
        .I4(\n_0_counter_reg[17] ),
        .I5(\n_0_counter_reg[16] ),
        .O(\n_0_FSM_onehot_state[6]_i_16 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \FSM_onehot_state[6]_i_17 
       (.I0(\n_0_counter_reg[29] ),
        .I1(\n_0_counter_reg[6] ),
        .I2(\n_0_counter_reg[27] ),
        .I3(\n_0_counter_reg[28] ),
        .I4(\n_0_counter_reg[7] ),
        .O(\n_0_FSM_onehot_state[6]_i_17 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_state[6]_i_18 
       (.I0(\n_0_counter_reg[10] ),
        .I1(\n_0_counter_reg[11] ),
        .I2(\n_0_counter_reg[15] ),
        .I3(\n_0_counter_reg[14] ),
        .I4(\n_0_counter_reg[13] ),
        .I5(\n_0_counter_reg[12] ),
        .O(\n_0_FSM_onehot_state[6]_i_18 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \FSM_onehot_state[6]_i_19 
       (.I0(\n_0_counter_reg[20] ),
        .I1(\n_0_counter_reg[21] ),
        .I2(\n_0_counter_reg[9] ),
        .I3(\n_0_counter_reg[8] ),
        .I4(\n_0_counter_reg[23] ),
        .I5(\n_0_counter_reg[22] ),
        .O(\n_0_FSM_onehot_state[6]_i_19 ));
(* SOFT_HLUTNM = "soft_lutpair33" *) 
   LUT5 #(
    .INIT(32'h00000002)) 
     \FSM_onehot_state[6]_i_3 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .I4(\n_0_FSM_onehot_state_reg[2] ),
        .O(\n_0_FSM_onehot_state[6]_i_3 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \FSM_onehot_state[6]_i_7 
       (.I0(\n_0_FSM_onehot_state[6]_i_16 ),
        .I1(\n_0_FSM_onehot_state[6]_i_17 ),
        .I2(\n_0_FSM_onehot_state[6]_i_18 ),
        .I3(\n_0_FSM_onehot_state[6]_i_19 ),
        .O(\n_0_FSM_onehot_state[6]_i_7 ));
LUT6 #(
    .INIT(64'h0000000000000004)) 
     \FSM_onehot_state[7]_i_4__0 
       (.I0(\n_0_counter[31]_i_11 ),
        .I1(\n_0_FSM_onehot_state[7]_i_6__0 ),
        .I2(\n_0_FSM_onehot_state[6]_i_19 ),
        .I3(\n_0_FSM_onehot_state[6]_i_18 ),
        .I4(\n_0_FSM_onehot_state[6]_i_17 ),
        .I5(\n_0_FSM_onehot_state[6]_i_16 ),
        .O(\n_0_FSM_onehot_state[7]_i_4__0 ));
LUT5 #(
    .INIT(32'h00000010)) 
     \FSM_onehot_state[7]_i_6__0 
       (.I0(\n_0_counter_reg[0] ),
        .I1(\n_0_counter_reg[4] ),
        .I2(\n_0_counter_reg[3] ),
        .I3(\n_0_counter_reg[5] ),
        .I4(\n_0_counter_reg[2] ),
        .O(\n_0_FSM_onehot_state[7]_i_6__0 ));
LUT5 #(
    .INIT(32'h00000002)) 
     \FSM_onehot_state[7]_i_7__0 
       (.I0(\n_0_FSM_onehot_state_reg[7] ),
        .I1(\n_0_counter_reg[24] ),
        .I2(\n_0_counter_reg[26] ),
        .I3(\n_0_counter_reg[30] ),
        .I4(\n_0_counter_reg[25] ),
        .O(\n_0_FSM_onehot_state[7]_i_7__0 ));
FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_5_I2C),
        .Q(\n_0_FSM_onehot_state_reg[1] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_4_I2C),
        .Q(\n_0_FSM_onehot_state_reg[2] ),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(n_6_I2C),
        .D(\n_0_FSM_onehot_state[3]_i_1__3 ),
        .Q(\n_0_FSM_onehot_state_reg[3] ),
        .R(n_8_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(n_6_I2C),
        .D(\n_0_FSM_onehot_state[4]_i_1__3 ),
        .Q(\n_0_FSM_onehot_state_reg[4] ),
        .R(n_8_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(n_6_I2C),
        .D(\n_0_FSM_onehot_state[5]_i_1 ),
        .Q(\n_0_FSM_onehot_state_reg[5] ),
        .R(n_8_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(n_6_I2C),
        .D(\n_0_FSM_onehot_state[6]_i_3 ),
        .Q(\n_0_FSM_onehot_state_reg[6] ),
        .R(n_8_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \FSM_onehot_state_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_3_I2C),
        .Q(\n_0_FSM_onehot_state_reg[7] ),
        .R(1'b0));
LUT4 #(
    .INIT(16'h0001)) 
     GoRead_i_8
       (.I0(n_0_GoRead_reg_i_9),
        .I1(n_0_GoRead_reg_i_10),
        .I2(n_0_GoRead_reg_i_11),
        .I3(n_0_GoRead_reg_i_12),
        .O(n_0_GoRead_reg_i_5));
FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     GoRead_reg_i_10
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_10_I2C),
        .Q(n_0_GoRead_reg_i_10),
        .R(1'b0));
FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     GoRead_reg_i_11
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_11_I2C),
        .Q(n_0_GoRead_reg_i_11),
        .R(1'b0));
FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     GoRead_reg_i_12
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_12_I2C),
        .Q(n_0_GoRead_reg_i_12),
        .R(1'b0));
(* XILINX_REPORT_XFORM = "IOBUF" *) 
   IOBUF GoRead_reg_i_2
       (.I(n_13_I2C),
        .IO(SDA),
        .O(n_0_GoRead_reg_i_2),
        .T(n_0_GoRead_reg_i_5));
FDRE #(
    .INIT(1'b1),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     GoRead_reg_i_9
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_7_I2C),
        .Q(n_0_GoRead_reg_i_9),
        .R(1'b0));
I2CController I2C
       (.Clk_IBUF_BUFG(Clk_IBUF_BUFG),
        .D(\n_0_InternalDataIn[7]_i_1 ),
        .DataTick(DataTick),
        .I1(\n_0_FSM_onehot_state[6]_i_10 ),
        .I10(\n_0_FSM_onehot_state[6]_i_7 ),
        .I11(\n_0_FSM_onehot_state[6]_i_13 ),
        .I12(\n_0_FSM_onehot_state[6]_i_12 ),
        .I13(\n_0_FSM_onehot_state_reg[6] ),
        .I14(\n_0_counter[31]_i_9__0 ),
        .I15(\n_0_FSM_onehot_state[7]_i_4__0 ),
        .I16(n_0_GoRead_reg_i_2),
        .I17(n_0_GoRead_reg_i_9),
        .I18(\n_0_counter[31]_i_4__0 ),
        .I19(\n_0_counter[31]_i_5 ),
        .I2(\n_0_FSM_onehot_state_reg[7] ),
        .I20(n_0_GoRead_reg_i_10),
        .I21(n_0_GoRead_reg_i_11),
        .I22(n_0_GoRead_reg_i_12),
        .I23(\n_0_FSM_onehot_state[7]_i_7__0 ),
        .I24(\n_0_FSM_onehot_state[6]_i_19 ),
        .I25(\n_0_FSM_onehot_state[6]_i_18 ),
        .I26(\n_0_FSM_onehot_state[6]_i_17 ),
        .I27(\n_0_FSM_onehot_state[6]_i_16 ),
        .I28(\n_0_counter_reg[25] ),
        .I29(\n_0_counter_reg[30] ),
        .I3(\n_0_FSM_onehot_state[2]_i_2 ),
        .I30(\n_0_counter_reg[26] ),
        .I31(\n_0_counter_reg[24] ),
        .I32(\n_0_counter_reg[3] ),
        .I33(\n_0_counter_reg[2] ),
        .I34(\n_0_counter_reg[4] ),
        .I35(\n_0_counter_reg[5] ),
        .I36(\n_0_counter_reg[0] ),
        .I4(\n_0_FSM_onehot_state_reg[2] ),
        .I5(\n_0_FSM_onehot_state_reg[1] ),
        .I6(\n_0_FSM_onehot_state[1]_i_3 ),
        .I7(\n_0_FSM_onehot_state[1]_i_4 ),
        .I8(\n_0_FSM_onehot_state[1]_i_5 ),
        .I9(\n_0_FSM_onehot_state_reg[5] ),
        .InternalStart(InternalStart),
        .O1(n_0_I2C),
        .O10(n_10_I2C),
        .O11(n_11_I2C),
        .O12(n_12_I2C),
        .O13(n_13_I2C),
        .O2(n_1_I2C),
        .O3(n_3_I2C),
        .O4(n_4_I2C),
        .O5(n_5_I2C),
        .O6(n_6_I2C),
        .O7(n_7_I2C),
        .O8(n_8_I2C),
        .O9(n_9_I2C),
        .Q({DataIn[3],DataIn[4],DataIn[5],DataIn[6],DataIn[8]}),
        .ReadWrite(ReadWrite),
        .Start(Start),
        .Tick(Tick));
LUT4 #(
    .INIT(16'hFFFE)) 
     \InternalDataIn[2]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[3] ),
        .O(\n_0_InternalDataIn[2]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT2 #(
    .INIT(4'h1)) 
     \InternalDataIn[2]_i_2 
       (.I0(\n_0_FSM_onehot_state_reg[6] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .O(\n_0_InternalDataIn[2]_i_2 ));
(* SOFT_HLUTNM = "soft_lutpair40" *) 
   LUT2 #(
    .INIT(4'hB)) 
     \InternalDataIn[3]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[6] ),
        .O(\n_0_InternalDataIn[3]_i_1 ));
(* SOFT_HLUTNM = "soft_lutpair41" *) 
   LUT2 #(
    .INIT(4'hE)) 
     \InternalDataIn[7]_i_1 
       (.I0(\n_0_FSM_onehot_state_reg[4] ),
        .I1(\n_0_FSM_onehot_state_reg[5] ),
        .O(\n_0_InternalDataIn[7]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \InternalDataIn_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_InternalDataIn[2]_i_1 ),
        .D(\n_0_InternalDataIn[2]_i_2 ),
        .Q(DataIn[3]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \InternalDataIn_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_InternalDataIn[2]_i_1 ),
        .D(\n_0_InternalDataIn[3]_i_1 ),
        .Q(DataIn[4]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \InternalDataIn_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_InternalDataIn[2]_i_1 ),
        .D(\n_0_FSM_onehot_state_reg[5] ),
        .Q(DataIn[5]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \InternalDataIn_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_InternalDataIn[2]_i_1 ),
        .D(\n_0_FSM_onehot_state_reg[4] ),
        .Q(DataIn[6]),
        .R(1'b0));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \InternalDataIn_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(\n_0_InternalDataIn[2]_i_1 ),
        .D(\n_0_InternalDataIn[7]_i_1 ),
        .Q(DataIn[8]),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'hDC)) 
     InternalReadWrite_i_1
       (.I0(\n_0_FSM_onehot_state_reg[2] ),
        .I1(\n_0_FSM_onehot_state_reg[7] ),
        .I2(ReadWrite),
        .O(n_0_InternalReadWrite_i_1));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     InternalReadWrite_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_InternalReadWrite_i_1),
        .Q(ReadWrite),
        .R(1'b0));
(* SOFT_HLUTNM = "soft_lutpair39" *) 
   LUT3 #(
    .INIT(8'h54)) 
     InternalStart_i_1
       (.I0(\n_0_FSM_onehot_state_reg[3] ),
        .I1(\n_0_FSM_onehot_state_reg[2] ),
        .I2(Start),
        .O(n_0_InternalStart_i_1));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     InternalStart_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_InternalStart_i_1),
        .Q(Start),
        .R(1'b0));
OBUF SCL_OBUF_inst
       (.I(n_1_I2C),
        .O(SCL));
LUT1 #(
    .INIT(2'h1)) 
     \counter[0]_i_1__0 
       (.I0(\n_0_counter_reg[0] ),
        .O(\n_0_counter[0]_i_1__0 ));
LUT2 #(
    .INIT(4'h1)) 
     \counter[31]_i_10 
       (.I0(\n_0_counter_reg[0] ),
        .I1(\n_0_counter_reg[4] ),
        .O(\n_0_counter[31]_i_10 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \counter[31]_i_11 
       (.I0(\n_0_counter_reg[25] ),
        .I1(\n_0_counter_reg[30] ),
        .I2(\n_0_counter_reg[26] ),
        .I3(\n_0_counter_reg[24] ),
        .O(\n_0_counter[31]_i_11 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFEFFFFF)) 
     \counter[31]_i_4__0 
       (.I0(\n_0_FSM_onehot_state[6]_i_7 ),
        .I1(\n_0_counter_reg[2] ),
        .I2(\n_0_counter[31]_i_10 ),
        .I3(\n_0_counter_reg[5] ),
        .I4(\n_0_counter_reg[3] ),
        .I5(\n_0_counter[31]_i_11 ),
        .O(\n_0_counter[31]_i_4__0 ));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     \counter[31]_i_5 
       (.I0(\n_0_FSM_onehot_state_reg[5] ),
        .I1(\n_0_FSM_onehot_state_reg[4] ),
        .I2(\n_0_FSM_onehot_state_reg[6] ),
        .I3(\n_0_FSM_onehot_state_reg[2] ),
        .I4(\n_0_FSM_onehot_state_reg[3] ),
        .O(\n_0_counter[31]_i_5 ));
LUT6 #(
    .INIT(64'hFFBFFFFFFFFFFFFF)) 
     \counter[31]_i_9__0 
       (.I0(\n_0_counter[31]_i_11 ),
        .I1(\n_0_counter_reg[2] ),
        .I2(\n_0_counter_reg[5] ),
        .I3(\n_0_counter_reg[3] ),
        .I4(\n_0_counter_reg[4] ),
        .I5(\n_0_counter_reg[0] ),
        .O(\n_0_counter[31]_i_9__0 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[0] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(\n_0_counter[0]_i_1__0 ),
        .Q(\n_0_counter_reg[0] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[10] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[10]),
        .Q(\n_0_counter_reg[10] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[11] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[11]),
        .Q(\n_0_counter_reg[11] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[12] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[12]),
        .Q(\n_0_counter_reg[12] ),
        .R(n_9_I2C));
CARRY4 \counter_reg[12]_i_1 
       (.CI(\n_0_counter_reg[8]_i_1 ),
        .CO({\n_0_counter_reg[12]_i_1 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\n_0_counter_reg[12] ,\n_0_counter_reg[11] ,\n_0_counter_reg[10] ,\n_0_counter_reg[9] }));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[13] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[13]),
        .Q(\n_0_counter_reg[13] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[14] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[14]),
        .Q(\n_0_counter_reg[14] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[15] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[15]),
        .Q(\n_0_counter_reg[15] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[16] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[16]),
        .Q(\n_0_counter_reg[16] ),
        .R(n_9_I2C));
CARRY4 \counter_reg[16]_i_1 
       (.CI(\n_0_counter_reg[12]_i_1 ),
        .CO({\n_0_counter_reg[16]_i_1 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\n_0_counter_reg[16] ,\n_0_counter_reg[15] ,\n_0_counter_reg[14] ,\n_0_counter_reg[13] }));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[17] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[17]),
        .Q(\n_0_counter_reg[17] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[18] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[18]),
        .Q(\n_0_counter_reg[18] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[19] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[19]),
        .Q(\n_0_counter_reg[19] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[1] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[1]),
        .Q(\n_0_counter_reg[1] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[20] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[20]),
        .Q(\n_0_counter_reg[20] ),
        .R(n_9_I2C));
CARRY4 \counter_reg[20]_i_1 
       (.CI(\n_0_counter_reg[16]_i_1 ),
        .CO({\n_0_counter_reg[20]_i_1 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\n_0_counter_reg[20] ,\n_0_counter_reg[19] ,\n_0_counter_reg[18] ,\n_0_counter_reg[17] }));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[21] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[21]),
        .Q(\n_0_counter_reg[21] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[22] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[22]),
        .Q(\n_0_counter_reg[22] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[23] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[23]),
        .Q(\n_0_counter_reg[23] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[24] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[24]),
        .Q(\n_0_counter_reg[24] ),
        .R(n_9_I2C));
CARRY4 \counter_reg[24]_i_1 
       (.CI(\n_0_counter_reg[20]_i_1 ),
        .CO({\n_0_counter_reg[24]_i_1 ,\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\n_0_counter_reg[24] ,\n_0_counter_reg[23] ,\n_0_counter_reg[22] ,\n_0_counter_reg[21] }));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[25] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[25]),
        .Q(\n_0_counter_reg[25] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[26] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[26]),
        .Q(\n_0_counter_reg[26] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[27] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[27]),
        .Q(\n_0_counter_reg[27] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[28] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[28]),
        .Q(\n_0_counter_reg[28] ),
        .R(n_9_I2C));
CARRY4 \counter_reg[28]_i_1 
       (.CI(\n_0_counter_reg[24]_i_1 ),
        .CO({\n_0_counter_reg[28]_i_1 ,\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\n_0_counter_reg[28] ,\n_0_counter_reg[27] ,\n_0_counter_reg[26] ,\n_0_counter_reg[25] }));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[29] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[29]),
        .Q(\n_0_counter_reg[29] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[2] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[2]),
        .Q(\n_0_counter_reg[2] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[30] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[30]),
        .Q(\n_0_counter_reg[30] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[31] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[31]),
        .Q(\n_0_counter_reg[31] ),
        .R(n_9_I2C));
CARRY4 \counter_reg[31]_i_2 
       (.CI(\n_0_counter_reg[28]_i_1 ),
        .CO(\NLW_counter_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_2_O_UNCONNECTED [3],data0[31:29]}),
        .S({1'b0,\n_0_counter_reg[31] ,\n_0_counter_reg[30] ,\n_0_counter_reg[29] }));
BUFG \counter_reg[31]_i_3 
       (.I(n_0_I2C),
        .O(Tick));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[3] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[3]),
        .Q(\n_0_counter_reg[3] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[4] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[4]),
        .Q(\n_0_counter_reg[4] ),
        .R(n_9_I2C));
CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\n_0_counter_reg[4]_i_1 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(\n_0_counter_reg[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\n_0_counter_reg[4] ,\n_0_counter_reg[3] ,\n_0_counter_reg[2] ,\n_0_counter_reg[1] }));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[5] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[5]),
        .Q(\n_0_counter_reg[5] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[6] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[6]),
        .Q(\n_0_counter_reg[6] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[7] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[7]),
        .Q(\n_0_counter_reg[7] ),
        .R(n_9_I2C));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[8] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[8]),
        .Q(\n_0_counter_reg[8] ),
        .R(n_9_I2C));
CARRY4 \counter_reg[8]_i_1 
       (.CI(\n_0_counter_reg[4]_i_1 ),
        .CO({\n_0_counter_reg[8]_i_1 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\n_0_counter_reg[8] ,\n_0_counter_reg[7] ,\n_0_counter_reg[6] ,\n_0_counter_reg[5] }));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[9] 
       (.C(Clk_IBUF_BUFG),
        .CE(DataTick),
        .D(data0[9]),
        .Q(\n_0_counter_reg[9] ),
        .R(n_9_I2C));
endmodule

module SCLGenerator
   (state,
    O2,
    SCLTick,
    O1,
    O4,
    O3,
    O5,
    O6,
    O7,
    O8,
    O9,
    O10,
    I1,
    Tick,
    Clk_IBUF_BUFG,
    I3,
    I2,
    I4,
    I5,
    I6,
    I11,
    InternalStart,
    Stop,
    I10,
    I12,
    I7,
    Q,
    GoRead,
    I8,
    I15,
    I9,
    I13,
    I14,
    I16,
    I17,
    I18,
    I23,
    I24,
    I25,
    I26,
    I27,
    I28,
    I29,
    I30,
    I31,
    I32,
    I33,
    I34,
    I35,
    I36);
  output state;
  output O2;
  output SCLTick;
  output O1;
  output O4;
  output O3;
  output O5;
  output O6;
  output O7;
  output O8;
  output O9;
  output O10;
  input I1;
  input Tick;
  input Clk_IBUF_BUFG;
  input I3;
  input I2;
  input I4;
  input I5;
  input I6;
  input I11;
  input InternalStart;
  input Stop;
  input I10;
  input I12;
  input I7;
  input [0:0]Q;
  input GoRead;
  input [0:0]I8;
  input I15;
  input I9;
  input I13;
  input I14;
  input I16;
  input I17;
  input I18;
  input I23;
  input I24;
  input I25;
  input I26;
  input I27;
  input I28;
  input I29;
  input I30;
  input I31;
  input I32;
  input I33;
  input I34;
  input I35;
  input I36;

  wire Clk_IBUF_BUFG;
  wire GoRead;
  wire I1;
  wire I10;
  wire I11;
  wire I12;
  wire I13;
  wire I14;
  wire I15;
  wire I16;
  wire I17;
  wire I18;
  wire I2;
  wire I23;
  wire I24;
  wire I25;
  wire I26;
  wire I27;
  wire I28;
  wire I29;
  wire I3;
  wire I30;
  wire I31;
  wire I32;
  wire I33;
  wire I34;
  wire I35;
  wire I36;
  wire I4;
  wire I5;
  wire I6;
  wire I7;
  wire [0:0]I8;
  wire I9;
  wire InternalStart;
  wire O1;
  wire O10;
  wire O2;
  wire O3;
  wire O4;
  wire O5;
  wire O6;
  wire O7;
  wire O8;
  wire O9;
  wire [0:0]Q;
  wire SCLTick;
  wire Stop;
  wire Tick;
  wire [31:0]counter;
  wire n_0_DataTick_i_1;
  wire n_0_DataTick_i_2;
  wire \n_0_FSM_onehot_state[6]_i_15 ;
  wire \n_0_FSM_onehot_state[6]_i_5 ;
  wire \n_0_FSM_onehot_state[7]_i_5__0 ;
  wire n_0_SCLFallTick_i_1;
  wire n_0_SCLFallTick_i_2;
  wire n_0_SCLFallTick_i_3;
  wire n_0_SCLFallTick_i_4;
  wire n_0_SCLFallTick_i_5;
  wire n_0_SCLFallTick_i_6;
  wire n_0_SCLTick_i_1;
  wire n_0_SCLTick_i_2;
  wire n_0_SCLTick_i_3;
  wire n_0_SCLTick_i_4;
  wire n_0_SCLTick_i_5;
  wire n_0_SCLTick_i_6;
  wire n_0_SCLTick_i_7;
  wire n_0_SCL_i_1;
  wire n_0_SCL_i_2;
  wire n_0_SCL_i_3;
  wire \n_0_counter[0]_i_1 ;
  wire \n_0_counter[31]_i_1 ;
  wire \n_0_counter[31]_i_4 ;
  wire \n_0_counter[31]_i_8 ;
  wire \n_0_counter[31]_i_9 ;
  wire \n_0_counter_reg[12]_i_1 ;
  wire \n_0_counter_reg[16]_i_1 ;
  wire \n_0_counter_reg[20]_i_1 ;
  wire \n_0_counter_reg[24]_i_1 ;
  wire \n_0_counter_reg[28]_i_1 ;
  wire \n_0_counter_reg[4]_i_1 ;
  wire \n_0_counter_reg[8]_i_1 ;
  wire \n_4_counter_reg[12]_i_1 ;
  wire \n_4_counter_reg[16]_i_1 ;
  wire \n_4_counter_reg[20]_i_1 ;
  wire \n_4_counter_reg[24]_i_1 ;
  wire \n_4_counter_reg[28]_i_1 ;
  wire \n_4_counter_reg[4]_i_1 ;
  wire \n_4_counter_reg[8]_i_1 ;
  wire \n_5_counter_reg[12]_i_1 ;
  wire \n_5_counter_reg[16]_i_1 ;
  wire \n_5_counter_reg[20]_i_1 ;
  wire \n_5_counter_reg[24]_i_1 ;
  wire \n_5_counter_reg[28]_i_1 ;
  wire \n_5_counter_reg[31]_i_2 ;
  wire \n_5_counter_reg[4]_i_1 ;
  wire \n_5_counter_reg[8]_i_1 ;
  wire \n_6_counter_reg[12]_i_1 ;
  wire \n_6_counter_reg[16]_i_1 ;
  wire \n_6_counter_reg[20]_i_1 ;
  wire \n_6_counter_reg[24]_i_1 ;
  wire \n_6_counter_reg[28]_i_1 ;
  wire \n_6_counter_reg[31]_i_2 ;
  wire \n_6_counter_reg[4]_i_1 ;
  wire \n_6_counter_reg[8]_i_1 ;
  wire \n_7_counter_reg[12]_i_1 ;
  wire \n_7_counter_reg[16]_i_1 ;
  wire \n_7_counter_reg[20]_i_1 ;
  wire \n_7_counter_reg[24]_i_1 ;
  wire \n_7_counter_reg[28]_i_1 ;
  wire \n_7_counter_reg[31]_i_2 ;
  wire \n_7_counter_reg[4]_i_1 ;
  wire \n_7_counter_reg[8]_i_1 ;
  wire state;
  wire [2:0]\NLW_counter_reg[12]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[16]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[20]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[24]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:0]\NLW_counter_reg[31]_i_2_CO_UNCONNECTED ;
  wire [3:3]\NLW_counter_reg[31]_i_2_O_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[4]_i_1_CO_UNCONNECTED ;
  wire [2:0]\NLW_counter_reg[8]_i_1_CO_UNCONNECTED ;

LUT6 #(
    .INIT(64'h1010000000FF0000)) 
     DataTick_i_1
       (.I0(n_0_DataTick_i_2),
        .I1(n_0_SCLFallTick_i_2),
        .I2(O1),
        .I3(\n_0_counter[31]_i_4 ),
        .I4(I6),
        .I5(counter[0]),
        .O(n_0_DataTick_i_1));
LUT2 #(
    .INIT(4'hE)) 
     DataTick_i_2
       (.I0(n_0_SCLFallTick_i_6),
        .I1(counter[29]),
        .O(n_0_DataTick_i_2));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     DataTick_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_DataTick_i_1),
        .Q(O1),
        .R(1'b0));
LUT5 #(
    .INIT(32'hFE020E02)) 
     \FSM_onehot_state[11]_i_1__0 
       (.I0(O1),
        .I1(I7),
        .I2(Q),
        .I3(SCLTick),
        .I4(GoRead),
        .O(O6));
LUT6 #(
    .INIT(64'hAAAAABBBAAAAA888)) 
     \FSM_onehot_state[2]_i_1 
       (.I0(I3),
        .I1(O3),
        .I2(I2),
        .I3(I4),
        .I4(O5),
        .I5(I5),
        .O(O4));
LUT6 #(
    .INIT(64'h4000000000000000)) 
     \FSM_onehot_state[6]_i_15 
       (.I0(I32),
        .I1(I33),
        .I2(I34),
        .I3(O1),
        .I4(I35),
        .I5(I36),
        .O(\n_0_FSM_onehot_state[6]_i_15 ));
LUT6 #(
    .INIT(64'h00000000FFFFEEFE)) 
     \FSM_onehot_state[6]_i_1__3 
       (.I0(O5),
        .I1(\n_0_FSM_onehot_state[6]_i_5 ),
        .I2(O9),
        .I3(I10),
        .I4(I17),
        .I5(I18),
        .O(O8));
LUT4 #(
    .INIT(16'h0800)) 
     \FSM_onehot_state[6]_i_4 
       (.I0(O1),
        .I1(I14),
        .I2(I10),
        .I3(I12),
        .O(O5));
LUT6 #(
    .INIT(64'hE000E0E0E000E000)) 
     \FSM_onehot_state[6]_i_5 
       (.I0(I11),
        .I1(InternalStart),
        .I2(O1),
        .I3(Stop),
        .I4(I10),
        .I5(I12),
        .O(\n_0_FSM_onehot_state[6]_i_5 ));
LUT6 #(
    .INIT(64'h0001000000000000)) 
     \FSM_onehot_state[6]_i_6 
       (.I0(I28),
        .I1(I29),
        .I2(I30),
        .I3(I31),
        .I4(I13),
        .I5(\n_0_FSM_onehot_state[6]_i_15 ),
        .O(O9));
LUT6 #(
    .INIT(64'hFFFFFFFFA888A800)) 
     \FSM_onehot_state[7]_i_3__0 
       (.I0(O1),
        .I1(Stop),
        .I2(I15),
        .I3(I9),
        .I4(I13),
        .I5(\n_0_FSM_onehot_state[7]_i_5__0 ),
        .O(O3));
LUT6 #(
    .INIT(64'h0000000000000008)) 
     \FSM_onehot_state[7]_i_5__0 
       (.I0(\n_0_FSM_onehot_state[6]_i_15 ),
        .I1(I23),
        .I2(I24),
        .I3(I25),
        .I4(I26),
        .I5(I27),
        .O(\n_0_FSM_onehot_state[7]_i_5__0 ));
LUT2 #(
    .INIT(4'h2)) 
     GoRead_i_31
       (.I0(O1),
        .I1(I8),
        .O(O7));
LUT6 #(
    .INIT(64'h1000FFFF10001000)) 
     SCLFallTick_i_1
       (.I0(n_0_SCLFallTick_i_2),
        .I1(n_0_SCLFallTick_i_3),
        .I2(I6),
        .I3(O10),
        .I4(n_0_SCLFallTick_i_4),
        .I5(n_0_SCLFallTick_i_5),
        .O(n_0_SCLFallTick_i_1));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     SCLFallTick_i_2
       (.I0(n_0_SCLTick_i_3),
        .I1(counter[16]),
        .I2(n_0_SCLTick_i_4),
        .I3(\n_0_counter[31]_i_8 ),
        .I4(\n_0_counter[31]_i_9 ),
        .O(n_0_SCLFallTick_i_2));
LUT3 #(
    .INIT(8'hEF)) 
     SCLFallTick_i_3
       (.I0(counter[29]),
        .I1(n_0_SCLFallTick_i_6),
        .I2(counter[1]),
        .O(n_0_SCLFallTick_i_3));
LUT5 #(
    .INIT(32'hFFFFFFFE)) 
     SCLFallTick_i_4
       (.I0(n_0_SCLTick_i_4),
        .I1(\n_0_counter[31]_i_9 ),
        .I2(counter[16]),
        .I3(n_0_SCLTick_i_3),
        .I4(\n_0_counter[31]_i_8 ),
        .O(n_0_SCLFallTick_i_4));
LUT4 #(
    .INIT(16'h0040)) 
     SCLFallTick_i_5
       (.I0(counter[1]),
        .I1(I6),
        .I2(counter[0]),
        .I3(n_0_DataTick_i_2),
        .O(n_0_SCLFallTick_i_5));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     SCLFallTick_i_6
       (.I0(counter[25]),
        .I1(counter[28]),
        .I2(counter[26]),
        .I3(counter[30]),
        .I4(counter[24]),
        .I5(counter[27]),
        .O(n_0_SCLFallTick_i_6));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     SCLFallTick_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_SCLFallTick_i_1),
        .Q(O10),
        .R(1'b0));
LUT6 #(
    .INIT(64'h02FF020202020202)) 
     SCLTick_i_1
       (.I0(n_0_SCLTick_i_2),
        .I1(n_0_SCLTick_i_3),
        .I2(n_0_SCLTick_i_4),
        .I3(\n_0_counter[31]_i_4 ),
        .I4(I6),
        .I5(counter[0]),
        .O(n_0_SCLTick_i_1));
(* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT5 #(
    .INIT(32'h00000028)) 
     SCLTick_i_2
       (.I0(n_0_SCLTick_i_5),
        .I1(counter[1]),
        .I2(counter[0]),
        .I3(\n_0_counter[31]_i_9 ),
        .I4(n_0_DataTick_i_2),
        .O(n_0_SCLTick_i_2));
LUT2 #(
    .INIT(4'hE)) 
     SCLTick_i_3
       (.I0(n_0_SCLTick_i_6),
        .I1(counter[19]),
        .O(n_0_SCLTick_i_3));
LUT3 #(
    .INIT(8'hFE)) 
     SCLTick_i_4
       (.I0(counter[8]),
        .I1(counter[9]),
        .I2(n_0_SCLTick_i_7),
        .O(n_0_SCLTick_i_4));
LUT6 #(
    .INIT(64'h0000000000000020)) 
     SCLTick_i_5
       (.I0(SCLTick),
        .I1(counter[31]),
        .I2(I6),
        .I3(counter[16]),
        .I4(counter[2]),
        .I5(counter[3]),
        .O(n_0_SCLTick_i_5));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     SCLTick_i_6
       (.I0(counter[21]),
        .I1(counter[18]),
        .I2(counter[22]),
        .I3(counter[17]),
        .I4(counter[20]),
        .I5(counter[23]),
        .O(n_0_SCLTick_i_6));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     SCLTick_i_7
       (.I0(counter[10]),
        .I1(counter[11]),
        .I2(counter[15]),
        .I3(counter[14]),
        .I4(counter[13]),
        .I5(counter[12]),
        .O(n_0_SCLTick_i_7));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     SCLTick_reg
       (.C(Clk_IBUF_BUFG),
        .CE(1'b1),
        .D(n_0_SCLTick_i_1),
        .Q(SCLTick),
        .R(1'b0));
LUT6 #(
    .INIT(64'hFFFFFFFFCC44CCF4)) 
     SCL_i_1
       (.I0(n_0_SCL_i_2),
        .I1(O2),
        .I2(n_0_SCL_i_3),
        .I3(n_0_SCLFallTick_i_4),
        .I4(n_0_SCLFallTick_i_3),
        .I5(I16),
        .O(n_0_SCL_i_1));
LUT4 #(
    .INIT(16'h0004)) 
     SCL_i_2
       (.I0(counter[0]),
        .I1(state),
        .I2(counter[1]),
        .I3(n_0_DataTick_i_2),
        .O(n_0_SCL_i_2));
LUT2 #(
    .INIT(4'h2)) 
     SCL_i_3
       (.I0(state),
        .I1(counter[0]),
        .O(n_0_SCL_i_3));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     SCL_reg
       (.C(Tick),
        .CE(1'b1),
        .D(n_0_SCL_i_1),
        .Q(O2),
        .R(1'b0));
(* RETAIN_INVERTER *) 
   (* SOFT_HLUTNM = "soft_lutpair28" *) 
   LUT1 #(
    .INIT(2'h1)) 
     \counter[0]_i_1 
       (.I0(counter[0]),
        .O(\n_0_counter[0]_i_1 ));
LUT2 #(
    .INIT(4'h2)) 
     \counter[31]_i_1 
       (.I0(counter[0]),
        .I1(\n_0_counter[31]_i_4 ),
        .O(\n_0_counter[31]_i_1 ));
LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
     \counter[31]_i_4 
       (.I0(n_0_SCLFallTick_i_3),
        .I1(\n_0_counter[31]_i_8 ),
        .I2(n_0_SCLTick_i_3),
        .I3(counter[16]),
        .I4(\n_0_counter[31]_i_9 ),
        .I5(n_0_SCLTick_i_4),
        .O(\n_0_counter[31]_i_4 ));
LUT3 #(
    .INIT(8'hFE)) 
     \counter[31]_i_8 
       (.I0(counter[2]),
        .I1(counter[3]),
        .I2(counter[31]),
        .O(\n_0_counter[31]_i_8 ));
LUT4 #(
    .INIT(16'hFFFE)) 
     \counter[31]_i_9 
       (.I0(counter[4]),
        .I1(counter[5]),
        .I2(counter[6]),
        .I3(counter[7]),
        .O(\n_0_counter[31]_i_9 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[0] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_0_counter[0]_i_1 ),
        .Q(counter[0]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[10] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_6_counter_reg[12]_i_1 ),
        .Q(counter[10]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[11] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_5_counter_reg[12]_i_1 ),
        .Q(counter[11]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[12] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_4_counter_reg[12]_i_1 ),
        .Q(counter[12]),
        .R(\n_0_counter[31]_i_1 ));
CARRY4 \counter_reg[12]_i_1 
       (.CI(\n_0_counter_reg[8]_i_1 ),
        .CO({\n_0_counter_reg[12]_i_1 ,\NLW_counter_reg[12]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[12]_i_1 ,\n_5_counter_reg[12]_i_1 ,\n_6_counter_reg[12]_i_1 ,\n_7_counter_reg[12]_i_1 }),
        .S(counter[12:9]));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[13] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_7_counter_reg[16]_i_1 ),
        .Q(counter[13]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[14] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_6_counter_reg[16]_i_1 ),
        .Q(counter[14]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[15] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_5_counter_reg[16]_i_1 ),
        .Q(counter[15]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[16] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_4_counter_reg[16]_i_1 ),
        .Q(counter[16]),
        .R(\n_0_counter[31]_i_1 ));
CARRY4 \counter_reg[16]_i_1 
       (.CI(\n_0_counter_reg[12]_i_1 ),
        .CO({\n_0_counter_reg[16]_i_1 ,\NLW_counter_reg[16]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[16]_i_1 ,\n_5_counter_reg[16]_i_1 ,\n_6_counter_reg[16]_i_1 ,\n_7_counter_reg[16]_i_1 }),
        .S(counter[16:13]));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[17] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_7_counter_reg[20]_i_1 ),
        .Q(counter[17]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[18] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_6_counter_reg[20]_i_1 ),
        .Q(counter[18]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[19] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_5_counter_reg[20]_i_1 ),
        .Q(counter[19]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[1] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_7_counter_reg[4]_i_1 ),
        .Q(counter[1]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[20] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_4_counter_reg[20]_i_1 ),
        .Q(counter[20]),
        .R(\n_0_counter[31]_i_1 ));
CARRY4 \counter_reg[20]_i_1 
       (.CI(\n_0_counter_reg[16]_i_1 ),
        .CO({\n_0_counter_reg[20]_i_1 ,\NLW_counter_reg[20]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[20]_i_1 ,\n_5_counter_reg[20]_i_1 ,\n_6_counter_reg[20]_i_1 ,\n_7_counter_reg[20]_i_1 }),
        .S(counter[20:17]));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[21] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_7_counter_reg[24]_i_1 ),
        .Q(counter[21]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[22] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_6_counter_reg[24]_i_1 ),
        .Q(counter[22]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[23] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_5_counter_reg[24]_i_1 ),
        .Q(counter[23]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[24] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_4_counter_reg[24]_i_1 ),
        .Q(counter[24]),
        .R(\n_0_counter[31]_i_1 ));
CARRY4 \counter_reg[24]_i_1 
       (.CI(\n_0_counter_reg[20]_i_1 ),
        .CO({\n_0_counter_reg[24]_i_1 ,\NLW_counter_reg[24]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[24]_i_1 ,\n_5_counter_reg[24]_i_1 ,\n_6_counter_reg[24]_i_1 ,\n_7_counter_reg[24]_i_1 }),
        .S(counter[24:21]));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[25] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_7_counter_reg[28]_i_1 ),
        .Q(counter[25]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[26] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_6_counter_reg[28]_i_1 ),
        .Q(counter[26]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[27] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_5_counter_reg[28]_i_1 ),
        .Q(counter[27]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[28] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_4_counter_reg[28]_i_1 ),
        .Q(counter[28]),
        .R(\n_0_counter[31]_i_1 ));
CARRY4 \counter_reg[28]_i_1 
       (.CI(\n_0_counter_reg[24]_i_1 ),
        .CO({\n_0_counter_reg[28]_i_1 ,\NLW_counter_reg[28]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[28]_i_1 ,\n_5_counter_reg[28]_i_1 ,\n_6_counter_reg[28]_i_1 ,\n_7_counter_reg[28]_i_1 }),
        .S(counter[28:25]));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[29] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_7_counter_reg[31]_i_2 ),
        .Q(counter[29]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[2] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_6_counter_reg[4]_i_1 ),
        .Q(counter[2]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[30] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_6_counter_reg[31]_i_2 ),
        .Q(counter[30]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[31] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_5_counter_reg[31]_i_2 ),
        .Q(counter[31]),
        .R(\n_0_counter[31]_i_1 ));
CARRY4 \counter_reg[31]_i_2 
       (.CI(\n_0_counter_reg[28]_i_1 ),
        .CO(\NLW_counter_reg[31]_i_2_CO_UNCONNECTED [3:0]),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_counter_reg[31]_i_2_O_UNCONNECTED [3],\n_5_counter_reg[31]_i_2 ,\n_6_counter_reg[31]_i_2 ,\n_7_counter_reg[31]_i_2 }),
        .S({1'b0,counter[31:29]}));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[3] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_5_counter_reg[4]_i_1 ),
        .Q(counter[3]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[4] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_4_counter_reg[4]_i_1 ),
        .Q(counter[4]),
        .R(\n_0_counter[31]_i_1 ));
CARRY4 \counter_reg[4]_i_1 
       (.CI(1'b0),
        .CO({\n_0_counter_reg[4]_i_1 ,\NLW_counter_reg[4]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(counter[0]),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[4]_i_1 ,\n_5_counter_reg[4]_i_1 ,\n_6_counter_reg[4]_i_1 ,\n_7_counter_reg[4]_i_1 }),
        .S(counter[4:1]));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[5] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_7_counter_reg[8]_i_1 ),
        .Q(counter[5]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[6] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_6_counter_reg[8]_i_1 ),
        .Q(counter[6]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[7] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_5_counter_reg[8]_i_1 ),
        .Q(counter[7]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[8] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_4_counter_reg[8]_i_1 ),
        .Q(counter[8]),
        .R(\n_0_counter[31]_i_1 ));
CARRY4 \counter_reg[8]_i_1 
       (.CI(\n_0_counter_reg[4]_i_1 ),
        .CO({\n_0_counter_reg[8]_i_1 ,\NLW_counter_reg[8]_i_1_CO_UNCONNECTED [2:0]}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\n_4_counter_reg[8]_i_1 ,\n_5_counter_reg[8]_i_1 ,\n_6_counter_reg[8]_i_1 ,\n_7_counter_reg[8]_i_1 }),
        .S(counter[8:5]));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     \counter_reg[9] 
       (.C(Tick),
        .CE(1'b1),
        .D(\n_7_counter_reg[12]_i_1 ),
        .Q(counter[9]),
        .R(\n_0_counter[31]_i_1 ));
FDRE #(
    .INIT(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .IS_R_INVERTED(1'b0)) 
     state_reg
       (.C(Tick),
        .CE(1'b1),
        .D(I1),
        .Q(state),
        .R(1'b0));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
