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
 [  ©2012. All Rights Reserved.        ]
 [====================================]]

local ADDON_NAME, addon = ...

-- =====================================================
-- CreateMergeSpellEntry(
--    class,       [string] - class name that spell belongs to
--    interval,       [int] - How often to update merged data (in seconds)
--    prep,           [int] - The minimum time to wait to update merged data (NOT USED YET)
--    desc,        [string] - A short, helpful qualifier (1-2 words)
--  )
--    Creates a merge settings entry for a spell.
-- =====================================================
local function CreateMergeSpellEntry(class, interval, desc, prep)
  return {
         class = class      or "ITEM",
      interval = interval   or 3,
          prep = prep       or 0,
          desc = desc,
    }
end

-- Filter These Spells Remove
-- [1949] - Damage to Self

-- List of Spells that need to be merged
addon.merges = {

-- items (damage)
  [71904] = CreateMergeSpellEntry("ITEM", 3.5, "Chaos Bane (Shadowmourne)"),
  [56488] = CreateMergeSpellEntry("ITEM", 3.5, "Global Sapper Charge (Explosion)"),
  [56350] = CreateMergeSpellEntry("ITEM", 5,   "Saronite Bomb (Explosion)"),
  [69766] = CreateMergeSpellEntry("ITEM", 0.5, "Unchained Magic (Sindragosa)"),
  [71829] = CreateMergeSpellEntry("ITEM", 0.5, "Arctic Cold (Valithria trash Mind controlled mob)"),
  [72672] = CreateMergeSpellEntry("ITEM", 0.5, "Mutated Plague (Putricide)"),

-- items (healing)
  [71865] = CreateMergeSpellEntry("ITEM", 0.5, "Fountain of Light (Trauma proc)"),
  [75493] = CreateMergeSpellEntry("ITEM", 0.5, "Twilight Renewal (Glowing Twilight Scale proc)"),

-- death knight (damage)
  [55262]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Heart Strike
  [55095]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Frost Fever
  [55078]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Blood Plague
  [55536]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Unholy Blight
  [49941]  = CreateMergeSpellEntry("DEATHKNIGHT", .5),      -- Blood Boil
  [47468]  = CreateMergeSpellEntry("DEATHKNIGHT", 4),       -- Claw (Army of the Dead)
  [49184]  = CreateMergeSpellEntry("DEATHKNIGHT", .5),      -- Howling Blast
  [55050]  = CreateMergeSpellEntry("DEATHKNIGHT", .5),      -- Heart Strike
  [52212]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Death and Decay
  [50526]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Wondering Plague

-- death knight (healing)
  [50475]  = CreateMergeSpellEntry("DEATHKNIGHT"),          -- Blood Presence
  [53365]  = CreateMergeSpellEntry("DEATHKNIGHT", 4),   -- Unholy Strength

-- druid (damage)
  [8921]   = CreateMergeSpellEntry("DRUID"),          -- Moonfire
  [5570]   = CreateMergeSpellEntry("DRUID"),          -- Insect Swarm
  [48466]  = CreateMergeSpellEntry("DRUID"),          -- Hurricane
  [50288]  = CreateMergeSpellEntry("DRUID"),          -- Starfall
  [53190]  = CreateMergeSpellEntry("DRUID", .8),      -- Starfall aoe 10 ticks
  [53227]  = CreateMergeSpellEntry("DRUID", .5),      -- Typhoon
  [1822]   = CreateMergeSpellEntry("DRUID"),          -- Rake
  [62078]  = CreateMergeSpellEntry("DRUID", .5),      -- Swipe (Cat Form)
  [48562]  = CreateMergeSpellEntry("DRUID", .5),      -- Swipe (Bear Form)
  [33745]  = CreateMergeSpellEntry("DRUID"),          -- Lacerate
  [1079]   = CreateMergeSpellEntry("DRUID", 2),       -- Rip


-- druid (healing)
  [774]    = CreateMergeSpellEntry("DRUID"),          -- Rejuvenation (Normal)
  [48441]  = CreateMergeSpellEntry("DRUID"),          -- Rejuvenation (Normal)
  [70691]  = CreateMergeSpellEntry("DRUID"),          -- Rejuvenation (bruh t10)
  [64801]  = CreateMergeSpellEntry("DRUID"),          -- Rejuvenation (First tick)
  [48438]  = CreateMergeSpellEntry("DRUID"),          -- Wild Growth
  [53251]  = CreateMergeSpellEntry("DRUID"),          -- Wild Growth
  [48443]  = CreateMergeSpellEntry("DRUID"),          -- Regrowth
  [33763]  = CreateMergeSpellEntry("DRUID"),          -- Lifebloom
  [48445]  = CreateMergeSpellEntry("DRUID"),          -- Tranquility
  [48503]  = CreateMergeSpellEntry("DRUID"),          -- Seed

-- hunter
  [49048]  = CreateMergeSpellEntry("HUNTER", .5),      -- Multi-Shot
  [58433]  = CreateMergeSpellEntry("HUNTER", .5),      -- Volley
  [1978]   = CreateMergeSpellEntry("HUNTER"),          -- Serpent Sting
  [49065]  = CreateMergeSpellEntry("HUNTER"),          -- Explosive Trap

-- mage
  [44461]  = CreateMergeSpellEntry("MAGE"),          -- Living Bomb Explosion
  [44457]  = CreateMergeSpellEntry("MAGE"),          -- Living Bomb Dot
  [27086]  = CreateMergeSpellEntry("MAGE", 4),       -- Flamestrike (Rank 7)
  [42925]  = CreateMergeSpellEntry("MAGE", 4),       -- Flamestrike (Rank 8)
  [42926]  = CreateMergeSpellEntry("MAGE", 4),       -- Flamestrike (Rank 9)
  [12654]  = CreateMergeSpellEntry("MAGE"),          -- Ignite
  [11366]  = CreateMergeSpellEntry("MAGE"),          -- Pyroblast
  [42950]  = CreateMergeSpellEntry("MAGE", .5),      -- Dragon's Breath
  [42938]  = CreateMergeSpellEntry("MAGE"),          -- Blizzard
  [42917]  = CreateMergeSpellEntry("MAGE", .5),      -- Frost Nova
  [42921]  = CreateMergeSpellEntry("MAGE"),          -- Arcane Explosion
  [42945]  = CreateMergeSpellEntry("MAGE"),          -- Blast Wave
  [42931]  = CreateMergeSpellEntry("MAGE"),          -- Cone of Cold
  [1449]   = CreateMergeSpellEntry("MAGE", .5),      -- Arcane Explosion

-- paladin (damage)
  [2812]   = CreateMergeSpellEntry("PALADIN", .5),      -- Holy Wrath
  [53385]  = CreateMergeSpellEntry("PALADIN", .5),      -- Divine Storm
  [31803]  = CreateMergeSpellEntry("PALADIN", 6),       -- Censure
  [48819]  = CreateMergeSpellEntry("PALADIN", 8),       -- Consecration
  [20424]  = CreateMergeSpellEntry("PALADIN", 1),       -- Seals of Command
  [42463]  = CreateMergeSpellEntry("PALADIN"),          -- Seal of Truth
  [20187]  = CreateMergeSpellEntry("PALADIN"),          -- Seal of Righteousness
  [53595]  = CreateMergeSpellEntry("PALADIN"),          -- Hammer of the Righteous
  [31935]  = CreateMergeSpellEntry("PALADIN"),          -- Avenger's Shield
  [61840]  = CreateMergeSpellEntry("PALADIN"),          -- Righteous vengeance

-- paladin (healing)
  [54172]  = CreateMergeSpellEntry("PALADIN"),          -- Divinge Storm
  [53652]  = CreateMergeSpellEntry("PALADIN"),          -- Beacon of Light
  [20167]  = CreateMergeSpellEntry("PALADIN"),          -- Seal of Insight (Heal Effect)
  [54968]  = CreateMergeSpellEntry("PALADIN", 1),       -- Holy Light Glyph AoE
  [20267]  = CreateMergeSpellEntry("PALADIN", 5),       -- Judgement of light AoE

-- priest (damage)
  [47666]  = CreateMergeSpellEntry("PRIEST"),          -- Penance (Damage Effect)
  [48078]  = CreateMergeSpellEntry("PRIEST", .5),       -- Holy Nova (Damage Effect)
  [589]    = CreateMergeSpellEntry("PRIEST", 6),       -- Shadow Word: Pain
  [34914]  = CreateMergeSpellEntry("PRIEST", 6),       -- Vampiric Touch
  [63675]  = CreateMergeSpellEntry("PRIEST"),          -- Improved Devouring Plague
  [15407]  = CreateMergeSpellEntry("PRIEST"),          -- Mind Flay
  [53022]  = CreateMergeSpellEntry("PRIEST"),          -- Mind Seer

-- priest (healing)
  [47750]  = CreateMergeSpellEntry("PRIEST"),          -- Penance (Heal Effect)
  [139]    = CreateMergeSpellEntry("PRIEST"),          -- Renew
  [596]    = CreateMergeSpellEntry("PRIEST", .5),      -- Prayer of Healing
  [56161]  = CreateMergeSpellEntry("PRIEST"),          -- Glyph of Prayer of Healing
  [64844]  = CreateMergeSpellEntry("PRIEST"),          -- Divine Hymn
  [32546]  = CreateMergeSpellEntry("PRIEST"),          -- Binding Heal
  [34861]  = CreateMergeSpellEntry("PRIEST", .5),      -- Circle of Healing
  [23455]  = CreateMergeSpellEntry("PRIEST"),          -- Holy Nova (Healing Effect)
  [33110]  = CreateMergeSpellEntry("PRIEST"),          -- Prayer of Mending
  [63544]  = CreateMergeSpellEntry("PRIEST"),          -- Divine Touch
  [2944]   = CreateMergeSpellEntry("PRIEST", 6.5),     -- Devouring Plague (Healing)
  [15290]  = CreateMergeSpellEntry("PRIEST", 5),       -- Vampiric Embrace

-- rogue
  [51723]  = CreateMergeSpellEntry("ROGUE", .5),      -- Fan of Knives (H1)
  [57970]  = CreateMergeSpellEntry("ROGUE"),          -- Deadly Poison
  [57965]  = CreateMergeSpellEntry("ROGUE"),          -- Instant Poison

-- shaman (damage)
  [49271]  = CreateMergeSpellEntry("SHAMAN", .5),      -- Chain Lightning
  [61654]  = CreateMergeSpellEntry("SHAMAN"),          -- Fire Nova
  [59159]  = CreateMergeSpellEntry("SHAMAN"),          -- Thunderstorm
  [58735]  = CreateMergeSpellEntry("SHAMAN", .5),      -- Magma Totem
  [8050]  = CreateMergeSpellEntry("SHAMAN"),           -- Flame Shock
  [25504]  = CreateMergeSpellEntry("SHAMAN", .5),      -- Windfury

-- shaman (healing)
  [55459]  = CreateMergeSpellEntry("SHAMAN", .5),      -- Chain Heal
  [52042]  = CreateMergeSpellEntry("SHAMAN", 4),       -- Healing Stream Totem
  [52000]  = CreateMergeSpellEntry("SHAMAN"),          -- Earthliving
  [61295]  = CreateMergeSpellEntry("SHAMAN"),          -- Riptide (Instant & HoT)
  [70809]  = CreateMergeSpellEntry("SHAMAN"),          -- Chained Heal (T10 HoT)

-- warlock (damage)
  [27243]  = CreateMergeSpellEntry("WARLOCK"),          -- Seed of Corruption (DoT)
  [47834]  = CreateMergeSpellEntry("WARLOCK"),          -- Seed of Corruption (Explosion)
  [172]    = CreateMergeSpellEntry("WARLOCK"),          -- Corruption
  [43813]  = CreateMergeSpellEntry("WARLOCK"),          -- Corruption (Soulburn: Seed of Corruption)
  [30108]  = CreateMergeSpellEntry("WARLOCK"),          -- Unstable Affliction
  [348]    = CreateMergeSpellEntry("WARLOCK"),          -- Immolate
  [980]    = CreateMergeSpellEntry("WARLOCK"),          -- Bane of Agony
  [47818]  = CreateMergeSpellEntry("WARLOCK", 6),       -- Rain of Fire
  [47822]  = CreateMergeSpellEntry("WARLOCK"),          -- Hellfire Effect
  [61291]  = CreateMergeSpellEntry("WARLOCK", .5),      -- Shadowflame (shadow direct damage)
  [61290]  = CreateMergeSpellEntry("WARLOCK"),          -- Shadowflame (fire dot)
  [50590]  = CreateMergeSpellEntry("WARLOCK", 11),      -- Immolation Aura
  [47994]  = CreateMergeSpellEntry("WARLOCK"),          -- Cleave (Felguard)
  [20153]  = CreateMergeSpellEntry("WARLOCK"),          -- Immolation (Infrenal)

-- warlock (healing)
  [47893]  = CreateMergeSpellEntry("WARLOCK", 10),      -- Fel Armor
  [63106]  = CreateMergeSpellEntry("WARLOCK"),          -- Siphon Life
  [54181]  = CreateMergeSpellEntry("WARLOCK"),          -- Fel Synergy
  [47857]  = CreateMergeSpellEntry("WARLOCK"),          -- Drain Life
  [30294]  = CreateMergeSpellEntry("WARLOCK"),          -- Soul Leech

-- warrior
  [47520]  = CreateMergeSpellEntry("WARRIOR", .5),      -- Cleave
  [46968]  = CreateMergeSpellEntry("WARRIOR", .5),      -- Shockwave
  [47502]  = CreateMergeSpellEntry("WARRIOR", .5),      -- Thunder Clap
  [50622]  = CreateMergeSpellEntry("WARRIOR"),          -- Bladestorm (Whirlwind)
  [1680]   = CreateMergeSpellEntry("WARRIOR"),          -- Whirlwind
  [94009]  = CreateMergeSpellEntry("WARRIOR"),          -- Rend
  [12721]  = CreateMergeSpellEntry("WARRIOR"),          -- Deep Wounds

-- warrior (healing)
  [23880]  = CreateMergeSpellEntry("WARRIOR"),          -- Bloodthirst
  [55694]  = CreateMergeSpellEntry("WARRIOR"),          -- Enraged Regeneration
}


addon.merge2h = {
  -- other
  [72671]  = 72672,    -- Mutated plague
  [72451]  = 72672,    -- Mutated plague
  [72463]  = 72672,    -- Mutated plague
  [71865]  = 71868,    -- Trauma (Heroic version)
  [75493]  = 75494,    -- Glowing Twilight Scale (Heroic version)

  -- Mage (Damage)
  [55362]  = 44457,    -- Living Bomb (DOT)

  -- Priest (Damage)
  [49821]  = 53022,    -- Mind Sear

  -- Druid (Damage)
  [53195]  = 53190,    -- Starfall aoe 2

  -- Rogue (Damage)
  [2818]   = 57970,    -- Deadly Poison (DoT)
  [52874]  = 51723,    -- Fan of knives OH

  -- Shaman (damage)
  [45297]  = 49271,    -- Chain Lightning (Lightning Overload)
  [32176]  = 32175,    -- Stormstrike

  -- Warlock (Damage)
  [27285]  = 27243,    -- Seed of Corruption (Explosion)

  -- Warrior
  [44949]  = 1680,     -- Whirlwind (Offhand)
  [46924]  = 50622,    -- Bladestorm (Offhand)

  -- Deathknight
  [66198]  = 49020,     --    Obliterate OH
  [66188]  = 49998,     --  Death Strike OH
  [66216]  = 45462,     -- Plague Strike OH
  [66196]  = 49143,     --  Frost Strike OH
  [66217]  = 56815,     --   Rune Strike OH
  [66215]  = 45902,     --  Blood Strike OH
}
