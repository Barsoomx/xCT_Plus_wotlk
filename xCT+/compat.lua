if GetLocale() == "ruRU" then
    BATTLE_PET_CAGE_ITEM_NAME = "%s в клетке"
else
    BATTLE_PET_CAGE_ITEM_NAME = "Caged %s"
end

function GetSpecialization(isInspect, isPet, specGroup)
    local currentSpecGroup = GetActiveTalentGroup(isInspect, isPet) or (specGroup or 1)
    local maxPoints, specName, currentSpecId = 0, nil, nil

	for i = 1, MAX_TALENT_TABS do
		local name, _, pointsSpent = GetTalentTabInfo(i, isInspect, isPet, currentSpecGroup)
		if maxPoints <= pointsSpent then
			maxPoints = pointsSpent
			specName = name
            currentSpecId = i
		end
	end
    return currentSpecId, specName, maxPoints
end

RAID_CLASS_COLORS.HUNTER.colorStr = "ffabd473"
RAID_CLASS_COLORS.WARLOCK.colorStr = "ff8788ee"
RAID_CLASS_COLORS.PRIEST.colorStr = "ffffffff"
RAID_CLASS_COLORS.PALADIN.colorStr = "fff58cba"
RAID_CLASS_COLORS.MAGE.colorStr = "ff3fc7eb"
RAID_CLASS_COLORS.ROGUE.colorStr = "fffff569"
RAID_CLASS_COLORS.DRUID.colorStr = "ffff7d0a"
RAID_CLASS_COLORS.SHAMAN.colorStr = "ff0070de"
RAID_CLASS_COLORS.WARRIOR.colorStr = "ffc79c6e"
RAID_CLASS_COLORS.DEATHKNIGHT.colorStr = "ffc41f3b"

COMBAT_TEXT_RUNE[4] = COMBAT_TEXT_RUNE_DEATH