-------------------------------------------------------------------------------
-- HelloWorld_stub.vhd
-------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

library UNISIM;
use UNISIM.VCOMPONENTS.ALL;

entity HelloWorld_stub is
  port (
    RS232_Uart_1_sout : out std_logic;
    RS232_Uart_1_sin : in std_logic;
    RESET : in std_logic;
    LEDS_TRI_O : out std_logic_vector(0 to 7);
    DIP_Switches_TRI_I : in std_logic_vector(0 to 7);
    CLK_P : in std_logic;
    CLK_N : in std_logic
  );
end HelloWorld_stub;

architecture STRUCTURE of HelloWorld_stub is

  component HelloWorld is
    port (
      RS232_Uart_1_sout : out std_logic;
      RS232_Uart_1_sin : in std_logic;
      RESET : in std_logic;
      LEDS_TRI_O : out std_logic_vector(0 to 7);
      DIP_Switches_TRI_I : in std_logic_vector(0 to 7);
      CLK_P : in std_logic;
      CLK_N : in std_logic
    );
  end component;

  attribute BOX_TYPE : STRING;
  attribute BOX_TYPE of HelloWorld : component is "user_black_box";

begin

  HelloWorld_i : HelloWorld
    port map (
      RS232_Uart_1_sout => RS232_Uart_1_sout,
      RS232_Uart_1_sin => RS232_Uart_1_sin,
      RESET => RESET,
      LEDS_TRI_O => LEDS_TRI_O,
      DIP_Switches_TRI_I => DIP_Switches_TRI_I,
      CLK_P => CLK_P,
      CLK_N => CLK_N
    );

end architecture STRUCTURE;

