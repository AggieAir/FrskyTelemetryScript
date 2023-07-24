----------------------------------------
-- custom sensors configuration file
-- this will be rendered as an horizontal bar above the bottom black status bar
-- 6 sensors supported
----------------------------------------
local sensors = {
  -- Sensor 1
[1]=  {
    "RS9",   -- label
    "RS9",     -- OpenTX sensor name
    0,          -- precision: number of decimals 0,1,2
    "",         -- label for unit of measure
    1,          -- multiplier if < 1 than divides
    "+",        -- "+" track max values, "-" track min values with
    2,          -- font size 1=small, 2=big
    70,        -- warning level (nil is do not use feature)
    50,        -- critical level (nil is do not use feature)
  },

  -- Sensor 2
[2]=  {
    "RS2", -- label
    "RS2", -- OpenTX sensor name
    0,      -- precision: number of decimals 0,1,2
    "",   -- label for unit of measure
    1,      -- multiplier if < 1 than divides
    "+",    -- "+" track max values, "-" track min values with
    2,      -- font size 1=small, 2=big
    nil,     -- warning level
    nil,     -- critical level
  },

  -- Sensor 3
[3]=  {
    "RxBat", -- label
    "RxBt", -- OpenTX sensor name
    0,      -- precision: number of decimals 0,1,2
    "%",    -- label for unit of measure
    1,      -- multiplier if < 1 than divides
    "-",    -- "+" track max values, "-" track min values
    2,      -- font size 1=small, 2=big
    1,     -- warning level
    1     -- critical level
  }
}
------------------------------------------------------
-- the script can optionally look up values here
-- for each sensor and display the corresponding text instead
-- as an example to associate a lookup table to sensor 3 declare it like
--
-- [3] = {
--   [-10] = "ERR",
--   [0] = "OK",
--   [10] = "CRIT",
-- }
-- this would display the sensor value except when the value corresponds to one
-- of entered above
-- 
local lookups = {
  -- lookup 2
  [6] = {
      [-30] = "ERROR",
      [-20] = "OFF",
      [-10] = "COOL",
      [-1] = "LOCK",
      [0] = "STOP",
      [10] = "RUN",
      [20] = "REL",
      [25] = "GLOW",
      [30] = "SPIN",
      [40] = "FIRE",
      [45] = "IGNT",
      [50] = "HEAT",
      [60] = "ACCE",
      [65] = "CAL",
      [70] = "IDLE",
  },
}

collectgarbage()

return {
  sensors=sensors,lookups=lookups
}