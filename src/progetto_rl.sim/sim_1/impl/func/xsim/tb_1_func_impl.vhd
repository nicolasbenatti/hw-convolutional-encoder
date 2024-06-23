-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (lin64) Build 3367213 Tue Oct 19 02:47:39 MDT 2021
-- Date        : Sun Apr 24 17:10:47 2022
-- Host        : workstation running 64-bit unknown
-- Command     : write_vhdl -mode funcsim -nolib -force -file
--               /home/aelysium/OneDrive/Polimi/3o_anno/reti_logiche/progetto/progetto_rl/progetto_rl.sim/sim_1/impl/func/xsim/tb_1_func_impl.vhd
-- Design      : project_reti_logiche
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity project_reti_logiche is
  port (
    i_clk : in STD_LOGIC;
    i_rst : in STD_LOGIC;
    i_start : in STD_LOGIC;
    i_data : in STD_LOGIC_VECTOR ( 7 downto 0 );
    o_address : out STD_LOGIC_VECTOR ( 15 downto 0 );
    o_done : out STD_LOGIC;
    o_en : out STD_LOGIC;
    o_we : out STD_LOGIC;
    o_data : out STD_LOGIC_VECTOR ( 7 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of project_reti_logiche : entity is true;
  attribute ECO_CHECKSUM : string;
  attribute ECO_CHECKSUM of project_reti_logiche : entity is "3b470f6e";
end project_reti_logiche;

architecture STRUCTURE of project_reti_logiche is
  signal \FSM_sequential_cur_state[4]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_sequential_cur_state[4]_i_2_n_0\ : STD_LOGIC;
  signal cnv_en : STD_LOGIC;
  signal cnv_en_reg_i_1_n_0 : STD_LOGIC;
  signal cnv_en_reg_i_2_n_0 : STD_LOGIC;
  signal cnv_out : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal cur_state : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal cur_state_conv : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal i_clk_IBUF : STD_LOGIC;
  signal i_clk_IBUF_BUFG : STD_LOGIC;
  signal i_data_IBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal i_rst_IBUF : STD_LOGIC;
  signal i_start_IBUF : STD_LOGIC;
  signal mux1_sel : STD_LOGIC;
  signal mux1_sel_reg_i_1_n_0 : STD_LOGIC;
  signal mux1_sel_reg_i_2_n_0 : STD_LOGIC;
  signal mux2_sel : STD_LOGIC;
  signal mux2_sel_reg_i_1_n_0 : STD_LOGIC;
  signal mux2_sel_reg_i_2_n_0 : STD_LOGIC;
  signal mux3_sel : STD_LOGIC;
  signal mux3_sel_reg_i_2_n_0 : STD_LOGIC;
  signal next_state : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal next_state_conv : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal o_address_OBUF : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal o_data_OBUF : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal o_en_OBUF : STD_LOGIC;
  signal o_en_reg_i_1_n_0 : STD_LOGIC;
  signal o_en_reg_i_2_n_0 : STD_LOGIC;
  signal o_we_OBUF : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 1 to 1 );
  signal pk : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal r0_ld : STD_LOGIC;
  signal r0_ld_reg_i_1_n_0 : STD_LOGIC;
  signal r0_ld_reg_i_2_n_0 : STD_LOGIC;
  signal r1_ld : STD_LOGIC;
  signal r1_ld_reg_i_1_n_0 : STD_LOGIC;
  signal r1_ld_reg_i_2_n_0 : STD_LOGIC;
  signal \r1_out[0]_i_2_n_0\ : STD_LOGIC;
  signal \r1_out[0]_i_3_n_0\ : STD_LOGIC;
  signal \r1_out[0]_i_4_n_0\ : STD_LOGIC;
  signal \r1_out[0]_i_5_n_0\ : STD_LOGIC;
  signal \r1_out[12]_i_2_n_0\ : STD_LOGIC;
  signal \r1_out[12]_i_3_n_0\ : STD_LOGIC;
  signal \r1_out[12]_i_4_n_0\ : STD_LOGIC;
  signal \r1_out[12]_i_5_n_0\ : STD_LOGIC;
  signal \r1_out[4]_i_2_n_0\ : STD_LOGIC;
  signal \r1_out[4]_i_3_n_0\ : STD_LOGIC;
  signal \r1_out[4]_i_4_n_0\ : STD_LOGIC;
  signal \r1_out[4]_i_5_n_0\ : STD_LOGIC;
  signal \r1_out[8]_i_2_n_0\ : STD_LOGIC;
  signal \r1_out[8]_i_3_n_0\ : STD_LOGIC;
  signal \r1_out[8]_i_4_n_0\ : STD_LOGIC;
  signal \r1_out[8]_i_5_n_0\ : STD_LOGIC;
  signal r1_out_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \r1_out_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \r1_out_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \r1_out_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \r1_out_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \r1_out_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \r1_out_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \r1_out_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \r1_out_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \r1_out_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \r1_out_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \r1_out_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \r1_out_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \r1_out_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \r1_out_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \r1_out_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \r1_out_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \r1_out_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \r1_out_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \r1_out_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal r3_en : STD_LOGIC;
  signal r3_en_reg_i_1_n_0 : STD_LOGIC;
  signal r3_en_reg_i_2_n_0 : STD_LOGIC;
  signal r3_ld_sh : STD_LOGIC;
  signal r3_ld_sh_reg_i_1_n_0 : STD_LOGIC;
  signal r3_ld_sh_reg_i_2_n_0 : STD_LOGIC;
  signal r3_out : STD_LOGIC_VECTOR ( 6 downto 0 );
  signal \r3_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \r3_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \r3_out[2]_i_1_n_0\ : STD_LOGIC;
  signal \r3_out[3]_i_1_n_0\ : STD_LOGIC;
  signal \r3_out[4]_i_1_n_0\ : STD_LOGIC;
  signal \r3_out[5]_i_1_n_0\ : STD_LOGIC;
  signal \r3_out[6]_i_1_n_0\ : STD_LOGIC;
  signal \r3_out[7]_i_1_n_0\ : STD_LOGIC;
  signal r4_ld_sh : STD_LOGIC;
  signal r4_ld_sh_reg_i_1_n_0 : STD_LOGIC;
  signal r4_ld_sh_reg_i_2_n_0 : STD_LOGIC;
  signal \r4_out[0]_i_1_n_0\ : STD_LOGIC;
  signal \r4_out[1]_i_1_n_0\ : STD_LOGIC;
  signal \r4_out_reg_n_0_[1]\ : STD_LOGIC;
  signal \r5_out_reg[0]_lopt_replica_1\ : STD_LOGIC;
  signal \r5_out_reg[1]_lopt_replica_1\ : STD_LOGIC;
  signal \r5_out_reg[2]_lopt_replica_1\ : STD_LOGIC;
  signal \r5_out_reg[3]_lopt_replica_1\ : STD_LOGIC;
  signal \r5_out_reg[4]_lopt_replica_1\ : STD_LOGIC;
  signal \r5_out_reg[5]_lopt_replica_1\ : STD_LOGIC;
  signal \r5_out_reg[6]_lopt_replica_1\ : STD_LOGIC;
  signal u : STD_LOGIC;
  signal \wr_addr[0]_i_2_n_0\ : STD_LOGIC;
  signal \wr_addr[0]_i_3_n_0\ : STD_LOGIC;
  signal \wr_addr[0]_i_4_n_0\ : STD_LOGIC;
  signal \wr_addr[0]_i_5_n_0\ : STD_LOGIC;
  signal \wr_addr[12]_i_2_n_0\ : STD_LOGIC;
  signal \wr_addr[12]_i_3_n_0\ : STD_LOGIC;
  signal \wr_addr[12]_i_4_n_0\ : STD_LOGIC;
  signal \wr_addr[12]_i_5_n_0\ : STD_LOGIC;
  signal \wr_addr[4]_i_2_n_0\ : STD_LOGIC;
  signal \wr_addr[4]_i_3_n_0\ : STD_LOGIC;
  signal \wr_addr[4]_i_4_n_0\ : STD_LOGIC;
  signal \wr_addr[4]_i_5_n_0\ : STD_LOGIC;
  signal \wr_addr[8]_i_2_n_0\ : STD_LOGIC;
  signal \wr_addr[8]_i_3_n_0\ : STD_LOGIC;
  signal \wr_addr[8]_i_4_n_0\ : STD_LOGIC;
  signal \wr_addr[8]_i_5_n_0\ : STD_LOGIC;
  signal wr_addr_reg : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal \wr_addr_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \wr_addr_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \wr_addr_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \wr_addr_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \wr_addr_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \wr_addr_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \wr_addr_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \wr_addr_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \wr_addr_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \wr_addr_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \wr_addr_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \wr_addr_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \wr_addr_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \wr_addr_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \wr_addr_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \wr_addr_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \wr_addr_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \NLW_r1_out_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r1_out_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_r1_out_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_r1_out_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_wr_addr_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_wr_addr_reg[12]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_wr_addr_reg[4]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_wr_addr_reg[8]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_sequential_cur_state[0]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \FSM_sequential_cur_state[1]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \FSM_sequential_cur_state[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_cur_state[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \FSM_sequential_cur_state_conv[0]_i_1\ : label is "soft_lutpair15";
  attribute \PinAttr:I0:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I0:HOLD_DETOUR\ of \FSM_sequential_cur_state_conv[1]_i_1\ : label is 183;
  attribute SOFT_HLUTNM of \FSM_sequential_cur_state_conv[1]_i_1\ : label is "soft_lutpair26";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_conv_reg[0]\ : label is "s2:01,s0:00,s3:10,s1:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_conv_reg[1]\ : label is "s2:01,s0:00,s3:10,s1:11";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[0]\ : label is "s14:01110,s13:01101,s12:01100,s19:10011,s18:10010,s3:00011,s17:10001,s2:00010,s16:10000,s26:11010,s1:00001,s23:10111,s11:01011,s22:10110,s0:00000,s25:11001,s10:01010,s24:11000,s7:00111,s21:10101,s6:00110,s20:10100,s9:01001,s8:01000,s5:00101,s15:01111,s4:00100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[1]\ : label is "s14:01110,s13:01101,s12:01100,s19:10011,s18:10010,s3:00011,s17:10001,s2:00010,s16:10000,s26:11010,s1:00001,s23:10111,s11:01011,s22:10110,s0:00000,s25:11001,s10:01010,s24:11000,s7:00111,s21:10101,s6:00110,s20:10100,s9:01001,s8:01000,s5:00101,s15:01111,s4:00100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[2]\ : label is "s14:01110,s13:01101,s12:01100,s19:10011,s18:10010,s3:00011,s17:10001,s2:00010,s16:10000,s26:11010,s1:00001,s23:10111,s11:01011,s22:10110,s0:00000,s25:11001,s10:01010,s24:11000,s7:00111,s21:10101,s6:00110,s20:10100,s9:01001,s8:01000,s5:00101,s15:01111,s4:00100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[3]\ : label is "s14:01110,s13:01101,s12:01100,s19:10011,s18:10010,s3:00011,s17:10001,s2:00010,s16:10000,s26:11010,s1:00001,s23:10111,s11:01011,s22:10110,s0:00000,s25:11001,s10:01010,s24:11000,s7:00111,s21:10101,s6:00110,s20:10100,s9:01001,s8:01000,s5:00101,s15:01111,s4:00100";
  attribute FSM_ENCODED_STATES of \FSM_sequential_cur_state_reg[4]\ : label is "s14:01110,s13:01101,s12:01100,s19:10011,s18:10010,s3:00011,s17:10001,s2:00010,s16:10000,s26:11010,s1:00001,s23:10111,s11:01011,s22:10110,s0:00000,s25:11001,s10:01010,s24:11000,s7:00111,s21:10101,s6:00110,s20:10100,s9:01001,s8:01000,s5:00101,s15:01111,s4:00100";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of cnv_en_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP : string;
  attribute XILINX_TRANSFORM_PINMAP of cnv_en_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of mux1_sel_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of mux1_sel_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of mux1_sel_reg_i_2 : label is "soft_lutpair5";
  attribute XILINX_LEGACY_PRIM of mux2_sel_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of mux2_sel_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of mux3_sel_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of mux3_sel_reg : label is "VCC:GE GND:CLR";
  attribute OPT_MODIFIED : string;
  attribute OPT_MODIFIED of \o_data_OBUF[0]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \o_data_OBUF[1]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \o_data_OBUF[2]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \o_data_OBUF[3]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \o_data_OBUF[4]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \o_data_OBUF[5]_inst\ : label is "SWEEP";
  attribute OPT_MODIFIED of \o_data_OBUF[6]_inst\ : label is "SWEEP";
  attribute XILINX_LEGACY_PRIM of o_en_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of o_en_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \pk[0]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \pk[1]_i_1\ : label is "soft_lutpair26";
  attribute XILINX_LEGACY_PRIM of r0_ld_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of r0_ld_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of r0_ld_reg_i_1 : label is "soft_lutpair11";
  attribute XILINX_LEGACY_PRIM of r1_ld_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of r1_ld_reg : label is "VCC:GE GND:CLR";
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of \r1_out_reg[0]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \r1_out_reg[0]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \r1_out_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \r1_out_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \r1_out_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \r1_out_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \r1_out_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \r1_out_reg[8]_i_1\ : label is "SWEEP";
  attribute XILINX_LEGACY_PRIM of r3_en_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of r3_en_reg : label is "VCC:GE GND:CLR";
  attribute XILINX_LEGACY_PRIM of r3_ld_sh_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of r3_ld_sh_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of \r3_out[1]_i_1\ : label is "soft_lutpair12";
  attribute \PinAttr:I1:HOLD_DETOUR\ : integer;
  attribute \PinAttr:I1:HOLD_DETOUR\ of \r3_out[2]_i_1\ : label is 198;
  attribute SOFT_HLUTNM of \r3_out[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \r3_out[3]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r3_out[4]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \r3_out[5]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \r3_out[6]_i_1\ : label is "soft_lutpair14";
  attribute XILINX_LEGACY_PRIM of r4_ld_sh_reg : label is "LD";
  attribute XILINX_TRANSFORM_PINMAP of r4_ld_sh_reg : label is "VCC:GE GND:CLR";
  attribute SOFT_HLUTNM of r4_ld_sh_reg_i_1 : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \r4_out[0]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \r4_out[1]_i_1\ : label is "soft_lutpair10";
  attribute OPT_INSERTED_REPDRIVER : boolean;
  attribute OPT_INSERTED_REPDRIVER of \r5_out_reg[0]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \r5_out_reg[0]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \r5_out_reg[1]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \r5_out_reg[1]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \r5_out_reg[2]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \r5_out_reg[2]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \r5_out_reg[3]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \r5_out_reg[3]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \r5_out_reg[4]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \r5_out_reg[4]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \r5_out_reg[5]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \r5_out_reg[5]_lopt_replica\ : label is "SWEEP";
  attribute OPT_INSERTED_REPDRIVER of \r5_out_reg[6]_lopt_replica\ : label is std.standard.true;
  attribute OPT_MODIFIED of \r5_out_reg[6]_lopt_replica\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \wr_addr_reg[0]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \wr_addr_reg[0]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \wr_addr_reg[12]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \wr_addr_reg[12]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \wr_addr_reg[4]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \wr_addr_reg[4]_i_1\ : label is "SWEEP";
  attribute ADDER_THRESHOLD of \wr_addr_reg[8]_i_1\ : label is 11;
  attribute OPT_MODIFIED of \wr_addr_reg[8]_i_1\ : label is "SWEEP";
begin
\FSM_sequential_cur_state[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"07"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(4),
      I2 => cur_state(0),
      O => next_state(0)
    );
\FSM_sequential_cur_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0770"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(4),
      I2 => cur_state(1),
      I3 => cur_state(0),
      O => next_state(1)
    );
\FSM_sequential_cur_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8FF8F8F8"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(4),
      I2 => cur_state(2),
      I3 => cur_state(1),
      I4 => cur_state(0),
      O => next_state(2)
    );
\FSM_sequential_cur_state[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"52222222"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(4),
      I2 => cur_state(2),
      I3 => cur_state(0),
      I4 => cur_state(1),
      O => next_state(3)
    );
\FSM_sequential_cur_state[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FF55FF55FF5FFE"
    )
        port map (
      I0 => cur_state(4),
      I1 => i_start_IBUF,
      I2 => cur_state(2),
      I3 => cur_state(3),
      I4 => cur_state(1),
      I5 => cur_state(0),
      O => \FSM_sequential_cur_state[4]_i_1_n_0\
    );
\FSM_sequential_cur_state[4]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0080FF00"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(0),
      I2 => cur_state(2),
      I3 => cur_state(4),
      I4 => cur_state(3),
      O => \FSM_sequential_cur_state[4]_i_2_n_0\
    );
\FSM_sequential_cur_state_conv[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"96"
    )
        port map (
      I0 => cur_state_conv(0),
      I1 => u,
      I2 => cur_state_conv(1),
      O => next_state_conv(0)
    );
\FSM_sequential_cur_state_conv[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cur_state_conv(0),
      I1 => cur_state_conv(1),
      O => next_state_conv(1)
    );
\FSM_sequential_cur_state_conv_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => cnv_en,
      CLR => i_rst_IBUF,
      D => next_state_conv(0),
      Q => cur_state_conv(0)
    );
\FSM_sequential_cur_state_conv_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => cnv_en,
      CLR => i_rst_IBUF,
      D => next_state_conv(1),
      Q => cur_state_conv(1)
    );
\FSM_sequential_cur_state_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(0),
      Q => cur_state(0)
    );
\FSM_sequential_cur_state_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(1),
      Q => cur_state(1)
    );
\FSM_sequential_cur_state_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(2),
      Q => cur_state(2)
    );
\FSM_sequential_cur_state_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => next_state(3),
      Q => cur_state(3)
    );
\FSM_sequential_cur_state_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \FSM_sequential_cur_state[4]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => \FSM_sequential_cur_state[4]_i_2_n_0\,
      Q => cur_state(4)
    );
cnv_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => cnv_en_reg_i_1_n_0,
      G => cnv_en_reg_i_2_n_0,
      GE => '1',
      Q => cnv_en
    );
cnv_en_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2228"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(4),
      I2 => cur_state(3),
      I3 => cur_state(2),
      O => cnv_en_reg_i_1_n_0
    );
cnv_en_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0F7D0F79"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(2),
      I2 => cur_state(4),
      I3 => cur_state(3),
      I4 => cur_state(0),
      O => cnv_en_reg_i_2_n_0
    );
i_clk_IBUF_BUFG_inst: unisim.vcomponents.BUFG
     port map (
      I => i_clk_IBUF,
      O => i_clk_IBUF_BUFG
    );
i_clk_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_clk,
      O => i_clk_IBUF
    );
\i_data_IBUF[0]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(0),
      O => i_data_IBUF(0)
    );
\i_data_IBUF[1]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(1),
      O => i_data_IBUF(1)
    );
\i_data_IBUF[2]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(2),
      O => i_data_IBUF(2)
    );
\i_data_IBUF[3]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(3),
      O => i_data_IBUF(3)
    );
\i_data_IBUF[4]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(4),
      O => i_data_IBUF(4)
    );
\i_data_IBUF[5]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(5),
      O => i_data_IBUF(5)
    );
\i_data_IBUF[6]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(6),
      O => i_data_IBUF(6)
    );
\i_data_IBUF[7]_inst\: unisim.vcomponents.IBUF
     port map (
      I => i_data(7),
      O => i_data_IBUF(7)
    );
i_rst_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_rst,
      O => i_rst_IBUF
    );
i_start_IBUF_inst: unisim.vcomponents.IBUF
     port map (
      I => i_start,
      O => i_start_IBUF
    );
mux1_sel_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mux1_sel_reg_i_1_n_0,
      G => mux1_sel_reg_i_2_n_0,
      GE => '1',
      Q => mux1_sel
    );
mux1_sel_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(2),
      I2 => cur_state(1),
      O => mux1_sel_reg_i_1_n_0
    );
mux1_sel_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000111"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(3),
      I2 => cur_state(1),
      I3 => cur_state(2),
      I4 => cur_state(0),
      O => mux1_sel_reg_i_2_n_0
    );
mux2_sel_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mux2_sel_reg_i_1_n_0,
      G => mux2_sel_reg_i_2_n_0,
      GE => '1',
      Q => mux2_sel
    );
mux2_sel_reg_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(4),
      O => mux2_sel_reg_i_1_n_0
    );
mux2_sel_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000001"
    )
        port map (
      I0 => cur_state(3),
      I1 => cur_state(4),
      I2 => cur_state(2),
      I3 => cur_state(1),
      I4 => cur_state(0),
      O => mux2_sel_reg_i_2_n_0
    );
mux3_sel_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => mux3_sel,
      G => mux3_sel_reg_i_2_n_0,
      GE => '1',
      Q => o_we_OBUF
    );
mux3_sel_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"2A"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(4),
      I2 => cur_state(3),
      O => mux3_sel
    );
mux3_sel_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08801101"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(4),
      I4 => cur_state(2),
      O => mux3_sel_reg_i_2_n_0
    );
\o_address_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(0),
      O => o_address(0)
    );
\o_address_OBUF[0]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(0),
      I1 => r1_out_reg(0),
      I2 => o_we_OBUF,
      O => o_address_OBUF(0)
    );
\o_address_OBUF[10]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(10),
      O => o_address(10)
    );
\o_address_OBUF[10]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(10),
      I1 => r1_out_reg(10),
      I2 => o_we_OBUF,
      O => o_address_OBUF(10)
    );
\o_address_OBUF[11]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(11),
      O => o_address(11)
    );
\o_address_OBUF[11]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(11),
      I1 => r1_out_reg(11),
      I2 => o_we_OBUF,
      O => o_address_OBUF(11)
    );
\o_address_OBUF[12]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(12),
      O => o_address(12)
    );
\o_address_OBUF[12]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(12),
      I1 => r1_out_reg(12),
      I2 => o_we_OBUF,
      O => o_address_OBUF(12)
    );
\o_address_OBUF[13]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(13),
      O => o_address(13)
    );
\o_address_OBUF[13]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(13),
      I1 => r1_out_reg(13),
      I2 => o_we_OBUF,
      O => o_address_OBUF(13)
    );
\o_address_OBUF[14]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(14),
      O => o_address(14)
    );
\o_address_OBUF[14]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(14),
      I1 => r1_out_reg(14),
      I2 => o_we_OBUF,
      O => o_address_OBUF(14)
    );
\o_address_OBUF[15]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(15),
      O => o_address(15)
    );
\o_address_OBUF[15]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(15),
      I1 => r1_out_reg(15),
      I2 => o_we_OBUF,
      O => o_address_OBUF(15)
    );
\o_address_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(1),
      O => o_address(1)
    );
\o_address_OBUF[1]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(1),
      I1 => r1_out_reg(1),
      I2 => o_we_OBUF,
      O => o_address_OBUF(1)
    );
\o_address_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(2),
      O => o_address(2)
    );
\o_address_OBUF[2]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(2),
      I1 => r1_out_reg(2),
      I2 => o_we_OBUF,
      O => o_address_OBUF(2)
    );
\o_address_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(3),
      O => o_address(3)
    );
\o_address_OBUF[3]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(3),
      I1 => r1_out_reg(3),
      I2 => o_we_OBUF,
      O => o_address_OBUF(3)
    );
\o_address_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(4),
      O => o_address(4)
    );
\o_address_OBUF[4]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(4),
      I1 => r1_out_reg(4),
      I2 => o_we_OBUF,
      O => o_address_OBUF(4)
    );
\o_address_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(5),
      O => o_address(5)
    );
\o_address_OBUF[5]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(5),
      I1 => r1_out_reg(5),
      I2 => o_we_OBUF,
      O => o_address_OBUF(5)
    );
\o_address_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(6),
      O => o_address(6)
    );
\o_address_OBUF[6]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(6),
      I1 => r1_out_reg(6),
      I2 => o_we_OBUF,
      O => o_address_OBUF(6)
    );
\o_address_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(7),
      O => o_address(7)
    );
\o_address_OBUF[7]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(7),
      I1 => r1_out_reg(7),
      I2 => o_we_OBUF,
      O => o_address_OBUF(7)
    );
\o_address_OBUF[8]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(8),
      O => o_address(8)
    );
\o_address_OBUF[8]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(8),
      I1 => r1_out_reg(8),
      I2 => o_we_OBUF,
      O => o_address_OBUF(8)
    );
\o_address_OBUF[9]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_address_OBUF(9),
      O => o_address(9)
    );
\o_address_OBUF[9]_inst_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => wr_addr_reg(9),
      I1 => r1_out_reg(9),
      I2 => o_we_OBUF,
      O => o_address_OBUF(9)
    );
\o_data_OBUF[0]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \r5_out_reg[0]_lopt_replica_1\,
      O => o_data(0)
    );
\o_data_OBUF[1]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \r5_out_reg[1]_lopt_replica_1\,
      O => o_data(1)
    );
\o_data_OBUF[2]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \r5_out_reg[2]_lopt_replica_1\,
      O => o_data(2)
    );
\o_data_OBUF[3]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \r5_out_reg[3]_lopt_replica_1\,
      O => o_data(3)
    );
\o_data_OBUF[4]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \r5_out_reg[4]_lopt_replica_1\,
      O => o_data(4)
    );
\o_data_OBUF[5]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \r5_out_reg[5]_lopt_replica_1\,
      O => o_data(5)
    );
\o_data_OBUF[6]_inst\: unisim.vcomponents.OBUF
     port map (
      I => \r5_out_reg[6]_lopt_replica_1\,
      O => o_data(6)
    );
\o_data_OBUF[7]_inst\: unisim.vcomponents.OBUF
     port map (
      I => o_data_OBUF(7),
      O => o_data(7)
    );
o_done_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => '0',
      O => o_done
    );
o_en_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_en_OBUF,
      O => o_en
    );
o_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => o_en_reg_i_1_n_0,
      G => o_en_reg_i_2_n_0,
      GE => '1',
      Q => o_en_OBUF
    );
o_en_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2282"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(4),
      I2 => cur_state(2),
      I3 => cur_state(3),
      O => o_en_reg_i_1_n_0
    );
o_en_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"4000804D"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(0),
      I2 => cur_state(2),
      I3 => cur_state(1),
      I4 => cur_state(3),
      O => o_en_reg_i_2_n_0
    );
o_we_OBUF_inst: unisim.vcomponents.OBUF
     port map (
      I => o_we_OBUF,
      O => o_we
    );
\pk[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => u,
      I1 => cur_state_conv(0),
      O => cnv_out(0)
    );
\pk[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => cur_state_conv(1),
      I1 => u,
      O => cnv_out(1)
    );
\pk_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => cnv_en,
      CLR => i_rst_IBUF,
      D => cnv_out(0),
      Q => pk(0)
    );
\pk_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => cnv_en,
      CLR => i_rst_IBUF,
      D => cnv_out(1),
      Q => pk(1)
    );
r0_ld_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => r0_ld_reg_i_1_n_0,
      G => r0_ld_reg_i_2_n_0,
      GE => '1',
      Q => r0_ld
    );
r0_ld_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"06"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(3),
      I2 => cur_state(0),
      O => r0_ld_reg_i_1_n_0
    );
r0_ld_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0CC00001"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(1),
      I2 => cur_state(4),
      I3 => cur_state(3),
      I4 => cur_state(2),
      O => r0_ld_reg_i_2_n_0
    );
r1_ld_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => r1_ld_reg_i_1_n_0,
      G => r1_ld_reg_i_2_n_0,
      GE => '1',
      Q => r1_ld
    );
r1_ld_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(4),
      I2 => cur_state(2),
      O => r1_ld_reg_i_1_n_0
    );
r1_ld_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000004F"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(2),
      I2 => cur_state(1),
      I3 => cur_state(4),
      I4 => cur_state(3),
      O => r1_ld_reg_i_2_n_0
    );
\r1_out[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(3),
      O => \r1_out[0]_i_2_n_0\
    );
\r1_out[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(2),
      O => \r1_out[0]_i_3_n_0\
    );
\r1_out[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(1),
      O => \r1_out[0]_i_4_n_0\
    );
\r1_out[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => r1_out_reg(0),
      I1 => mux1_sel,
      O => \r1_out[0]_i_5_n_0\
    );
\r1_out[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(15),
      O => \r1_out[12]_i_2_n_0\
    );
\r1_out[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(14),
      O => \r1_out[12]_i_3_n_0\
    );
\r1_out[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(13),
      O => \r1_out[12]_i_4_n_0\
    );
\r1_out[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(12),
      O => \r1_out[12]_i_5_n_0\
    );
\r1_out[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(7),
      O => \r1_out[4]_i_2_n_0\
    );
\r1_out[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(6),
      O => \r1_out[4]_i_3_n_0\
    );
\r1_out[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(5),
      O => \r1_out[4]_i_4_n_0\
    );
\r1_out[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(4),
      O => \r1_out[4]_i_5_n_0\
    );
\r1_out[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(11),
      O => \r1_out[8]_i_2_n_0\
    );
\r1_out[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(10),
      O => \r1_out[8]_i_3_n_0\
    );
\r1_out[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(9),
      O => \r1_out[8]_i_4_n_0\
    );
\r1_out[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux1_sel,
      I1 => r1_out_reg(8),
      O => \r1_out[8]_i_5_n_0\
    );
\r1_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[0]_i_1_n_7\,
      Q => r1_out_reg(0)
    );
\r1_out_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \r1_out_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r1_out_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => mux1_sel,
      O(3) => \r1_out_reg[0]_i_1_n_4\,
      O(2) => \r1_out_reg[0]_i_1_n_5\,
      O(1) => \r1_out_reg[0]_i_1_n_6\,
      O(0) => \r1_out_reg[0]_i_1_n_7\,
      S(3) => \r1_out[0]_i_2_n_0\,
      S(2) => \r1_out[0]_i_3_n_0\,
      S(1) => \r1_out[0]_i_4_n_0\,
      S(0) => \r1_out[0]_i_5_n_0\
    );
\r1_out_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[8]_i_1_n_5\,
      Q => r1_out_reg(10)
    );
\r1_out_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[8]_i_1_n_4\,
      Q => r1_out_reg(11)
    );
\r1_out_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[12]_i_1_n_7\,
      Q => r1_out_reg(12)
    );
\r1_out_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r1_out_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_r1_out_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r1_out_reg[12]_i_1_n_4\,
      O(2) => \r1_out_reg[12]_i_1_n_5\,
      O(1) => \r1_out_reg[12]_i_1_n_6\,
      O(0) => \r1_out_reg[12]_i_1_n_7\,
      S(3) => \r1_out[12]_i_2_n_0\,
      S(2) => \r1_out[12]_i_3_n_0\,
      S(1) => \r1_out[12]_i_4_n_0\,
      S(0) => \r1_out[12]_i_5_n_0\
    );
\r1_out_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[12]_i_1_n_6\,
      Q => r1_out_reg(13)
    );
\r1_out_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[12]_i_1_n_5\,
      Q => r1_out_reg(14)
    );
\r1_out_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[12]_i_1_n_4\,
      Q => r1_out_reg(15)
    );
\r1_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[0]_i_1_n_6\,
      Q => r1_out_reg(1)
    );
\r1_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[0]_i_1_n_5\,
      Q => r1_out_reg(2)
    );
\r1_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[0]_i_1_n_4\,
      Q => r1_out_reg(3)
    );
\r1_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[4]_i_1_n_7\,
      Q => r1_out_reg(4)
    );
\r1_out_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r1_out_reg[0]_i_1_n_0\,
      CO(3) => \r1_out_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r1_out_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r1_out_reg[4]_i_1_n_4\,
      O(2) => \r1_out_reg[4]_i_1_n_5\,
      O(1) => \r1_out_reg[4]_i_1_n_6\,
      O(0) => \r1_out_reg[4]_i_1_n_7\,
      S(3) => \r1_out[4]_i_2_n_0\,
      S(2) => \r1_out[4]_i_3_n_0\,
      S(1) => \r1_out[4]_i_4_n_0\,
      S(0) => \r1_out[4]_i_5_n_0\
    );
\r1_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[4]_i_1_n_6\,
      Q => r1_out_reg(5)
    );
\r1_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[4]_i_1_n_5\,
      Q => r1_out_reg(6)
    );
\r1_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[4]_i_1_n_4\,
      Q => r1_out_reg(7)
    );
\r1_out_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[8]_i_1_n_7\,
      Q => r1_out_reg(8)
    );
\r1_out_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \r1_out_reg[4]_i_1_n_0\,
      CO(3) => \r1_out_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_r1_out_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \r1_out_reg[8]_i_1_n_4\,
      O(2) => \r1_out_reg[8]_i_1_n_5\,
      O(1) => \r1_out_reg[8]_i_1_n_6\,
      O(0) => \r1_out_reg[8]_i_1_n_7\,
      S(3) => \r1_out[8]_i_2_n_0\,
      S(2) => \r1_out[8]_i_3_n_0\,
      S(1) => \r1_out[8]_i_4_n_0\,
      S(0) => \r1_out[8]_i_5_n_0\
    );
\r1_out_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r1_ld,
      CLR => i_rst_IBUF,
      D => \r1_out_reg[8]_i_1_n_6\,
      Q => r1_out_reg(9)
    );
r3_en_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => r3_en_reg_i_1_n_0,
      G => r3_en_reg_i_2_n_0,
      GE => '1',
      Q => r3_en
    );
r3_en_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"1154"
    )
        port map (
      I0 => cur_state(0),
      I1 => cur_state(4),
      I2 => cur_state(2),
      I3 => cur_state(3),
      O => r3_en_reg_i_1_n_0
    );
r3_en_reg_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3E3F"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(4),
      I2 => cur_state(3),
      I3 => cur_state(1),
      O => r3_en_reg_i_2_n_0
    );
r3_ld_sh_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => r3_ld_sh_reg_i_1_n_0,
      G => r3_ld_sh_reg_i_2_n_0,
      GE => '1',
      Q => r3_ld_sh
    );
r3_ld_sh_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => cur_state(2),
      I1 => cur_state(4),
      I2 => cur_state(0),
      O => r3_ld_sh_reg_i_1_n_0
    );
r3_ld_sh_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00001011"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(3),
      I2 => cur_state(2),
      I3 => cur_state(0),
      I4 => cur_state(1),
      O => r3_ld_sh_reg_i_2_n_0
    );
\r3_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => r3_ld_sh,
      I1 => r3_en,
      O => \r3_out[0]_i_1_n_0\
    );
\r3_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_data_IBUF(1),
      I1 => r3_out(0),
      I2 => r3_ld_sh,
      O => \r3_out[1]_i_1_n_0\
    );
\r3_out[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_data_IBUF(2),
      I1 => r3_out(1),
      I2 => r3_ld_sh,
      O => \r3_out[2]_i_1_n_0\
    );
\r3_out[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_data_IBUF(3),
      I1 => r3_out(2),
      I2 => r3_ld_sh,
      O => \r3_out[3]_i_1_n_0\
    );
\r3_out[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_data_IBUF(4),
      I1 => r3_out(3),
      I2 => r3_ld_sh,
      O => \r3_out[4]_i_1_n_0\
    );
\r3_out[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_data_IBUF(5),
      I1 => r3_out(4),
      I2 => r3_ld_sh,
      O => \r3_out[5]_i_1_n_0\
    );
\r3_out[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_data_IBUF(6),
      I1 => r3_out(5),
      I2 => r3_ld_sh,
      O => \r3_out[6]_i_1_n_0\
    );
\r3_out[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => i_data_IBUF(7),
      I1 => r3_out(6),
      I2 => r3_ld_sh,
      O => \r3_out[7]_i_1_n_0\
    );
\r3_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => \r3_out[0]_i_1_n_0\,
      CLR => i_rst_IBUF,
      D => i_data_IBUF(0),
      Q => r3_out(0)
    );
\r3_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_en,
      CLR => i_rst_IBUF,
      D => \r3_out[1]_i_1_n_0\,
      Q => r3_out(1)
    );
\r3_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_en,
      CLR => i_rst_IBUF,
      D => \r3_out[2]_i_1_n_0\,
      Q => r3_out(2)
    );
\r3_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_en,
      CLR => i_rst_IBUF,
      D => \r3_out[3]_i_1_n_0\,
      Q => r3_out(3)
    );
\r3_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_en,
      CLR => i_rst_IBUF,
      D => \r3_out[4]_i_1_n_0\,
      Q => r3_out(4)
    );
\r3_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_en,
      CLR => i_rst_IBUF,
      D => \r3_out[5]_i_1_n_0\,
      Q => r3_out(5)
    );
\r3_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_en,
      CLR => i_rst_IBUF,
      D => \r3_out[6]_i_1_n_0\,
      Q => r3_out(6)
    );
\r3_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r3_en,
      CLR => i_rst_IBUF,
      D => \r3_out[7]_i_1_n_0\,
      Q => u
    );
r4_ld_sh_reg: unisim.vcomponents.LDCE
    generic map(
      INIT => '0'
    )
        port map (
      CLR => '0',
      D => r4_ld_sh_reg_i_1_n_0,
      G => r4_ld_sh_reg_i_2_n_0,
      GE => '1',
      Q => r4_ld_sh
    );
r4_ld_sh_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0334"
    )
        port map (
      I0 => cur_state(1),
      I1 => cur_state(0),
      I2 => cur_state(3),
      I3 => cur_state(4),
      O => r4_ld_sh_reg_i_1_n_0
    );
r4_ld_sh_reg_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5555FFAB"
    )
        port map (
      I0 => cur_state(4),
      I1 => cur_state(2),
      I2 => cur_state(1),
      I3 => cur_state(0),
      I4 => cur_state(3),
      O => r4_ld_sh_reg_i_2_n_0
    );
\r4_out[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => pk(0),
      I1 => r4_ld_sh,
      O => \r4_out[0]_i_1_n_0\
    );
\r4_out[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => pk(1),
      I1 => p_0_in(1),
      I2 => r4_ld_sh,
      O => \r4_out[1]_i_1_n_0\
    );
\r4_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \r4_out[0]_i_1_n_0\,
      Q => p_0_in(1)
    );
\r4_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \r4_out[1]_i_1_n_0\,
      Q => \r4_out_reg_n_0_[1]\
    );
\r5_out_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \r4_out_reg_n_0_[1]\,
      Q => o_data_OBUF(0)
    );
\r5_out_reg[0]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => \r4_out_reg_n_0_[1]\,
      Q => \r5_out_reg[0]_lopt_replica_1\
    );
\r5_out_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(0),
      Q => o_data_OBUF(1)
    );
\r5_out_reg[1]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(0),
      Q => \r5_out_reg[1]_lopt_replica_1\
    );
\r5_out_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(1),
      Q => o_data_OBUF(2)
    );
\r5_out_reg[2]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(1),
      Q => \r5_out_reg[2]_lopt_replica_1\
    );
\r5_out_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(2),
      Q => o_data_OBUF(3)
    );
\r5_out_reg[3]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(2),
      Q => \r5_out_reg[3]_lopt_replica_1\
    );
\r5_out_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(3),
      Q => o_data_OBUF(4)
    );
\r5_out_reg[4]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(3),
      Q => \r5_out_reg[4]_lopt_replica_1\
    );
\r5_out_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(4),
      Q => o_data_OBUF(5)
    );
\r5_out_reg[5]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(4),
      Q => \r5_out_reg[5]_lopt_replica_1\
    );
\r5_out_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(5),
      Q => o_data_OBUF(6)
    );
\r5_out_reg[6]_lopt_replica\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(5),
      Q => \r5_out_reg[6]_lopt_replica_1\
    );
\r5_out_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => '1',
      CLR => i_rst_IBUF,
      D => o_data_OBUF(6),
      Q => o_data_OBUF(7)
    );
\wr_addr[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux2_sel,
      I1 => wr_addr_reg(3),
      O => \wr_addr[0]_i_2_n_0\
    );
\wr_addr[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => wr_addr_reg(2),
      I1 => mux2_sel,
      O => \wr_addr[0]_i_3_n_0\
    );
\wr_addr[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux2_sel,
      I1 => wr_addr_reg(1),
      O => \wr_addr[0]_i_4_n_0\
    );
\wr_addr[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => wr_addr_reg(0),
      I1 => mux2_sel,
      O => \wr_addr[0]_i_5_n_0\
    );
\wr_addr[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux2_sel,
      I1 => wr_addr_reg(15),
      O => \wr_addr[12]_i_2_n_0\
    );
\wr_addr[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux2_sel,
      I1 => wr_addr_reg(14),
      O => \wr_addr[12]_i_3_n_0\
    );
\wr_addr[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux2_sel,
      I1 => wr_addr_reg(13),
      O => \wr_addr[12]_i_4_n_0\
    );
\wr_addr[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux2_sel,
      I1 => wr_addr_reg(12),
      O => \wr_addr[12]_i_5_n_0\
    );
\wr_addr[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => wr_addr_reg(7),
      I1 => mux2_sel,
      O => \wr_addr[4]_i_2_n_0\
    );
\wr_addr[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => wr_addr_reg(6),
      I1 => mux2_sel,
      O => \wr_addr[4]_i_3_n_0\
    );
\wr_addr[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => wr_addr_reg(5),
      I1 => mux2_sel,
      O => \wr_addr[4]_i_4_n_0\
    );
\wr_addr[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => wr_addr_reg(4),
      I1 => mux2_sel,
      O => \wr_addr[4]_i_5_n_0\
    );
\wr_addr[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux2_sel,
      I1 => wr_addr_reg(11),
      O => \wr_addr[8]_i_2_n_0\
    );
\wr_addr[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux2_sel,
      I1 => wr_addr_reg(10),
      O => \wr_addr[8]_i_3_n_0\
    );
\wr_addr[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => mux2_sel,
      I1 => wr_addr_reg(9),
      O => \wr_addr[8]_i_4_n_0\
    );
\wr_addr[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => wr_addr_reg(8),
      I1 => mux2_sel,
      O => \wr_addr[8]_i_5_n_0\
    );
\wr_addr_reg[0]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[0]_i_1_n_7\,
      Q => wr_addr_reg(0)
    );
\wr_addr_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \wr_addr_reg[0]_i_1_n_0\,
      CO(2 downto 0) => \NLW_wr_addr_reg[0]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => mux2_sel,
      O(3) => \wr_addr_reg[0]_i_1_n_4\,
      O(2) => \wr_addr_reg[0]_i_1_n_5\,
      O(1) => \wr_addr_reg[0]_i_1_n_6\,
      O(0) => \wr_addr_reg[0]_i_1_n_7\,
      S(3) => \wr_addr[0]_i_2_n_0\,
      S(2) => \wr_addr[0]_i_3_n_0\,
      S(1) => \wr_addr[0]_i_4_n_0\,
      S(0) => \wr_addr[0]_i_5_n_0\
    );
\wr_addr_reg[10]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[8]_i_1_n_5\,
      Q => wr_addr_reg(10)
    );
\wr_addr_reg[11]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[8]_i_1_n_4\,
      Q => wr_addr_reg(11)
    );
\wr_addr_reg[12]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[12]_i_1_n_7\,
      Q => wr_addr_reg(12)
    );
\wr_addr_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_reg[8]_i_1_n_0\,
      CO(3 downto 0) => \NLW_wr_addr_reg[12]_i_1_CO_UNCONNECTED\(3 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wr_addr_reg[12]_i_1_n_4\,
      O(2) => \wr_addr_reg[12]_i_1_n_5\,
      O(1) => \wr_addr_reg[12]_i_1_n_6\,
      O(0) => \wr_addr_reg[12]_i_1_n_7\,
      S(3) => \wr_addr[12]_i_2_n_0\,
      S(2) => \wr_addr[12]_i_3_n_0\,
      S(1) => \wr_addr[12]_i_4_n_0\,
      S(0) => \wr_addr[12]_i_5_n_0\
    );
\wr_addr_reg[13]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[12]_i_1_n_6\,
      Q => wr_addr_reg(13)
    );
\wr_addr_reg[14]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[12]_i_1_n_5\,
      Q => wr_addr_reg(14)
    );
\wr_addr_reg[15]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[12]_i_1_n_4\,
      Q => wr_addr_reg(15)
    );
\wr_addr_reg[1]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[0]_i_1_n_6\,
      Q => wr_addr_reg(1)
    );
\wr_addr_reg[2]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[0]_i_1_n_5\,
      Q => wr_addr_reg(2)
    );
\wr_addr_reg[3]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[0]_i_1_n_4\,
      Q => wr_addr_reg(3)
    );
\wr_addr_reg[4]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[4]_i_1_n_7\,
      Q => wr_addr_reg(4)
    );
\wr_addr_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_reg[0]_i_1_n_0\,
      CO(3) => \wr_addr_reg[4]_i_1_n_0\,
      CO(2 downto 0) => \NLW_wr_addr_reg[4]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wr_addr_reg[4]_i_1_n_4\,
      O(2) => \wr_addr_reg[4]_i_1_n_5\,
      O(1) => \wr_addr_reg[4]_i_1_n_6\,
      O(0) => \wr_addr_reg[4]_i_1_n_7\,
      S(3) => \wr_addr[4]_i_2_n_0\,
      S(2) => \wr_addr[4]_i_3_n_0\,
      S(1) => \wr_addr[4]_i_4_n_0\,
      S(0) => \wr_addr[4]_i_5_n_0\
    );
\wr_addr_reg[5]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[4]_i_1_n_6\,
      Q => wr_addr_reg(5)
    );
\wr_addr_reg[6]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[4]_i_1_n_5\,
      Q => wr_addr_reg(6)
    );
\wr_addr_reg[7]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[4]_i_1_n_4\,
      Q => wr_addr_reg(7)
    );
\wr_addr_reg[8]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[8]_i_1_n_7\,
      Q => wr_addr_reg(8)
    );
\wr_addr_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \wr_addr_reg[4]_i_1_n_0\,
      CO(3) => \wr_addr_reg[8]_i_1_n_0\,
      CO(2 downto 0) => \NLW_wr_addr_reg[8]_i_1_CO_UNCONNECTED\(2 downto 0),
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \wr_addr_reg[8]_i_1_n_4\,
      O(2) => \wr_addr_reg[8]_i_1_n_5\,
      O(1) => \wr_addr_reg[8]_i_1_n_6\,
      O(0) => \wr_addr_reg[8]_i_1_n_7\,
      S(3) => \wr_addr[8]_i_2_n_0\,
      S(2) => \wr_addr[8]_i_3_n_0\,
      S(1) => \wr_addr[8]_i_4_n_0\,
      S(0) => \wr_addr[8]_i_5_n_0\
    );
\wr_addr_reg[9]\: unisim.vcomponents.FDCE
    generic map(
      INIT => '0'
    )
        port map (
      C => i_clk_IBUF_BUFG,
      CE => r0_ld,
      CLR => i_rst_IBUF,
      D => \wr_addr_reg[8]_i_1_n_6\,
      Q => wr_addr_reg(9)
    );
end STRUCTURE;
