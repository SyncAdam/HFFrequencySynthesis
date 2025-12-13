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

	type state_conf is (IDLE, SEND, INTER, DISCARD,	DONE);
	
	signal internalClock: std_logic := '0';

	signal dataIndex: unsigned(4 downto 0) := B"00000";
	
	signal counter: std_logic_vector(6 downto 0) := B"0000000";
	signal config: std_logic_vector(15 downto 0);
	signal waitingBuffer: unsigned(3 downto 0) := B"0000";
	signal clockDividerBuffer: unsigned(7 downto 0) := B"00000000";
	signal discardBuffer: unsigned(0 downto 0) := B"0";
	
	signal state: state_conf := IDLE;
	signal nextState: state_conf := IDLE;
	
	signal generateClk: boolean := false;
	signal sendData: boolean := false;
	signal resetSend: boolean := false;
	signal waiting: boolean := false;
	signal discarding: boolean := false;
	signal needWait: boolean := false;
	signal waitingDone: boolean := false;
	signal discarded: boolean := false;
	signal outputClock: boolean := false;
	
begin
		
	ConfigMemory: entity work.ConfigRom(basic)
					port map(counter, config);
					
	StatePicker: process(configOK, writeConfig, needWait, waitingDone, discarded, CLKIN) is
	begin
	if rising_edge(CLKIN) then
 		case state is
			when IDLE =>	if(writeConfig = '0') then
									nextState <= DISCARD;
								else
									nextState <= IDLE;
								end if;
								
			when SEND =>	if(writeConfig = '0') then
									if(configOK = '1') then
										nextState <= DONE;
									else
										if(needWait) then
											nextState <= INTER;
										else										
											nextState <= SEND;
										end if;
									end if;
								else
									nextState <= IDLE;
								end if;
								
			when INTER =>	if(waitingDone = false) then
									nextState <= INTER;
								else
									nextState <= DISCARD;
								end if;
									
			when DISCARD =>	if(discarded = true) then
									nextState <= SEND;
								else
									nextState <= DISCARD;
								end if;
								
			when DONE =>	if(writeConfig = '1') then
									nextState <= IDLE;
								else
									nextState <= DONE;
								end if;
			when others => null;
		end case;
	end if;
	end process;
	
	StateMediator: process(nextState, CLKIN) is
	begin
	if rising_edge(CLKIN) then
		state <= nextState;
	end if;
	end process;
						
	Outputs: process(state, CLKIN) is
	begin
	if rising_edge(CLKIN) then
		case state is
			when IDLE =>	SDENB <= '0';
								waiting <= false;
								outputClock <= false;
								discarding <= false;
								
			when SEND =>	sendData <= true;
								waiting <= false;
								SDENB <= '1';
								outputClock <= true;
								discarding <= false;
								
			when DISCARD =>	outputClock <= false;
								sendData <= false;
								waiting <= false;
								SDENB <= '1';
								discarding <= true;
								
			when INTER =>	sendData <= false;
								waiting <= true;
								SDENB <= '0';
								outputClock <= false;
								discarding <= false;
								
			when DONE => 	sendData <= false;
								waiting <= false;
								SDENB <= '0';
								outputClock <= false;
								discarding <= false;
			
			when others => null;
		end case;
	end if;
	end process;
	
	TransmitData: process(dataIndex, sendData, CLKIN) is
	begin
		if(sendData = true) then
			if(dataIndex < 7) then		-- in adress range
				SDIO <= counter(6 - to_integer(dataIndex));	-- 6 - dataindex
			elsif(dataIndex < 22) then	-- in data range
				SDIO <= config(22 - to_integer(dataIndex));	-- 22 - dataindex
			end if;
		end if;
	end process;
	
	DataIndexIncrement: process(SDENB, internalClock) is
	begin
		if(internalClock'event and internalClock = '0' and sendData = true) then
			if(dataIndex < 22) then
				dataIndex <= to_unsigned(to_integer(dataIndex) + 1, 5);
				configOK <= '0';
				needWait <= false;
			else
				dataIndex <= unsigned(0, 5);
				needWait <= true;
				if(counter < B"110000") then 
					counter <= std_logic_vector(unsigned(counter) + 1);
				else
					counter <= B"0000000";
					configOK <= '1';
				end if;
			end if;
		end if;
	end process;
	
	ClockGenerate: process(outputClock, internalClock) is
	begin
		if(outputClock) then
			SCLK <= internalClock;
		else
			SCLK 	<= '0';
		end if;
	end process;
	
	ClockDivide: process(CLKIN)
	begin
		if rising_edge(CLKIN) then
			clockDividerBuffer <= clockDividerBuffer + 1;
			if(clockDividerBuffer = B"11111111") then
				clockDividerBuffer <= to_unsigned(0, 8);
				internalClock <= not internalClock;
			end if;
		end if;
	end process;
	
	Waiter: process(internalClock, waiting)
	begin
		if(waiting and internalClock = '1') then
			if(waitingBuffer = 7) then
				waitingBuffer <= to_unsigned(0, 4);
				waitingDone <= true;
			else
				waitingBuffer <= waitingBuffer + 1;
				waitingDone <= false;
			end if;
		end if;
	end process;
	
	Discarder: process(internalClock, discarding)
	begin
		if(discardBuffer = B"1") then
			discarded <= true;
		end if;
		if(waiting and discardBuffer = B"1") then
			discarded <= false;
			discardBuffer <= B"0";
		end if;
		if(internalClock = '1' and discarding) then
			discardBuffer <= discardBuffer + 1;
		end if;
	end process;
				
end architecture;