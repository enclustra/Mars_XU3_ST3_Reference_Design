---------------------------------------------------------------------------------------------------
-- Copyright (c) 2021 by Enclustra GmbH, Switzerland.
--
-- Permission is hereby granted, free of charge, to any person obtaining a copy of
-- this hardware, software, firmware, and associated documentation files (the
-- "Product"), to deal in the Product without restriction, including without
-- limitation the rights to use, copy, modify, merge, publish, distribute,
-- sublicense, and/or sell copies of the Product, and to permit persons to whom the
-- Product is furnished to do so, subject to the following conditions:
--
-- The above copyright notice and this permission notice shall be included in all
-- copies or substantial portions of the Product.
--
-- THE PRODUCT IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A
-- PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT
-- HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
-- OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
-- PRODUCT OR THE USE OR OTHER DEALINGS IN THE PRODUCT.
---------------------------------------------------------------------------------------------------

---------------------------------------------------------------------------------------------------
-- libraries
---------------------------------------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

---------------------------------------------------------------------------------------------------
-- entity declaration
---------------------------------------------------------------------------------------------------
entity Mars_XU3_ST3 is
  
  port (
    
    -- Anios_0
    IO0_D0_P                       : inout   std_logic;
    IO0_D1_N                       : inout   std_logic;
    IO0_D2_P                       : inout   std_logic;
    IO0_D3_N                       : inout   std_logic;
    IO0_D4_P                       : inout   std_logic;
    IO0_D5_N                       : inout   std_logic;
    IO0_D6_P                       : inout   std_logic;
    IO0_D7_N                       : inout   std_logic;
    IO0_D8_P                       : inout   std_logic;
    IO0_D9_N                       : inout   std_logic;
    IO0_D10_P                      : inout   std_logic;
    IO0_D11_N                      : inout   std_logic;
    IO0_D12_P                      : inout   std_logic;
    IO0_D13_N                      : inout   std_logic;
    IO0_D14_P                      : inout   std_logic;
    IO0_D15_N                      : inout   std_logic;
    IO0_D16_P                      : inout   std_logic;
    IO0_D17_N                      : inout   std_logic;
    IO0_D18_P                      : inout   std_logic;
    IO0_D19_N                      : inout   std_logic;
    IO0_D20_P                      : inout   std_logic;
    IO0_D21_N                      : inout   std_logic;
    IO0_D22_P                      : inout   std_logic;
    IO0_D23_N                      : inout   std_logic;
    IO0_CLK_N                      : inout   std_logic;
    IO0_CLK_P                      : inout   std_logic;
    
    -- Anios_1
    IO1_D0_P                       : inout   std_logic;
    IO1_D1_N                       : inout   std_logic;
    IO1_D2_P                       : inout   std_logic;
    IO1_D3_N                       : inout   std_logic;
    IO1_D4_P                       : inout   std_logic;
    IO1_D5_N                       : inout   std_logic;
    IO1_D6_P                       : inout   std_logic;
    IO1_D7_N                       : inout   std_logic;
    IO1_D8_P                       : inout   std_logic;
    IO1_D9_N                       : inout   std_logic;
    IO1_D10_P                      : inout   std_logic;
    IO1_D11_N                      : inout   std_logic;
    IO1_D12_P                      : inout   std_logic;
    IO1_D13_N                      : inout   std_logic;
    IO1_D14_P                      : inout   std_logic;
    IO1_D15_N                      : inout   std_logic;
    
    -- DP
    DP_HPD                         : in      std_logic;
    DP_AUX_IN                      : in      std_logic;
    DP_AUX_OE                      : out     std_logic;
    DP_AUX_OUT                     : out     std_logic;
    
    -- HDMI
    HDMI_CEC                       : inout   std_logic;
    HDMI_HPD                       : inout   std_logic;
    HDMI_D0_N                      : inout   std_logic;
    HDMI_D0_P                      : inout   std_logic;
    HDMI_D1_N                      : inout   std_logic;
    HDMI_D1_P                      : inout   std_logic;
    HDMI_D2_N                      : inout   std_logic;
    HDMI_D2_P                      : inout   std_logic;
    HDMI_CLK_N                     : inout   std_logic;
    HDMI_CLK_P                     : inout   std_logic;
    
    -- I2C_PL
    I2C_SCL_LV                     : inout   std_logic;
    I2C_SDA_LV                     : inout   std_logic;
    
    -- IO_2
    IO2_D0_P                       : inout   std_logic;
    IO2_D1_N                       : inout   std_logic;
    IO2_D2_P                       : inout   std_logic;
    IO2_D3_N                       : inout   std_logic;
    IO2_D4_P                       : inout   std_logic;
    IO2_D5_N                       : inout   std_logic;
    IO2_D6_P                       : inout   std_logic;
    IO2_D7_N                       : inout   std_logic;
    
    -- IO_3
    IO3_D0_P                       : inout   std_logic;
    IO3_D1_N                       : inout   std_logic;
    IO3_D2_P                       : inout   std_logic;
    IO3_D3_N                       : inout   std_logic;
    
    -- LED
    LED0_N                         : out     std_logic;
    LED1_N                         : out     std_logic;
    
    -- MIPI
    MIPI_D0_N                      : inout   std_logic;
    MIPI_D0_P                      : inout   std_logic;
    MIPI_D1_N                      : inout   std_logic;
    MIPI_D1_P                      : inout   std_logic;
    MIPI_CLK_N                     : inout   std_logic;
    MIPI_CLK_P                     : inout   std_logic;
    
    -- ST3_I2C
    I2C_SCL_FPGA                   : inout   std_logic;
    I2C_SDA_FPGA                   : inout   std_logic
  );
end Mars_XU3_ST3;

architecture rtl of Mars_XU3_ST3 is

  ---------------------------------------------------------------------------------------------------
  -- component declarations
  ---------------------------------------------------------------------------------------------------
  component Mars_XU3 is
    port (
      DP_AUX_OUT          : out    std_logic;
      DP_AUX_OE           : out    std_logic;
      DP_AUX_IN           : in     std_logic;
      DP_HPD              : in     std_logic;
      Clk100              : out    std_logic;
      Clk50               : out    std_logic;
      Rst_N               : out    std_logic;
      LED1_N              : out    std_logic
    );
    
  end component Mars_XU3;

  ---------------------------------------------------------------------------------------------------
  -- signal declarations
  ---------------------------------------------------------------------------------------------------
  signal Clk100           : std_logic;
  signal Clk50            : std_logic;
  signal Rst_N            : std_logic;
  signal dp_aux_data_oe_n : std_logic;
  signal LedCount         : unsigned(23 downto 0);

begin
  
  ---------------------------------------------------------------------------------------------------
  -- processor system instance
  ---------------------------------------------------------------------------------------------------
  Mars_XU3_i: component Mars_XU3
    port map (
      DP_AUX_OUT           => DP_AUX_OUT,
      DP_AUX_OE            => dp_aux_data_oe_n,
      DP_AUX_IN            => DP_AUX_IN,
      DP_HPD               => DP_HPD,
      Clk100               => Clk100,
      Clk50                => Clk50,
      Rst_N                => Rst_N,
      LED1_N               => LED1_N
    );
  
  DP_AUX_OE <= not dp_aux_data_oe_n;
  process (Clk50)
  begin
    if rising_edge (Clk50) then
      if Rst_N = '0' then
        LedCount    <= (others => '0');
      else
        LedCount    <= LedCount + 1;
      end if;
    end if;
  end process;
  Led0_N <= '0' when LedCount(LedCount'high) = '0' else 'Z';

end rtl;
