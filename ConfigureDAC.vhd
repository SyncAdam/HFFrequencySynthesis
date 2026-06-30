library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- Output on the SDIO and SCLK of the DAC with 3.3V logic on the jumpers
entity ConfigureDAC is
	port(
		signal writeConfig: in std_logic;
		signal CLKIN: in std_logic;
		signal resetn: in std_logic;
		signal WrReEn: in std_logic;
		signal configOK: inout std_logic;
		signal SDENB: inout std_logic;
		signal SCLK: inout std_logic;
		signal SDIO: inout std_logic;
		signal stateRegOut: out std_logic_vector(2 downto 0)
	);
end entity;


architecture basic of ConfigureDAC is

	type state_conf is (IDLE, SEND, INTER, DISCARD,	DONE);
	
	signal internalClock: std_logic := '0';

	signal dataIndex: std_logic_vector(7 downto 0) := x"00";
	
	signal counter: std_logic_vector(6 downto 0) := B"0000000";
	signal config: std_logic_vector(15 downto 0);
	signal clockDividerBuffer: std_logic_vector(3 downto 0) := std_logic_vector(to_unsigned(0, 4));
	--signal clockDividerBuffer: std_logic_vector(7 downto 0) := std_logic_vector(to_unsigned(0, 8));
	
	signal state: state_conf := IDLE;
	signal nextState: state_conf := IDLE;
	
	signal sendData: std_logic := '0';
	signal resetSend: std_logic := '0';
	signal discarding: std_logic := '0';
	signal discarded: std_logic := '0';
	signal discardBuffer: std_logic := '0';

	signal needWait: std_logic := '0';
	signal waiting: std_logic := '0';
	signal WaitingDone: std_logic := '0';
	signal WaitingBuffer: unsigned(15 downto 0) := to_unsigned(0, 16);
	
	signal wrre_latched : std_logic := '0';

	signal sdio_do : std_logic := '0';
	signal sdio_oe : std_logic := '1';
	signal sclk_reg : std_logic := '0';
	signal sclk_oe  : std_logic := '0';
	
begin

	SDIO    <= sdio_do when sdio_oe = '1' else 'Z';

	SCLK <= sclk_reg when sclk_oe = '1' else '0';
		
	ConfigMemory: entity work.ConfigRom(basic)
					port map(counter, config);
	
	Debugger: process(state, CLKIN, resetn)
	begin
		case state is
			when IDLE =>	stateRegOut <= B"111";
								
			when SEND =>		stateRegOut <= B"101";
								
			when INTER =>		stateRegOut <= B"010";
								
			when DISCARD =>		stateRegOut <= B"110";
								
			when DONE =>			stateRegOut <= B"011";
			when others => 	stateRegOut <= B"000";
		end case;
		if(resetn = '0') then
			stateRegOut <=  B"000";
		end if;
	end process;
					
	StatePicker: process(sclk_reg, resetn) is
	begin
		if falling_edge(sclk_reg) then
		case state is
			when IDLE =>	if(writeConfig = '0' and configOk /= '1') then
									nextState <= DISCARD;
								else
									nextState <= IDLE;
								end if;
								
			when SEND =>	if(writeConfig = '0') then
									if(configOK = '1') then
										nextState <= DONE;
									else
										if(needWait = '1') then
											nextState <= INTER;
										else										
											nextState <= SEND;
										end if;
									end if;
								else
									nextState <= IDLE;
								end if;
								
			when INTER =>				if(configOk = '1') then
									nextState <= DONE;
								else
									if(waitingDone = '0') then
										nextState <= INTER;
									else
										nextState <= DISCARD;
									end if;
								end if;
								
			when DISCARD =>				if(discarded = '1') then
									nextState <= SEND;
								else
									nextState <= DISCARD;
								end if;
								
			when DONE =>				if(writeConfig = '1') then
									nextState <= IDLE;
								else
									nextState <= DONE;
								end if;
			when others => null;
		end case;
		end if;
		if(resetn = '0') then
			nextState <=  IDLE;
		end if;
	end process;
	
	StateMediator: process(nextState, sclk_reg, resetn) is
	begin
		if rising_edge(sclk_reg) then
			state <= nextState;
			if (state /= SEND) then
			   wrre_latched <= WrReEn;
			end if;
		end if;
		if(resetn = '0') then
			state <= IDLE;
			wrre_latched <= '0';
		end if;
	end process;
						
	Outputs: process(state, resetn) is
	begin
		case state is
			when IDLE =>	SDENB <= '1';
								discarding <= '0';
								sendData <= '0';
								sclk_oe <= '0';
								waiting <= '0';
									
			when SEND =>	sendData <= '1';
								SDENB <= '0';
								sclk_oe <= '1';
								discarding <= '0';
								waiting <= '0';
									
			when DISCARD =>				sendData <= '0';
								SDENB <= '0';
								discarding <= '1';
								sclk_oe <= '0';
								waiting <= '0';
									
			when INTER =>	sendData <= '0';
								SDENB <= '1';
								discarding <= '0';
								sclk_oe <= '0';
								waiting <= '1';
								
			when DONE => 	sendData <= '0';
								SDENB <= '1';
								discarding <= '0';
								sclk_oe <= '0';
								waiting <= '0';
				
			when others => null;
		end case;
		if(resetn = '0') then
			sendData <= '0';
			SDENB <= '1';
			waiting <= '0';
			discarding <= '0';
		end if;
	end process;
	
	TransmitData: process(dataIndex, sendData, nextState)
		variable currentIndex: integer;
	begin
		currentIndex := to_integer(unsigned(dataIndex));
		if(nextState = SEND) then
			sdio_oe <= '1';
		else
			sdio_do <= '0';
			sdio_oe <= '0';
		end if;

		if(dataIndex = x"00") then
			sdio_do <= wrre_latched;
		elsif(dataIndex <= x"07") then
			sdio_do <= counter(7 - currentIndex);
		else
			if(wrre_latched = '0') then
				sdio_do <= config(23 - currentIndex);
				sdio_oe <= '1';
			else
				sdio_do <= '0';
				sdio_oe <= '0';
			end if;
		end if;
	end process;

	DataIndexIncrement: process(sclk_reg, resetn)
		variable current: unsigned(7 downto 0);
	begin
		current := unsigned(dataIndex) + 1;
	
		if resetn = '0' then
			dataIndex <= x"00";
			configOK <= '0';
			needWait <= '0';
			counter <= B"0000000";	
		elsif falling_edge(sclk_reg) then
			if sendData = '1' then
				if current < 24 then
					dataIndex <= std_logic_vector(unsigned(dataIndex) + 1);
					if(current = x"17") then
						needWait <= '1';
					end if;
				else
					dataIndex <= x"00";
					needWait <= '0';
					if(unsigned(counter) < 48) then 
						counter <= std_logic_vector(unsigned(counter) + 1);
					else
						counter <= B"0000000";
						configOK <= '1';
					end if;
				end if;
			end if;
	  	end if;
	end process;
		
	SclkGen: process(internalClock, resetn)
	begin
	  if resetn = '0' then
			sclk_reg <= '0';
	  elsif rising_edge(internalClock) then
	      sclk_reg <= not sclk_reg;
	  end if;
	end process;
	
	ClockDivide: process(CLKIN, resetn)
	begin
		if rising_edge(CLKIN) then
			clockDividerBuffer <= std_logic_vector(unsigned(clockDividerBuffer) + 1);
			
			if(clockDividerBuffer = x"A") then --32
				clockDividerBuffer <= x"0";
				internalClock <= not internalClock;
			end if;
		end if;
		if(resetn = '0') then
			clockDividerBuffer <= x"0";
			internalClock <= '0';
		end if;
	end process;
	
	Waiter: process(sclk_reg, resetn)
	begin
		if rising_edge(sclk_reg) then
			if(waiting = '1') then
				if(waitingBuffer = 5000) then
					waitingBuffer <= to_unsigned(0, 16);
					waitingDone <= '1';
				else
					waitingBuffer <= waitingBuffer + 1;
					waitingDone <= '0';
				end if;
			else
				waitingDone <= '0';
			end if;
		end if;
		if(resetn = '0') then
			waitingBuffer <= x"0000";
			waitingDone <= '0';
		end if;
	end process;
	
	Discarder: process(internalClock, discarding, resetn, waiting)
	begin
		if rising_edge(internalClock) then
			if(discarding = '1') then
				discardBuffer <= '1';
			end if;
			if(discardBuffer = '1') then
				discardBuffer <= '0';
				discarded <= '1';
			end if;
			if(waiting = '1') then
				discarded <= '0';
				discardBuffer <= '0';
			end if;
			
		end if;
		if(resetn = '0') then
			discarded <= '0';
			discardBuffer <= '0';
		end if;
		
	end process;
				
			
end architecture;
