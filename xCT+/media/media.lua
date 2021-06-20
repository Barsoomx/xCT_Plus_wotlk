--[[   ____    ______
      /\  _`\ /\__  _\   __
 __  _\ \ \/\_\/_/\ \/ /_\ \___
/\ \/'\\ \ \/_/_ \ \ \/\___  __\
\/>  </ \ \ \L\ \ \ \ \/__/\_\_/
 /\_/\_\ \ \____/  \ \_\  \/_/
 \//\/_/  \/___/    \/_/

 [=====================================]
 [  Author: Dandruff @ Whisperwind-US  ]
 [  xCT+ Version 3.x.x                 ]
 [  �2012. All Rights Reserved.        ]
 [====================================]]

local ADDON_NAME, addon = ...

-- Textures
local x = addon.engine
x.BLANK_ICON = "Interface\\AddOns\\" .. ADDON_NAME .. "\\media\\blank"
x.new = "\124TInterface\\OptionsFrame\\UI-OptionsFrame-NewFeatureIcon:0:0:0:-1\124t"

x.runeIcons = {

  [1] = "\124TInterface\\PlayerFrame\\UI-PlayerFrame-Deathknight-Blood:0:0:0:-1\124t";
  [2] = "\124TInterface\\PlayerFrame\\UI-PlayerFrame-Deathknight-Unholy:0:0:0:-1\124t";
  [3] = "\124TInterface\\PlayerFrame\\UI-PlayerFrame-Deathknight-Frost:0:0:0:-1\124t";
  [4] = "\124TInterface\\PlayerFrame\\UI-PlayerFrame-Deathknight-Death:0:0:0:-1\124t";
--[===[
  [1] = "\124TInterface\\PlayerFrame\\UI-PlayerFrame-DeathKnight-Blood-Off.tga:0:0:0:-1\124t",
	[2] = "\124TInterface\\PlayerFrame\\UI-PlayerFrame-DeathKnight-Death-Off.tga:0:0:0:-1\124t",
	[3] = "\124TInterface\\PlayerFrame\\UI-PlayerFrame-DeathKnight-Frost-Off.tga:0:0:0:-1\124t",
	[4] = "\124TInterface\\PlayerFrame\\UI-PlayerFrame-Deathknight-Chromatic-Off.tga:0:0:0:-1\124t",
  ]===]
}

-- Fonts
local LSM = LibStub("LibSharedMedia-3.0")

LSM:Register("font", "HOOGE (xCT)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\HOOGE.TTF]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
LSM:Register("font", "PT Sans Narrow", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\PTSansNarrow.ttf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
LSM:Register("font", "Homespun (xCT+)", [[Interface\AddOns\]] .. ADDON_NAME .. [[\media\homespun.ttf]], LSM.LOCALE_BIT_ruRU + LSM.LOCALE_BIT_western)
