library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity project_reti_logiche is
	port(
		i_clk: in std_logic;
		i_rst: in std_logic;
		i_start: in std_logic;
		i_data: in std_logic_vector(7 downto 0);
		o_address: out std_logic_vector(15 downto 0);
		o_done: out std_logic;
		o_en: out std_logic;
		o_we: out std_logic;
		o_data: out std_logic_vector(7 downto 0)
	);
end project_reti_logiche;

architecture Behavioral of project_reti_logiche is
	component datapath is
		port(
			i_clk: in std_logic;
			i_rst: in std_logic;
			i_data: in std_logic_vector(7 downto 0);
			mux1_sel: in std_logic;
			mux2_sel: in std_logic;
			mux3_sel: in std_logic;
			mux4_sel: in std_logic;
			r0_ld: in std_logic;
			r1_ld: in std_logic;
			r2_ld: in std_logic;
			r3_ld_sh: in std_logic;
			r3_en: in std_logic;
			r4_ld_sh: in std_logic;
			cnv_en: in std_logic
		);
	end component datapath;
	
	constant ZERO_16BIT: std_logic_vector(15 downto 0) := "0000000000000000";
	constant ZERO_8BIT: std_logic_vector(7 downto 0) := "00000000";
	constant UNDEF_16BIT: std_logic_vector(15 downto 0) := "XXXXXXXXXXXXXXXX";
	constant UNDEF_8BIT: std_logic_vector(7 downto 0) := "XXXXXXXX";
	type SC is (S0, S1, S2, S3);
	type S is (S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, S10, S11, S12, S13, S14, S15, S16, 
				S17, S18, S19, S20, S21, S22, S23, S24, S25);
	signal pk: std_logic_vector(1 downto 0);
	signal mux1_sel: std_logic;
	signal mux1_out: std_logic_vector(15 downto 0);
	signal mux2_sel: std_logic;
	signal mux2_out: std_logic_vector(15 downto 0);
	signal mux3_sel: std_logic;
	signal mux4_sel: std_logic;
	signal mux4_out: std_logic_vector(7 downto 0);
	signal r0_ld: std_logic;
	signal r1_ld: std_logic;
	signal r1_out: std_logic_vector(15 downto 0);
	signal r2_ld: std_logic;
	signal r2_out: std_logic_vector(7 downto 0);
	signal r3_ld_sh: std_logic;
	signal u : std_logic;
	signal r3_out: std_logic_vector(7 downto 0);
	signal r3_en: std_logic;
	signal r4_ld_sh: std_logic;
	signal r4_out: std_logic_vector(1 downto 0);
	signal r5_out: std_logic_vector(7 downto 0);
	signal yk: std_logic;
	signal adder1_out: std_logic_vector(15 downto 0);
	signal adder2_out: std_logic_vector(15 downto 0);
	signal wr_addr: std_logic_vector(15 downto 0);
	signal cnv_en: std_logic;
	signal cnv_out: std_logic_vector(1 downto 0);
	signal sub1_out: std_logic_vector(7 downto 0);
	signal read_end: std_logic;
	signal cur_state_conv, next_state_conv : SC;
	signal cur_state, next_state : S;

begin
	DATAPATH0: datapath port map(
			i_clk,
			i_rst,
			i_data,
			mux1_sel,
			mux2_sel,
			mux3_sel,
			mux4_sel,
			r0_ld,
			r1_ld,
			r2_ld,
			r3_ld_sh,
			r3_en,
			r4_ld_sh,
			cnv_en
		);

	state_fsm: process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			cur_state <= S0;
		elsif(i_clk'event and i_clk = '1') then
			cur_state <= next_state;
		end if;
	end process;

	delta_fsm: process(cur_state, i_start, read_end)
	begin
		next_state <= cur_state;
		case cur_state is
			when S0 =>
				if(i_start = '1') then
					next_state <= S1;
				end if;
			when S1 =>
				next_state <= S2;
			when S2 =>
				next_state <= S3;
			when S3 =>
				if(read_end <= '0') then
					next_state <= S4;
				else
					next_state <= S25;
				end if;
			when S4 =>
				next_state <= S5;
			when S5 =>
				next_state <= S6;
			when S6 =>
				next_state <= S7;
			when S7 =>
				next_state <= S8;
			when S8 =>
				next_state <= S9;
			when S9 =>
				next_state <= S10;
			when S10 =>
				next_state <= S11;
			when S11 =>
				next_state <= S12;
			when S12 =>
				next_state <= S13;
			when S13 =>
				next_state <= S14;
			when S14 =>
				next_state <= S15;
			when S15 =>
				next_state <= S16;
			when S16 =>
				next_state <= S17;
			when S17 =>
				next_state <= S18;
			when S18 =>
				next_state <= S19;
			when S19 =>
				next_state <= S20;
			when S20 =>
				next_state <= S21;
			when S21 =>
				next_state <= S22;
			when S22 =>
				next_state <= S23;
			when S23 =>
				next_state <= S24;
			when S24 =>
				if(read_end = '0') then
					next_state <= S4;
				else
					next_state <= S25;
				end if;
			when S25 =>
				if(i_start = '0') then
					next_state <= S0;
				else
					next_state <= S25;
				end if;
		end case;
	end process;

	lambda_fsm: process(cur_state)
	begin
		mux1_sel <= '0';
		mux2_sel <= '0';
		mux3_sel <= '0';
		mux4_sel <= '0';
		r0_ld <= '0';
		r1_ld <= '0';
		r2_ld <= '0';
		r3_ld_sh <= '0';
		r3_en <= '0';
		r4_ld_sh <= '0';
		cnv_en <= '0';
		o_en <= '0';
		o_we <= '0';
		o_done <= '0';
		case cur_state is
			when S0 =>
			when S1 =>
				r1_ld <= '1';
				r4_ld_sh <= '1';
				o_en <= '1';
			when S2 =>
				mux1_sel <= '1';
				r0_ld <= '1';
				r1_ld <= '1';
				r2_ld <= '1';
				r4_ld_sh <= '1';
				o_en <= '1';
			when S3 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				r1_ld <= '1';
				o_en <= '1';
			when S4 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r3_ld_sh <= '1';
				r3_en <= '1';
				o_en <= '1';
			when S5 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r4_ld_sh <= '1';
				cnv_en <= '1';
			when S6 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r3_en <= '1';
				r4_ld_sh <= '1';
			when S7 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				cnv_en <= '1';
			when S8 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r3_en <= '1';
				r4_ld_sh <= '1';
			when S9 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				cnv_en <= '1';
			when S10 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r3_en <= '1';
				r4_ld_sh <= '1';
			when S11 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				cnv_en <= '1';
			when S12 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r3_en <= '1';
				r4_ld_sh <= '1';
			when S13 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				cnv_en <= '1';
			when S14 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r0_ld <= '1';
				r3_en <= '1';
				r4_ld_sh <= '1';
			when S15 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux3_sel <= '1';
				mux4_sel <= '1';
				cnv_en <= '1';
				o_en <= '1';
				o_we <= '1';
			when S16 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r3_en <= '1';
				r4_ld_sh <= '1';
				o_en <= '1';
			when S17 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				cnv_en <= '1';
			when S18 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r3_en <= '1';
				r4_ld_sh <= '1';
			when S19 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				cnv_en <= '1';
			when S20 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r3_en <= '1';
				r4_ld_sh <= '1';
			when S21 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
			when S22 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r0_ld <= '1';
				r3_en <= '1';
				r4_ld_sh <= '1';
			when S23 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux3_sel <= '1';
				mux4_sel <= '1';
				r2_ld <= '1';
				o_en <= '1';
				o_we <= '1';
			when S24 =>
				mux1_sel <= '1';
				mux2_sel <= '1';
				mux4_sel <= '1';
				r1_ld <= '1';
				o_en <= '1';
			when S25 =>
				r0_ld <= '1';
				r1_ld <= '1';
				o_en <= '1';
				o_done <= '1';
		end case;
	end process;

	state_conv: process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			cur_state_conv <= S0;
		elsif(i_clk'event and i_clk = '1') then
			if(cnv_en = '1') then
				cur_state_conv <= next_state_conv;
			end if;
		end if;
	end process;

	output_conv: process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			pk <= "00";
		elsif(i_clk'event and i_clk = '1') then
			if(cnv_en = '1') then
				pk <= cnv_out;
			end if;
		end if;
	end process;

	delta_lambda_conv: process(cur_state_conv, u)
	begin
		case cur_state_conv is
			when S0 =>
				if(u = '0') then
					next_state_conv <= S0;
					cnv_out <= "00";
				else
					next_state_conv <= S2;
					cnv_out <= "11";
				end if;
			when S1 =>
				if(u = '0') then
					next_state_conv <= S0;
					cnv_out <= "11";
				else
					next_state_conv <= S2;
					cnv_out <= "00";
				end if;
			when S2 =>
				if(u = '0') then
					next_state_conv <= S1;
					cnv_out <= "01";
				else
					next_state_conv <= S3;
					cnv_out <= "10";
				end if;
			when S3 =>
				if(u = '0') then
					next_state_conv <= S1;
					cnv_out <= "10";
				else
					next_state_conv <= S3;
					cnv_out <= "01";
				end if;
		end case;
	end process;

	adder1: adder1_out <= std_logic_vector(unsigned(r1_out) + 1);

	adder2: adder2_out <= std_logic_vector(unsigned(wr_addr) + 1);

	sub1: sub1_out <= std_logic_vector(unsigned(r2_out) - 1);

	mux1: with mux1_sel select
 			mux1_out <= ZERO_16BIT when '0',
						adder1_out when '1',
						UNDEF_16BIT when others;

	mux2: with mux2_sel select
 			mux2_out <= "0000001111100111" when '0',
						adder2_out when '1',
						UNDEF_16BIT when others;

	mux3: with mux3_sel select
 			o_address <= r1_out when '0',
						 wr_addr when '1',
						 UNDEF_16BIT when others;

	mux4: with mux4_sel select
			mux4_out <= i_data when '0',
						sub1_out when '1',
						UNDEF_8BIT when others;

	cmp1: read_end <= '1' when r2_out = ZERO_8BIT else
					  '0';

	R0: process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			wr_addr <= "0000000000000000";
		elsif(i_clk'event and i_clk = '1') then
			if(r0_ld = '1') then
				wr_addr <= mux2_out;
			end if;
		end if;
	end process;

	R1: process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			r1_out <= ZERO_16BIT;
		elsif(i_clk'event and i_clk = '1') then
			if(r1_ld = '1') then
				r1_out <= mux1_out;
			end if;
		end if;
	end process;

	R2: process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			r2_out <= ZERO_8BIT;
		elsif(i_clk'event and i_clk = '1') then
			if(r2_ld = '1') then
				r2_out <= mux4_out;
			end if;
		end if;
	end process;

	R3: process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			r3_out <= ZERO_8BIT;
		elsif(i_clk'event and i_clk = '1') then
			if(r3_en = '1') then
				if(r3_ld_sh = '0') then
					r3_out(7 downto 0) <= r3_out(6 downto 0) & r3_out(0);
				else
					r3_out <= i_data;
				end if;
			end if;
		end if;
	end process;
	u <= r3_out(7);

	R4: process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			r4_out <= "00";
		elsif(i_clk'event and i_clk = '1') then
			if(r4_ld_sh = '0') then
				r4_out(1 downto 0) <= r4_out(0) & '0';
			else
				r4_out <= pk;
			end if;
		end if;
	end process;
	yk <= r4_out(1);

	R5: process(i_clk, i_rst)
	begin
		if(i_rst = '1') then
			r5_out <= ZERO_8BIT;
		elsif(i_clk'event and i_clk = '1') then
			r5_out(7 downto 0) <= r5_out(6 downto 0) & yk;
		end if;
	end process;
	o_data <= r5_out;
end architecture Behavioral;