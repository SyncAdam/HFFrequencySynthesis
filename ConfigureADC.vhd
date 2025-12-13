library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Output on the SDIO and SCLK of the DAC with 3.3V logic on the jumpers
entity ConfigureADC is
	port(
		signal writeConfig: in std_logic;
		signal configOK: inout std_logic;
		signal SDENB: inout std_logic;
		signal SCLK: inout std_logic;
		signal SDIO: out std_logic;
		signal CLKIN: in std_logic
	);
end entity;


architecture basic of ConfigureADC is

	type state_conf is (IDLE, SEND, DONE);

	signal dataIndex: integer := 1;
	signal counter: std_logic_vector(6 downto 0) := B"0000000";
	signal config: std_logic_vector(15 downto 0);
	signal state: state_conf := IDLE;
	signal nextState: state_conf := IDLE;
	signal generateClk: boolean := false;
	signal sendData: boolean := false;
	signal resetSend: boolean := false;

begin
		
	ConfigMemory: entity work.ConfigRom(basic)
					port map(counter, config);
					
	StatePicker: process(configOK, writeConfig) is
	begin
		case state is
			when IDLE =>	if(writeConfig = '1') then
									nextState <= SEND;
								else
									nextState <= IDLE;
								end if;
								
			when SEND =>	if(writeConfig = '1') then
									if(configOK = '1') then
										nextState <= DONE;
									else
										nextState <= SEND;
									end if;
								else
									nextState <= IDLE;
								end if;
								
			when DONE =>	if(writeConfig = '0') then
									nextState <= IDLE;
								else
									nextState <= DONE;
								end if;
			when others => null;
		end case;
	end process;
	
	StateMediator: process(nextState) is
	begin
		state <= nextState;
	end process;
						
	Outputs: process(state) is
	begin
		case state is
			when IDLE =>	SDENB <= '1';
								generateClk <= false;
								
			when SEND =>	generateClk <= true;
								sendData <= true;
			
			when others => null;
		end case;
	end process;
	
	TransmitData: process(sendData, SCLK) is
	begin
		if(sendData = true) then	-- if we want to send
			if(SCLK'event and SCLK = '0') then	-- on the falling edge of the output serial clk		
				
				dataIndex <= dataIndex + 1;
				
				if(dataIndex < 7) then		-- in adress range
					SDIO <= counter(6 - dataIndex);
				elsif(dataIndex < 22) then	-- in data range
					SDIO <= config(15 + 7 - dataIndex);
				else
					if(unsigned(counter) < 48) then
						counter <= std_logic_vector(unsigned(counter) + 1);
						dataIndex <= 0;
					end if;
				end if;
			end if;
		end if;
			
	end process;
		
	
	ClockGenerate: process(generateClk, CLKIN) is
	begin
		if(generateClk = true) then
			SCLK <= CLKIN;
		else
			SCLK 	<= '0';
		end if;
	end process;
end architecture;
