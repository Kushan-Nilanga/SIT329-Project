	component soc_system is
		port (
			adc_channel_0_export    : in    std_logic_vector(63 downto 0) := (others => 'X'); -- export
			adc_channel_1_export    : in    std_logic_vector(63 downto 0) := (others => 'X'); -- export
			adc_channel_2_export    : in    std_logic_vector(63 downto 0) := (others => 'X'); -- export
			adc_channel_3_export    : in    std_logic_vector(63 downto 0) := (others => 'X'); -- export
			adc_channel_4_export    : in    std_logic_vector(63 downto 0) := (others => 'X'); -- export
			adc_channel_5_export    : in    std_logic_vector(63 downto 0) := (others => 'X'); -- export
			adc_channel_6_export    : in    std_logic_vector(63 downto 0) := (others => 'X'); -- export
			adc_channel_7_export    : in    std_logic_vector(63 downto 0) := (others => 'X'); -- export
			adc_leds_export         : out   std_logic_vector(63 downto 0);                    -- export
			adder_a_export          : out   std_logic_vector(63 downto 0);                    -- export
			adder_b_export          : out   std_logic_vector(63 downto 0);                    -- export
			adder_sum_export        : in    std_logic_vector(63 downto 0) := (others => 'X'); -- export
			clk_clk                 : in    std_logic                     := 'X';             -- clk
			hps_0_h2f_reset_reset_n : out   std_logic;                                        -- reset_n
			memory_mem_a            : out   std_logic_vector(14 downto 0);                    -- mem_a
			memory_mem_ba           : out   std_logic_vector(2 downto 0);                     -- mem_ba
			memory_mem_ck           : out   std_logic;                                        -- mem_ck
			memory_mem_ck_n         : out   std_logic;                                        -- mem_ck_n
			memory_mem_cke          : out   std_logic;                                        -- mem_cke
			memory_mem_cs_n         : out   std_logic;                                        -- mem_cs_n
			memory_mem_ras_n        : out   std_logic;                                        -- mem_ras_n
			memory_mem_cas_n        : out   std_logic;                                        -- mem_cas_n
			memory_mem_we_n         : out   std_logic;                                        -- mem_we_n
			memory_mem_reset_n      : out   std_logic;                                        -- mem_reset_n
			memory_mem_dq           : inout std_logic_vector(31 downto 0) := (others => 'X'); -- mem_dq
			memory_mem_dqs          : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs
			memory_mem_dqs_n        : inout std_logic_vector(3 downto 0)  := (others => 'X'); -- mem_dqs_n
			memory_mem_odt          : out   std_logic;                                        -- mem_odt
			memory_mem_dm           : out   std_logic_vector(3 downto 0);                     -- mem_dm
			memory_oct_rzqin        : in    std_logic                     := 'X';             -- oct_rzqin
			reset_reset_n           : in    std_logic                     := 'X';             -- reset_n
			adc_interface_sclk      : out   std_logic;                                        -- sclk
			adc_interface_cs_n      : out   std_logic;                                        -- cs_n
			adc_interface_dout      : in    std_logic                     := 'X';             -- dout
			adc_interface_din       : out   std_logic                                         -- din
		);
	end component soc_system;

	u0 : component soc_system
		port map (
			adc_channel_0_export    => CONNECTED_TO_adc_channel_0_export,    --   adc_channel_0.export
			adc_channel_1_export    => CONNECTED_TO_adc_channel_1_export,    --   adc_channel_1.export
			adc_channel_2_export    => CONNECTED_TO_adc_channel_2_export,    --   adc_channel_2.export
			adc_channel_3_export    => CONNECTED_TO_adc_channel_3_export,    --   adc_channel_3.export
			adc_channel_4_export    => CONNECTED_TO_adc_channel_4_export,    --   adc_channel_4.export
			adc_channel_5_export    => CONNECTED_TO_adc_channel_5_export,    --   adc_channel_5.export
			adc_channel_6_export    => CONNECTED_TO_adc_channel_6_export,    --   adc_channel_6.export
			adc_channel_7_export    => CONNECTED_TO_adc_channel_7_export,    --   adc_channel_7.export
			adc_leds_export         => CONNECTED_TO_adc_leds_export,         --        adc_leds.export
			adder_a_export          => CONNECTED_TO_adder_a_export,          --         adder_a.export
			adder_b_export          => CONNECTED_TO_adder_b_export,          --         adder_b.export
			adder_sum_export        => CONNECTED_TO_adder_sum_export,        --       adder_sum.export
			clk_clk                 => CONNECTED_TO_clk_clk,                 --             clk.clk
			hps_0_h2f_reset_reset_n => CONNECTED_TO_hps_0_h2f_reset_reset_n, -- hps_0_h2f_reset.reset_n
			memory_mem_a            => CONNECTED_TO_memory_mem_a,            --          memory.mem_a
			memory_mem_ba           => CONNECTED_TO_memory_mem_ba,           --                .mem_ba
			memory_mem_ck           => CONNECTED_TO_memory_mem_ck,           --                .mem_ck
			memory_mem_ck_n         => CONNECTED_TO_memory_mem_ck_n,         --                .mem_ck_n
			memory_mem_cke          => CONNECTED_TO_memory_mem_cke,          --                .mem_cke
			memory_mem_cs_n         => CONNECTED_TO_memory_mem_cs_n,         --                .mem_cs_n
			memory_mem_ras_n        => CONNECTED_TO_memory_mem_ras_n,        --                .mem_ras_n
			memory_mem_cas_n        => CONNECTED_TO_memory_mem_cas_n,        --                .mem_cas_n
			memory_mem_we_n         => CONNECTED_TO_memory_mem_we_n,         --                .mem_we_n
			memory_mem_reset_n      => CONNECTED_TO_memory_mem_reset_n,      --                .mem_reset_n
			memory_mem_dq           => CONNECTED_TO_memory_mem_dq,           --                .mem_dq
			memory_mem_dqs          => CONNECTED_TO_memory_mem_dqs,          --                .mem_dqs
			memory_mem_dqs_n        => CONNECTED_TO_memory_mem_dqs_n,        --                .mem_dqs_n
			memory_mem_odt          => CONNECTED_TO_memory_mem_odt,          --                .mem_odt
			memory_mem_dm           => CONNECTED_TO_memory_mem_dm,           --                .mem_dm
			memory_oct_rzqin        => CONNECTED_TO_memory_oct_rzqin,        --                .oct_rzqin
			reset_reset_n           => CONNECTED_TO_reset_reset_n,           --           reset.reset_n
			adc_interface_sclk      => CONNECTED_TO_adc_interface_sclk,      --   adc_interface.sclk
			adc_interface_cs_n      => CONNECTED_TO_adc_interface_cs_n,      --                .cs_n
			adc_interface_dout      => CONNECTED_TO_adc_interface_dout,      --                .dout
			adc_interface_din       => CONNECTED_TO_adc_interface_din        --                .din
		);

